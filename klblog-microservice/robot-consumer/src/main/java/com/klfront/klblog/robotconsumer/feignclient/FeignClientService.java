package com.klfront.klblog.robotconsumer.feignclient;

import com.klfront.klblog.entity.Memo;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;
import com.klfront.klblog.entity.User;

import java.util.List;

/**
 * <p>Title: RobotFeignClientService.java</p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2019</p>
 * <p>Company: www.klfront.com</p>
 *
 * @author Lu Jinlong
 * @date 2019-07-25
 * @version 1.0
 */

@FeignClient(value = "ROBOT-PROVIDER", fallbackFactory = FeignClientServiceFallbackFactory.class)
@Service
public interface FeignClientService {

    @RequestMapping(value = "/user/login")
    User login(@RequestParam("username") String username,
               @RequestParam("password") String password);

    @RequestMapping(value = "/memo/listByPage")
    List<Memo> listByPage(@RequestParam("pageNo") Integer pageNo,
                          @RequestParam("pageSize") Integer pageSize,
                          @RequestParam("keyword") String keyword);

    @PostMapping(value="/memo/add")
    Boolean add(@RequestParam("memo") Memo memo);

    @PostMapping(value="/memo/update")
    Boolean update(@RequestParam("memo") Memo memo);

    @GetMapping("/memo/delete/{id}")
    public Boolean getById(@PathVariable("id") String id);
}
