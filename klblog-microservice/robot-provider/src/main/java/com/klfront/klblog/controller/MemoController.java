package com.klfront.klblog.controller;

import com.klfront.klblog.entity.Memo;
import com.klfront.klblog.service.MemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 便签
 */
@RestController
@RequestMapping(value = "/memo")
public class MemoController {
    @Autowired
    MemoService service;
    /**
     * 获取分页数据
     * @param pageNo 从1开始
     * @param pageSize
     * @param keyword
     * @return
     */
    @GetMapping(value = "/listByPage")
    List<Memo> listByPage(Integer pageNo, Integer pageSize, String keyword){
        List<Memo> list = service.listByPage(pageNo,pageSize,keyword);
        return list;
    }

    @GetMapping(value = "/delete")
    Boolean delete(Integer id){
        int count  = service.deleteByPrimaryKey(id);
        return count>0;
    }

    @PostMapping(value="/add")
    Boolean add(Memo memo){
        int res =  service.insertSelective(memo);
        return res>0;
    }

    @PostMapping(value="/update")
    Boolean update(Memo memo){
        int res =  service.updateByPrimaryKeySelective(memo);
        return res>0;
    }
}
