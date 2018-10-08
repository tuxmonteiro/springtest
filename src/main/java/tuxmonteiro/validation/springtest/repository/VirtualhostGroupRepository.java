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

package tuxmonteiro.validation.springtest.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tuxmonteiro.validation.springtest.entity.VirtualHost;
import tuxmonteiro.validation.springtest.entity.VirtualhostGroup;

import java.util.Collection;

@SuppressWarnings({"unused", "unchecked"})
@RepositoryRestResource(path = "virtualhostgroup", collectionResourceRel = "virtualhostgroup", itemResourceRel = "virtualhostgroup")
public interface VirtualhostGroupRepository extends JpaRepository<VirtualhostGroup, Long> {

    @Override
    @RestResource(exported = false)
    VirtualhostGroup save(@Param("virtualhostgroup") VirtualhostGroup virtualhostgroup);

    @Override
    void delete(@Param("id") Long id);

    @Override
    @Transactional(readOnly = true, propagation = Propagation.SUPPORTS)
    VirtualhostGroup findOne(@Param("id") Long id);

    VirtualhostGroup findByVirtualhostsIn(@Param("virtualhosts") Collection<VirtualHost> virtualhosts);

    VirtualhostGroup findByVirtualhosts_Id(@Param("vid") Long vid);

    VirtualhostGroup findByVirtualhosts_Name(@Param("name") String name);

    @Override
    @Transactional(readOnly = true, propagation = Propagation.SUPPORTS)
    Page<VirtualhostGroup> findAll(Pageable pageable);

    Page<VirtualhostGroup> findByVirtualhosts_NameContaining(@Param("name") String name, Pageable pageable);
}
