package com.klfront.klblog.service;

import com.klfront.klblog.entity.Memo;

import java.util.List;

public interface MemoService{
    /**
     * 获取分页数据
     * @param pageNo 从1开始
     * @param pageSize
     * @param keyword
     * @return
     */
    List<Memo> listByPage(Integer pageNo,Integer pageSize,String keyword);


    int deleteByPrimaryKey(Integer id);

    int insert(Memo record);

    int insertSelective(Memo record);

    Memo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Memo record);

    int updateByPrimaryKey(Memo record);

}
