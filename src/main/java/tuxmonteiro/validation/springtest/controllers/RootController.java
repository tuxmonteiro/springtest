/*
 * Copyright (c) 2017-2018 Globo.com
 * All rights reserved.
 *
 * This source is subject to the Apache License, Version 2.0.
 * Please see the LICENSE file for more information.
 *
 * Authors: See AUTHORS file
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package tuxmonteiro.validation.springtest.controllers;

import com.fasterxml.jackson.annotation.JsonUnwrapped;
import com.zaxxer.hikari.HikariDataSource;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.List;
import java.util.Queue;
import java.util.Random;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.ResourceSupport;
import org.springframework.hateoas.Resources;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import tuxmonteiro.validation.springtest.entity.Target;
import tuxmonteiro.validation.springtest.repository.TargetRepository;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

@RestController
@EnableAsync
public class RootController {

    // @formatter:off
    private static final String SQL =
        "select p.id, p.created_at, p.created_by, p.description, p.last_modified_at, p.last_modified_by,"
                + "p.quarantine, p.version, p.global, p.hc_body, p.hc_host, p.hc_http_method, p.hc_http_status_code,"
                + "p.hc_path, p.hc_tcp_only, p.name, p.pool_size, p.balancepolicy_id, p.environment_id, p.project_id, "
                + "p.farm_id, p.allow, t.id as t_id, t.created_by as t_created_by, t.created_at as t_created_at, t.name as t_name, t.pool_id, t.farm_id, t.version,"
                + "t.quarantine, t.last_modified_at as t_last_modified_at, t.description from target t inner join pool p on t.pool_id = p.id";
    // @formatter:on

    @Autowired
    HikariDataSource dataSource;

    Connection connection = null;
    Queue<Statement> statements = new ConcurrentLinkedQueue<>();

    @PostConstruct
    public void init() {
        try {
            connection = dataSource.getConnection();
            IntStream.rangeClosed(1, 10000).forEach(i -> {
                try {
                    statements.add(connection.createStatement());
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            });
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private Statement getStatement() {
        try {
            statements.add(connection.createStatement());
            return statements.remove();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        throw new RuntimeException("queue statements failed");
    }


    @Autowired
    TargetRepository targetRepository;

    private String s13k;

    {
        byte[] array = new byte[13 * 1024];
        new Random().nextBytes(array);
        s13k = new String(Base64.getEncoder().encode(array), Charset.defaultCharset()).substring(0, 13 * 1024);
    }

    @GetMapping("/bench/1")
    public ResponseEntity<String> g1b() {
        return ResponseEntity.ok("1");
    }

    @GetMapping("/bench/13k")
    public ResponseEntity<String> g13k() {
        return ResponseEntity.ok(s13k);
    }

    @Async
    @GetMapping("/run")
    public void run() {
        while (true) {
            targetRepository.findAll(new PageRequest(0, 9999));
        }
    }

    @GetMapping("/onlyh")
    public void onlyHibernate() {
        targetRepository.findAll(new PageRequest(0, 9999));
    }

    @Async
    @GetMapping("/one")
    public void one() {
        while (true) {
            targetRepository.one();
        }
    }

    @Async
    @GetMapping("/direct")
    public void simple() {
        try {
            PreparedStatement statement = connection.prepareStatement(SQL);
            while (true) {
                try {
                    statement.executeQuery();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @GetMapping("/onlydb")
    public ResponseEntity<Void> onlydb() {
        if (connection == null) {
            System.err.println("connection is null");
            return ResponseEntity.status(500).build();
        }
        try {
            Statement statement = connection.createStatement();
            try (ResultSet resultSet = statement.executeQuery(SQL)) {
                while (resultSet.next()) {
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ResponseEntity.ok().build();
    }

    @GetMapping("/onlydb2")
    public ResponseEntity<Void> onlydb2() {
        try {
            try (ResultSet resultSet = getStatement().executeQuery(SQL)) {
                while (resultSet.next()) {
                }
                resultSet.first();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ResponseEntity.ok().build();
    }

    @GetMapping("/targets")
    public List<Target> targets() {
        if (connection == null) {
            Target target = new Target();
            target.setName("connection is null");
            return Collections.singletonList(target);
        }
        List<Target> targets = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();

            try (ResultSet resultSet = statement.executeQuery(SQL)) {
                while (resultSet.next()) {
                    Target target = new Target();
                    target.setName(resultSet.getString("t_name"));
                    target.setId(resultSet.getInt("t_id"));
                    target.setCreatedAt(resultSet.getDate("t_created_at"));
                    target.setCreatedBy(resultSet.getString("t_created_by"));
                    targets.add(target);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return targets;
    }

    @GetMapping("/targets2")
    public List<Target> targets2() {
        return IntStream.rangeClosed(1, 50).boxed().map(i -> {
            Target target = new Target();
            target.setName("t_name_" + i);
            target.setId(i);
            target.setCreatedAt(Date.from(Instant.now()));
            target.setCreatedBy("t_created_by_" + i);
            return target;
        }).collect(Collectors.toList());
    }

    @GetMapping("/targets3")
    public List<Target> targets3() {
        return targetRepository.findAll(new PageRequest(0, 12)).getContent();
    }

    @GetMapping("/targets3/{id}")
    public Target targets3Id(@PathVariable final long id) {
        return targetRepository.findOne(id);
    }

    @GetMapping("/targets4")
    public ResponseEntity<Resources<TargetResource>> targers4() {
        final List<TargetResource> collection = targetRepository.findAll().stream().map(TargetResource::new).collect(Collectors.toList());
        final Resources<TargetResource> resources = new Resources<>(collection);
        final String uriString = ServletUriComponentsBuilder.fromCurrentRequest().build().toUriString();
        resources.add(new Link(uriString + "{?page,size,sort}", "self"));
        return ResponseEntity.ok(resources);
    }

    @GetMapping("/targets4/{id}")
    public ResponseEntity<TargetResource> targers4One(@PathVariable final long id) {
        Target target = targetRepository.findOne(id);
        if (target != null) {
            return ResponseEntity.ok(new TargetResource(target));
        }
        throw new RuntimeException("id : "+ id + "not found");
    }

    @GetMapping("/targets4/{id}/pool")
    public ResponseEntity<TargetResource> targers4Pool(@PathVariable final long id) {
        Target target = targetRepository.findOne(id);
        if (target != null) {
            return ResponseEntity.ok(new TargetResource(target));
        }
        throw new RuntimeException("id : "+ id + "not found");
    }

    @GetMapping("/targets4/{id}/healthStatus")
    public ResponseEntity<TargetResource> targers4HealthStatus(@PathVariable final long id) {
        Target target = targetRepository.findOne(id);
        if (target != null) {
            return ResponseEntity.ok(new TargetResource(target));
        }
        throw new RuntimeException("id : "+ id + "not found");
    }

    public static class TargetResource extends ResourceSupport {

        @JsonUnwrapped
        private final Target target;

        public TargetResource(Target target) {
            this.target = target;
            final long id = target.getId();
            add(linkTo(methodOn(RootController.class).targers4One(id)).withSelfRel());
            add(linkTo(methodOn(RootController.class).targers4One(id)).withRel("target"));
            add(linkTo(methodOn(RootController.class).targers4HealthStatus(id)).withRel("healthStatus"));
            add(linkTo(methodOn(RootController.class).targers4Pool(id)).withRel("pool"));
        }

        public Target getTarget() {
            return target;
        }
    }
}
