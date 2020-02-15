package com.klfront.klblog;

import com.spring4all.swagger.EnableSwagger2Doc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient //服务发现
@EnableSwagger2Doc
public class BlogProviderApplication {
	public static void main(String[] args) {
		SpringApplication.run(BlogProviderApplication.class, args);
	}
}
