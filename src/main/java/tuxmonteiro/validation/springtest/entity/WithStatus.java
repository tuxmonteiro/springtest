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

import java.util.Map;

public interface WithStatus {

    @SuppressWarnings("unused")
    enum Status {
        PENDING,
        OK,
        UNKNOWN,
        DELETED
    }

    Map<Long, Status> getStatus();
    void setStatus(Map<Long, Status> status);

}
