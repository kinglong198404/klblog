package com.klfront.klblog.controller;

import java.util.List;

import com.klfront.klblog.feignclient.FeignClientService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klfront.klblog.entity.Category;

/**
 * <p>
 * Title: CategoryController.java
 * </p>
 * <p>
 * Description:通过FeignClientService方位服务提供者的接口
 * </p>
 * <p>
 * Copyright: Copyright (c) 2019
 * </p>
 * <p>
 * Company: www.klfront.com
 * </p>
 *
 * @author Lu Jinlong
 * @date 2019-07-10
 * @version 1.0
 */
@RestController
@RequestMapping("/category")
public class CategoryConsumerController {
	@Autowired
	private FeignClientService service;
	
	@GetMapping(value = "/discovery")
	public Object discovery() {
		return this.service.discovery();
	}

	@GetMapping("/rootlist")
	public List<Category> getRootList() {
		return this.service.getRootList();
	}

	@ApiOperation(value = "获取类别列表",notes = "根据父级id获取类别列表")
	@ApiImplicitParam(name = "parentId", value = "父级id", required = true, dataType = "String")
	@GetMapping("/sublist/{parentId}")
	public List<Category> getSubList(@PathVariable("parentId") String parentId){
		return this.service.getSubList(parentId);
	}
	
	@GetMapping("/get/{id}")
	public Category getById(@PathVariable("id") String id) {
		return this.service.getById(id);
	}

}
