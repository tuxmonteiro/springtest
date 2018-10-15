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

package tuxmonteiro.validation.springtest.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.springframework.util.Assert;
import tuxmonteiro.validation.springtest.exceptions.BadRequestException;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

@SuppressWarnings("JpaQlInspection")
@NamedQueries({
        @NamedQuery(
                name = "VirtualHostDefault",
                query = "SELECT DISTINCT entity From VirtualHost entity INNER JOIN entity.project.teams t INNER JOIN t.accounts a WHERE a.username = :username")
})
@Entity
@Table(name = "virtualhost", uniqueConstraints = { @UniqueConstraint(name = "UK_virtualhost_name", columnNames = { "name" }) })
public class VirtualHost extends AbstractEntity implements WithStatus {

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name = "project_id", nullable = false, foreignKey = @ForeignKey(name="FK_virtualhost_project"))
    private Project project;

    @JsonBackReference
    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "virtualhostgroup_id", nullable = false, foreignKey = @ForeignKey(name="FK_virtualhost_virtualhostgroup"))
    private VirtualhostGroup virtualhostgroup;

    @JsonBackReference
    @ManyToMany
    @JoinTable(joinColumns = @JoinColumn(name = "virtualhost_id", nullable = false, foreignKey = @ForeignKey(name = "FK_environment_virtualhost_id")),
               inverseJoinColumns = @JoinColumn(name = "environment_id", foreignKey = @ForeignKey(name = "FK_virtualhost_environment_id")))
    private Set<Environment> environments = new HashSet<>();

    @Column(nullable = false)
    private String name;

    @Transient
    private Map<Long, Status> status = new HashMap<>();

    public Set<Environment> getEnvironments() {
        return environments;
    }

    public void setEnvironments(Set<Environment> environments) {
        if (environments == null || environments.isEmpty()) {
            throw new BadRequestException("Environment(s) undefined");
        }
        this.environments.clear();
        this.environments.addAll(environments);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        Assert.hasText(name, "name is not valid");
        this.name = name;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public VirtualhostGroup getVirtualhostgroup() {
        return virtualhostgroup;
    }

    public void setVirtualhostgroup(VirtualhostGroup virtualhostgroup) {
        this.virtualhostgroup = virtualhostgroup;
    }

    @Override
    public Map<Long, Status> getStatus() {
        return status;
    }

    @Override
    public void setStatus(Map<Long, Status> status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        VirtualHost that = (VirtualHost) o;
        return Objects.equals(getName(), that.getName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getName());
    }
}