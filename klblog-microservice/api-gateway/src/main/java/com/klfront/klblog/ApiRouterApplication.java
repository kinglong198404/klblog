package com.klfront.klblog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ApiRouterApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApiRouterApplication.class, args);
    }
}
