/*
 * (C) Copyright 2014 Kurento (http://kurento.org/)
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the GNU Lesser General Public License
 * (LGPL) version 2.1 which accompanies this distribution, and is available at
 * http://www.gnu.org/licenses/lgpl-2.1.html
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 */

package org.kurento.tutorial.helloworld;

import org.kurento.client.KurentoClient;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

/**
 * Hello World (WebRTC in loobpack) main class.
 *
 * @author Boni Garcia (bgarcia@gsyc.es)
 * @since 5.0.0
 */
@SpringBootApplication
@EnableWebSocket
public class HelloWorldApp implements WebSocketConfigurer {


  final static String DEFAULT_KMS_WS_URI = "ws://localhost:8888/kurento";

  @Bean
  public CallHandler callHandler() {
    return new CallHandler();
  }

  @Bean
  public UserRegistry registry() {
    return new UserRegistry();
  }

  @Bean
  public KurentoClient kurentoClient() {
    return KurentoClient.create(System.getProperty("kms.url",
            DEFAULT_KMS_WS_URI));
  }

  public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
    registry.addHandler(callHandler(), "/call");
  }

  public static void main(String[] args) throws Exception {
    new SpringApplication(HelloWorldApp.class).run(args);
  }
}
