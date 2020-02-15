package com.klfront.klblog.service.impl;

import com.klfront.klblog.dao.BookNoteMapper;
import com.klfront.klblog.service.BookNoteService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

import com.klfront.klblog.entity.BookNote;

import java.util.List;

@Service
public class BookNoteServiceImpl implements BookNoteService {

    @Resource
    private BookNoteMapper bookNoteMapper;
    @Override
    public List<BookNote> listByPage(Integer pageNo, Integer pageSize, String keyword){return bookNoteMapper.listByRange((pageNo-1)*pageSize,pageSize,keyword);}

    @Override
    public int deleteByPrimaryKey(Long id) {
        return bookNoteMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(BookNote record) {
        return bookNoteMapper.insert(record);
    }

    @Override
    public int insertSelective(BookNote record) {
        return bookNoteMapper.insertSelective(record);
    }

    @Override
    public BookNote selectByPrimaryKey(Long id) {
        return bookNoteMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(BookNote record) {
        return bookNoteMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(BookNote record) {
        return bookNoteMapper.updateByPrimaryKey(record);
    }

}

