package com.klfront.klblog.service;

import com.klfront.klblog.entity.BookReview;

public interface BookReviewService {


    int deleteByPrimaryKey(Long id);

    int insert(BookReview record);

    int insertSelective(BookReview record);

    BookReview selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BookReview record);

    int updateByPrimaryKey(BookReview record);

}

