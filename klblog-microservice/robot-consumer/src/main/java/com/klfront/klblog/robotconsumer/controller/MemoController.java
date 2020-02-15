package com.klfront.klblog.robotconsumer.controller;

import com.klfront.klblog.entity.Memo;
import com.klfront.klblog.robotconsumer.feignclient.FeignClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/memo")
public class MemoController {
    @Autowired
    private FeignClientService service;
    @GetMapping(value = "/listByPage")
    List<Memo> listByPage(Integer pageNo, Integer pageSize, String keyword) throws Exception{
        if(pageNo<0) {
            throw new Exception("页码 pageNo 不能小于0");
        }
        if(pageNo<0) {
            throw new Exception("单页条数 pageSize 不能小于0");
        }
        return service.listByPage(pageNo,pageSize,keyword);
    }

    @PostMapping(value="/add")
    Boolean add(Memo memo) throws Exception{
        if(memo==null){
            throw new Exception("对象 Memo 不能为null");
        }
        return service.add(memo);
    }

    @PostMapping(value="/update")
    Boolean save(Memo memo) throws Exception{
        if(memo==null){
            throw new Exception("对象 Memo 不能为null");
        }
        if(memo.getId()<0){
            throw new Exception("对象 Memo 的id不合法");
        }
        return  service.update(memo);
    }

//    @GetMapping(value = "/delete")
//    Boolean delete(Long id) {
////        int count = service.deleteByPrimaryKey(id);
//        return count > 0;
//    }
}
