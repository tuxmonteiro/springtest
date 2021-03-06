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

import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.springframework.util.Assert;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@SuppressWarnings("JpaQlInspection")
@NamedQueries({
        @NamedQuery(
                name = "BalancePolicyDefault",
                query = "SELECT DISTINCT entity From BalancePolicy entity")
})

@Entity
@Table(name = "balancepolicy", uniqueConstraints = { @UniqueConstraint(name = "UK_balancepolicy_name", columnNames = { "name" }) })
public class BalancePolicy extends AbstractEntity {

    @JsonManagedReference
    @OneToMany(mappedBy = "balancepolicy")
    private Set<Pool> pools = new HashSet<>();

    @Column(nullable = false)
    private String name;

    public Set<Pool> getPools() {
        return pools;
    }

    public void setPools(Set<Pool> pools) {
        if (pools != null) {
            this.pools.clear();
            this.pools.addAll(pools);
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
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BalancePolicy that = (BalancePolicy) o;
        return Objects.equals(getName(), that.getName());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getName());
    }
}
