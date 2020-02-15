package com.klfront.klblog.controller;

import java.io.IOException;
import java.util.List;

import com.klfront.klblog.entity.Category;
import com.klfront.klblog.service.CategoryService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * Title: CategoryController.java
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
 * @date 2019-07-10
 * @version 1.0
 */
@RestController
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	CategoryService service;

	// 服务发现,了解
	@Autowired
	DiscoveryClient client;

	@GetMapping(value = "/discovery")
	public Object discovery() {
		List<String> list = client.getServices();
		List<ServiceInstance> serviceList = client.getInstances("KLBLOG-PROVIDER");
		for (ServiceInstance instance : serviceList) {
			System.out.println(instance.getServiceId() + "\t" + instance.getHost() + "\t" + instance.getPort() + "\t"
					+ instance.getUri());
		}
		return this.client;
	}

	@GetMapping("/rootlist")
	public List<Category> getRootList() {
		List<Category> list = service.getRootList();
		return list;

	}

	@ApiOperation(value = "获取类别列表",notes = "根据父级id获取类别列表")
	@ApiImplicitParam(name = "parentId", value = "父级id", required = true, dataType = "String")
	@GetMapping("/sublist/{parentId}")
	public List<Category> getSubList(@PathVariable("parentId") String parentId) {
		try {
			List<Category> list = service.findByParentId(parentId);
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			throw ex;
		}
	}

	/**
	 * 类别列表
	 *
	 * @author Lu Jinlong
	 *
	 * @param parentId
	 * @return
	 */
	@GetMapping("/list")
	public List<Category> list(@RequestParam(value = "parentId", required = false) String parentId) {
		if (parentId == null) {
			parentId = "0";
		}
		List<Category> list = service.findByParentId(parentId);
		return list;
	}

	@GetMapping("/get/{id}")
	public Category getById(@PathVariable("id") String id) throws Exception {
		Category category = service.selectByPrimaryKey(id);
		if(null==category) {
			throw new Exception("没有结果");
		}
		return category;
	}

	@PostMapping(value = "/save")
	public boolean save(Category category, @RequestParam(value = "isAdd", required = true) Boolean isAdd)
			throws IOException {
		if (category.getId().startsWith(category.getPid())
				&& category.getId().length() == category.getPid().length() + 1) {
			if (isAdd) {
				service.insert(category);
			} else {
				service.updateByPrimaryKey(category);
			}
			return true;
		} else {
			return false;
		}
	}

	@GetMapping("/delete/{id}")
	public Boolean delete(@PathVariable("id") String id) {
		Integer res = service.deleteByPrimaryKey(id);
		return res>0;
	}
}
