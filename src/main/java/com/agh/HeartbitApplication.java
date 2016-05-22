package com.agh;

import com.agh.kurento.CallHandler;
import com.agh.kurento.UserRegistry;
import org.kurento.client.KurentoClient;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;


@SpringBootApplication
@EnableWebSocket
public class HeartbitApplication implements WebSocketConfigurer {

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
    return KurentoClient.create("ws://localhost:8888/kurento");
  }

  public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
    registry.addHandler(callHandler(), "/call");
  }

//  public static void main(String[] args) throws Exception {
//    new SpringApplication(HeartbitApplication.class).run(args);
//  }

  public static void main(String[] args) {
    SpringApplication.run(HeartbitApplication.class, args);
  }

}
