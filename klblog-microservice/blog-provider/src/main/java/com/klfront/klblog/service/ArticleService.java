package com.klfront.klblog.service;

import com.klfront.klblog.entity.Article;

import java.util.List;

public interface ArticleService {
    /**
     * 获取分页数据
     *
     * @param pageNo   从1开始
     * @param pageSize
     * @param keyword
     * @return
     */
    List<Article> listByPage(Integer pageNo, Integer pageSize, String keyword);

    int deleteByPrimaryKey(Long id);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKey(Article record);

}


