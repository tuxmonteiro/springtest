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

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.nio.charset.Charset;
import java.util.Base64;
import java.util.Random;

@RestController
public class RootController {

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
}
