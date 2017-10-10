package com.lijinhuan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lijinhuan.mapper.UserMapper;
import com.lijinhuan.model.User;

@Controller
public class LoginController {
	
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("/login.html")
	public String login(@ModelAttribute User user,ModelMap modelMap){
		User u = userMapper.queryUser(user);
		String token = "123456";
		if( u == null){
			return "index";
		}
		modelMap.put("token",token );
		return "main";
	}
	
	@RequestMapping("/home.html")
	public String indexMain(){
		return "main";
	}
	
	@RequestMapping("/logout.html")
	public String logout(){
		return "index";
	}
}
