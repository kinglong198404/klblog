package com.klfront.klblog.dao;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.klfront.klblog.entity.User;
@Mapper
@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User getByUsername(String username);
}