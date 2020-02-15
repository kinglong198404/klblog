package com.klfront.klblog.service;

import com.klfront.klblog.entity.BookNote;

import java.util.List;

public interface BookNoteService {
    /**
     * 获取分页数据
     * @param pageNo 从1开始
     * @param pageSize
     * @param keyword
     * @return
     */
    List<BookNote> listByPage(Integer pageNo, Integer pageSize, String keyword);

    int deleteByPrimaryKey(Long id);

    int insert(BookNote record);

    int insertSelective(BookNote record);

    BookNote selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BookNote record);

    int updateByPrimaryKey(BookNote record);

}

