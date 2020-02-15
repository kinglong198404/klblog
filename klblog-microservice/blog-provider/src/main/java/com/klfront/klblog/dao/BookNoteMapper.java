package com.klfront.klblog.dao;

import com.klfront.klblog.entity.BookNote;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface BookNoteMapper {
    List<BookNote> listByRange(Integer currIndex, Integer pageSize, String keyword);

    int deleteByPrimaryKey(Long id);

    int insert(BookNote record);

    int insertSelective(BookNote record);

    BookNote selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BookNote record);

    int updateByPrimaryKey(BookNote record);
}