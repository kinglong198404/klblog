package com.klfront.klblog.service;

import com.klfront.klblog.entity.Knowledge;

import java.util.List;

public interface KnowledgeService {
    /**
     * 获取分页数据
     *
     * @param pageNo   从1开始
     * @param pageSize
     * @param keyword
     * @return
     */
    List<Knowledge> listByPage(Integer pageNo, Integer pageSize, String keyword);

    int deleteByPrimaryKey(Long id);

    int insert(Knowledge record);

    int insertSelective(Knowledge record);

    Knowledge selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Knowledge record);

    int updateByPrimaryKey(Knowledge record);

}


