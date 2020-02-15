package com.klfront.klblog.robotconsumer.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.klfront.klblog.robotconsumer.feignclient.FeignClientService;
import com.klfront.klblog.entity.User;

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
	private FeignClientService service;
	
	@PostMapping(value = "/login")
	public User login(@RequestParam("username") String username,
			@RequestParam("password") String password,
			Map<String, Object> map, HttpSession session) {
		User user =  service.login(username,password);
		if(user !=null){
			session.setAttribute("loginUser", username);
		}
		return user;
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
