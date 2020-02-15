package com.klfront.klblog.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.klfront.klblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klfront.klblog.entity.User;
import com.klfront.util.MD5Util;

/**
 * Title: UserController.java
 * Description: 用户管理 登录等
 * Copyright: Copyright (c) 2019
 * Company: www.klfront.com
 *
 * @author Lu Jinlong
 * @date 2019-07-12
 * @version 1.0
 */

@RestController
@RequestMapping(value = "/user")
public class UserController {
	@Autowired
	private UserService service;
	@Value("${md5.salt}")
	private String md5Salt;

	@PostMapping(value = "/login")
	public User login(@RequestParam("username") String username,
					  @RequestParam("password") String password) {
		String md5pwd = MD5Util.encode(password,md5Salt);
		User user = service.getByUsername(username);
		if(null!=user&&user.getPassword().equals(md5pwd)) {
			// 登陆成功
			return user;
		} else {
			// 登陆失败 用户名密码错误
			return null;
		}
	}
	
	@GetMapping(value = "/logout")
	public void logout(HttpServletResponse response, HttpSession session) {
		session.removeAttribute("loginUser");
		try {
			response.sendRedirect("/");
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}
	
}
