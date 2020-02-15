package com.klfront.klblog.service.impl;

import com.klfront.klblog.entity.Memo;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

import com.klfront.klblog.dao.MemoMapper;
import com.klfront.klblog.service.MemoService;

import java.util.List;

@Service
public class MemoServiceImpl implements MemoService{

    @Resource
    private MemoMapper memoMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return memoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Memo record) {
        return memoMapper.insert(record);
    }

    @Override
    public int insertSelective(Memo record) {
        return memoMapper.insertSelective(record);
    }

    @Override
    public List<Memo> listByPage(Integer pageNo, Integer pageSize, String keyword){return memoMapper.listByRange((pageNo-1)*pageSize,pageSize,keyword);};

    @Override
    public Memo selectByPrimaryKey(Integer id) {
        return memoMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Memo record) {
        return memoMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Memo record) {
        return memoMapper.updateByPrimaryKey(record);
    }

}
