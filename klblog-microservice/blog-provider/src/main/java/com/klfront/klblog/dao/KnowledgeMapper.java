package com.klfront.klblog.dao;

import com.klfront.klblog.entity.Knowledge;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface KnowledgeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Knowledge record);

    int insertSelective(Knowledge record);

    Knowledge selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Knowledge record);

    int updateByPrimaryKey(Knowledge record);

    List<Knowledge> listByRange(Integer currIndex, Integer pageSize, String keyword);
}