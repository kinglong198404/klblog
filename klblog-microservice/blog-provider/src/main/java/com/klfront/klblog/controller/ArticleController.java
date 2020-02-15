package com.klfront.klblog.controller;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.klfront.klblog.entity.Article;
import com.klfront.klblog.service.CategoryService;
import com.klfront.klblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.klfront.util.FileUtil;
import com.klfront.util.HtmlExtract;


/**
 * Title: ArticleController.java
 * Description:
 * Copyright: Copyright (c) 2019
 * Company: www.klfront.com
 *
 * @author Lu Jinlong
 * @date 2019-07-06
 * @version 1.0
 */
@RestController
@RequestMapping(value = "/article")
public class ArticleController {
	private static Integer pageSize = 8;

	@Autowired
	private ArticleService service;

	/**
	 * 获取分页数据
	 *
	 * @param pageNo   从1开始
	 * @param pageSize
	 * @param keyword
	 * @return
	 */
	@GetMapping(value = "/listByPage")
	List<Article> listByPage(Integer pageNo, Integer pageSize, String keyword) {
		List<Article> list = service.listByPage(pageNo, pageSize, keyword);
		return list;
	}

	@GetMapping(value = "/delete")
	Boolean delete(Long id) {
		int count = service.deleteByPrimaryKey(id);
		return count > 0;
	}

	@PostMapping(value = "/add")
	Boolean add(Article article) {
		int res = service.insertSelective(article);
		return res > 0;
	}

	@PostMapping(value = "/update")
	Boolean update(Article article) {
		int res = service.updateByPrimaryKeySelective(article);
		return res > 0;
	}

}
