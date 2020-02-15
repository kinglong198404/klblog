package com.klfront.klblog.controller;

import com.klfront.klblog.entity.Article;
import com.klfront.klblog.entity.Knowledge;
import com.klfront.klblog.service.ArticleService;
import com.klfront.klblog.service.KnowledgeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * Title: KnowledgeController.java
 * Description:
 * Copyright: Copyright (c) 2019
 * Company: www.klfront.com
 *
 * @author Lu Jinlong
 * @date 2019-07-06
 * @version 1.0
 */
@RestController
@RequestMapping(value = "/knowledge")
public class KnowledgeController {
	private static Integer pageSize = 8;

	@Autowired
	private KnowledgeService service;

	/**
	 * 获取分页数据
	 *
	 * @param pageNo   从1开始
	 * @param pageSize
	 * @param keyword
	 * @return
	 */
	@GetMapping(value = "/listByPage")
	List<Knowledge> listByPage(Integer pageNo, Integer pageSize, String keyword) {
		List<Knowledge> list = service.listByPage(pageNo, pageSize, keyword);
		return list;
	}

	@GetMapping(value = "/delete")
	Boolean delete(Long id) {
		int count = service.deleteByPrimaryKey(id);
		return count > 0;
	}

	@PostMapping(value = "/add")
	Boolean add(Knowledge knowledge) {
		int res = service.insertSelective(knowledge);
		return res > 0;
	}

	@PostMapping(value = "/update")
	Boolean update(Knowledge knowledge) {
		int res = service.updateByPrimaryKeySelective(knowledge);
		return res > 0;
	}

}
