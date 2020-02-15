package com.klfront.klblog.service.impl;

import com.klfront.klblog.dao.ArticleMapper;
import com.klfront.klblog.entity.Article;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

import com.klfront.klblog.service.ArticleService;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Resource
    private ArticleMapper articleMapper;

    @Override
    public List<Article> listByPage(Integer pageNo, Integer pageSize, String keyword) {
        return articleMapper.listByRange((pageNo - 1) * pageSize, pageSize, keyword);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return articleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Article record) {
        return articleMapper.insert(record);
    }

    @Override
    public int insertSelective(Article record) {
        return articleMapper.insertSelective(record);
    }

    @Override
    public Article selectByPrimaryKey(Long id) {
        return articleMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Article record) {
        return articleMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Article record) {
        return articleMapper.updateByPrimaryKey(record);
    }

}


