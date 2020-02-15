package com.klfront.klblog.service.impl;

import com.klfront.klblog.dao.BookReviewMapper;
import com.klfront.klblog.entity.BookReview;
import com.klfront.klblog.service.BookReviewService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

@Service
public class BookReviewServiceImpl implements BookReviewService {

    @Resource
    private BookReviewMapper bookReviewMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return bookReviewMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(BookReview record) {
        return bookReviewMapper.insert(record);
    }

    @Override
    public int insertSelective(BookReview record) {
        return bookReviewMapper.insertSelective(record);
    }

    @Override
    public BookReview selectByPrimaryKey(Long id) {
        return bookReviewMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(BookReview record) {
        return bookReviewMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(BookReview record) {
        return bookReviewMapper.updateByPrimaryKey(record);
    }

}

