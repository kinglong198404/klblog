package com.klfront.klblog.config;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

/**
 * 应用配置类
 *
 * @author:lujinlong
 * @created:2019-11-08 12:07
 **/
@Configuration
public class ApplicationConfig {
    // 这里定义了，才能使用@Autowired注入
    @Bean
    public RestTemplate getRestTemplate()
    {
        return new RestTemplate();
    }

//    @Bean
//    public RestTemplate restTemplate(RestTemplateBuilder builder) {
//        return builder.build();
//    }

}
