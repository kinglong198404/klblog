package com.klfront.klblog.service.impl;

import com.klfront.klblog.dao.CategoryMapper;
import com.klfront.klblog.entity.Category;
import com.klfront.klblog.service.CategoryService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoryServiceImpl implements CategoryService {


    @Resource
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> findByParentId(String parentId) {
        return categoryMapper.findByParentId(parentId);
    }

    @Override
    public List<Category> findAll() {
        List<Category> root = categoryMapper.getRootList();
        List<Category> list = categoryMapper.findAll();
        root.forEach(cat -> {
            List<Category> sublist = list.stream().filter(item -> {
                return item.getPid().equals(cat.getId());
            }).collect(Collectors.toList());
            cat.setSublist(sublist);
        });

        return root;
    }

    @Override
    public List<Category> getRootList() {
        List<Category> list = null;
        try {
            list = categoryMapper.getRootList();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }


    @Override
    public int deleteByPrimaryKey(String id) {
        return categoryMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Category record) {
        return categoryMapper.insert(record);
    }

    @Override
    public int insertSelective(Category record) {
        return categoryMapper.insertSelective(record);
    }

    @Override
    public Category selectByPrimaryKey(String id) {
        return categoryMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Category record) {
        return categoryMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Category record) {
        return categoryMapper.updateByPrimaryKey(record);
    }

}
