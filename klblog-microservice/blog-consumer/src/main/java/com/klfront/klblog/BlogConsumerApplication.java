package com.klfront.klblog;

import com.spring4all.swagger.EnableSwagger2Doc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;


@SpringBootApplication
//@EnableEurekaClient
@EnableDiscoveryClient
@EnableFeignClients(basePackages= {"com.klfront.klblog"})
@EnableSwagger2Doc
public class BlogConsumerApplication
{
	public static void main(String[] args)
	{
		SpringApplication.run(BlogConsumerApplication.class, args);
	}

}
