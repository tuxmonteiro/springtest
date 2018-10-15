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

package tuxmonteiro.validation.springtest.configuration;

import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.datatype.hibernate5.Hibernate5Module;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.boot.jackson.JsonComponentModule;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.geo.GeoModule;

@Configuration
public class JacksonConfiguration {

    @Bean
    public Jackson2ObjectMapperBuilderCustomizer jackson2ObjectMapperBuilderCustomizer() {
        return builder -> {
            builder.indentOutput(false);
            builder.featuresToEnable(MapperFeature.IGNORE_DUPLICATE_MODULE_REGISTRATIONS);
            builder.modulesToInstall(
                    new JsonComponentModule(),
                    new GeoModule()
//                    ,
//                    new Hibernate5Module()
//                    .configure(Hibernate5Module.Feature.FORCE_LAZY_LOADING, true)
//                    .configure(Hibernate5Module.Feature.REPLACE_PERSISTENT_COLLECTIONS, true)
            );
        };
    }

}
