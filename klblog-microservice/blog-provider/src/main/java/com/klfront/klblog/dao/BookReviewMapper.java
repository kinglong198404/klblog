package com.klfront.klblog.dao;

import com.klfront.klblog.entity.BookReview;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface BookReviewMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BookReview record);

    int insertSelective(BookReview record);

    BookReview selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BookReview record);

    int updateByPrimaryKey(BookReview record);
}