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

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.util.Assert;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
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
                name = "TargetDefault",
                query = "SELECT DISTINCT entity From Target entity WHERE entity.id IN " +
                    "(SELECT entity.id FROM Target entity INNER JOIN entity.pool pool INNER JOIN pool.rules r INNER JOIN r.project p INNER JOIN p.teams t INNER JOIN t.accounts a " +
                        "WHERE a.username = :username AND r.global = false) " +
                "OR entity.id IN " +
                    "(SELECT entity.id FROM Target entity INNER JOIN entity.pool pool WHERE pool.global = true) " +
                "OR entity.id IN " +
                    "(SELECT entity.id FROM Target entity INNER JOIN entity.pool pool INNER JOIN pool.rules r WHERE r.global = true)")
})
@Entity
@Table(uniqueConstraints = { @UniqueConstraint(name = "UK_target_name_pool_id", columnNames = { "name", "pool_id" }) })
public class Target extends AbstractEntity implements WithStatus {

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "pool_id", nullable = false, foreignKey = @ForeignKey(name="FK_target_pool"))
    private Pool pool;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "target", cascade = CascadeType.REMOVE)
    private Set<HealthStatus> healthStatus = new HashSet<>();

    @Column(nullable = false)
    private String name;

    @Transient
    private Map<Long, Status> status = new HashMap<>();

    public Pool getPool() {
        return pool;
    }

    public void setPool(Pool pool) {
        this.pool = pool;
    }

    @JsonIgnore
    public HealthStatus.Status healthStatusConsolidated() {
        return this.healthStatus.stream().anyMatch(h -> h.getStatus().equals(HealthStatus.Status.HEALTHY)) ?
               HealthStatus.Status.HEALTHY :
               this.healthStatus.stream().map(HealthStatus::getStatus).findAny().orElse(HealthStatus.Status.UNKNOWN);
    }

    public Set<HealthStatus> getHealthStatus() {
        return healthStatus;
    }

    public void setHealthStatus(Set<HealthStatus> healthStatus) {
        if (healthStatus != null) {
            this.healthStatus.clear();
            this.healthStatus.addAll(healthStatus);
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        Assert.hasText(name, "name is not valid");
        this.name = name;
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
        Target target = (Target) o;
        return Objects.equals(getName(), target.getName()) || Objects.equals(getId(), target.getId());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getName());
    }
}
