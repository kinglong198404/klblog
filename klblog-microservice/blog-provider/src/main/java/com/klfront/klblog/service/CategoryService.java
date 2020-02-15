package com.klfront.klblog.service;

import java.util.List;

import com.klfront.klblog.entity.Category;

/**
 * <p>
 * Title: CategoryService.java
 * </p>
 * <p>
 * Description:
 * </p>
 * <p>
 * Copyright: Copyright (c) 2019
 * </p>
 * <p>
 * Company: www.klfront.com
 * </p>
 *
 * @author Lu Jinlong
 * @version 1.0
 * <p>
 * Modification History:
 * Date			Author		Version		Description
 * ------------------------------------------------
 * 2019-07-06	Lu Jinlong	1.0			1.0 Version
 * @date 2019-07-08
 */

public interface CategoryService {

    List<Category> findByParentId(String pid);

    List<Category> findAll();

    List<Category> getRootList();

    int deleteByPrimaryKey(String id);

    int insert(Category record);

    int insertSelective(Category record);

    Category selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);
}




