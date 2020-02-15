package com.klfront.klblog.dao;
import com.klfront.klblog.entity.Memo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface MemoMapper {

    List<Memo> listByRange(Integer currIndex, Integer pageSize, String keyword);

    int deleteByPrimaryKey(Integer id);

    int insert(Memo record);

    int insertSelective(Memo record);

    Memo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Memo record);

    int updateByPrimaryKey(Memo record);
}