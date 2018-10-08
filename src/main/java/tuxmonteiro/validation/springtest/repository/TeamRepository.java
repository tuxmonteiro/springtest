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
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tuxmonteiro.validation.springtest.entity.Team;


@SuppressWarnings({"unused", "unchecked"})
@RepositoryRestResource(path = "team", collectionResourceRel = "team", itemResourceRel = "team")
public interface TeamRepository extends JpaRepository<Team, Long> {

    @Override
    Team save(@Param("team") Team team);

    @Override
    void delete(@Param("id") Long id);

    @Override
    @Transactional(readOnly = true, propagation = Propagation.SUPPORTS)
    Team findOne(@Param("id") Long id);

    @Override
    @Transactional(readOnly = true, propagation = Propagation.SUPPORTS)
    Page<Team> findAll(Pageable pageable);

    Page<Team> findByName(@Param("name") String name, Pageable pageable);

    Page<Team> findByNameContaining(@Param("name") String name, Pageable pageable);

    Page<Team> findFirst10ByNameContaining(@Param("name") String name, Pageable pageable);

}

