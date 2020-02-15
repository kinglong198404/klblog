package com.klfront.klblog.controller;

import com.klfront.klblog.entity.BookNote;
import com.klfront.klblog.entity.Memo;
import com.klfront.klblog.service.BookNoteService;
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
@RequestMapping(value = "/booknote")
public class BookNoteController {
    @Autowired
    BookNoteService service;

    /**
     * 获取分页数据
     *
     * @param pageNo   从1开始
     * @param pageSize
     * @param keyword
     * @return
     */
    @GetMapping(value = "/listByPage")
    List<BookNote> listByPage(Integer pageNo, Integer pageSize, String keyword) {
        List<BookNote> list = service.listByPage(pageNo, pageSize, keyword);
        return list;
    }

    @GetMapping(value = "/delete")
    Boolean delete(Long id) {
        int count = service.deleteByPrimaryKey(id);
        return count > 0;
    }

    @PostMapping(value = "/add")
    Boolean add(BookNote note) {
        int res = service.insertSelective(note);
        return res > 0;
    }

    @PostMapping(value = "/update")
    Boolean update(BookNote note) {
        int res = service.updateByPrimaryKeySelective(note);
        return res > 0;
    }
}
