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

package tuxmonteiro.validation.springtest;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

//    private static final boolean EVO_PRESENT =
//            ClassUtils.isPresent("org.atteo.evo.inflector.English", null);

    public static void main(String... args) {
        SpringApplication.run(Application.class, args);
    }

//    @Bean
//    RelProvider defaultRelProvider() {
//        return EVO_PRESENT ? new EvoInflectorRelProvider() : new DefaultRelProvider();
//    }

}
