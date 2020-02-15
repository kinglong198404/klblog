package com.klfront.klblog.controller;

import com.klfront.klblog.entity.Article;
import com.klfront.klblog.service.ArticleService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertTrue;


@RunWith(SpringRunner.class)
@SpringBootTest  //提供spring依赖注入
@ActiveProfiles("dev")
@Transactional  //事务管理，默认回滚,如果配置了多数据源记得指定事务管理器
class ArticleControllerTest {
    @LocalServerPort
    private int port;
    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    private ArticleService service;
    @Test
    public void listByPage() {
        //Type type = new TypeToken<List<Article>>(){}.getType();
        String url = "http://localhost:"+port+"/article/listByPage";
        List<Article> list = this.restTemplate.getForObject(url,new ArrayList<Article>().getClass());
//        List<Article> list = service.listByPage(1, 10, "");
        if(list!=null&& list.size()>0) {
            list.forEach(a -> {
                System.out.println();
            });
        }
        assertTrue(list!=null&& list.size()>0);

    }

}