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

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class DatabaseConfiguration {

    @Bean
    @Primary
    public DataSourceProperties dataSourceProperties() {
        return new DataSourceProperties();
    }

    @Bean
    public HikariDataSource dataSource(DataSourceProperties properties) {
        HikariDataSource hikariDataSource = (HikariDataSource) properties.initializeDataSourceBuilder().type(HikariDataSource.class).build();
        hikariDataSource.setConnectionTimeout(0);
        hikariDataSource.setMaximumPoolSize(512);
        hikariDataSource.setAutoCommit(false);
        hikariDataSource.setConnectionTestQuery("SELECT 1");
        hikariDataSource.addDataSourceProperty("cachePrepStmts", Boolean.TRUE);
        hikariDataSource.addDataSourceProperty("prepStmtCacheSize", 1024);
        hikariDataSource.addDataSourceProperty("prepStmtCacheSqlLimit", 1024);
        hikariDataSource.addDataSourceProperty("useServerPrepStmts", Boolean.TRUE);

        return hikariDataSource;
    }

}
