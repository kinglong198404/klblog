package com.klfront.klblog.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.klfront.klblog.dao.KnowledgeMapper;
import com.klfront.klblog.entity.Knowledge;
import com.klfront.klblog.service.KnowledgeService;

import java.util.List;

@Service
public class KnowledgeServiceImpl implements KnowledgeService {

    @Resource
    private KnowledgeMapper knowledgeMapper;

    @Override
    public List<Knowledge> listByPage(Integer pageNo, Integer pageSize, String keyword) {
        return knowledgeMapper.listByRange((pageNo - 1) * pageSize, pageSize, keyword);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return knowledgeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Knowledge record) {
        return knowledgeMapper.insert(record);
    }

    @Override
    public int insertSelective(Knowledge record) {
        return knowledgeMapper.insertSelective(record);
    }

    @Override
    public Knowledge selectByPrimaryKey(Long id) {
        return knowledgeMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Knowledge record) {
        return knowledgeMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Knowledge record) {
        return knowledgeMapper.updateByPrimaryKey(record);
    }

}


