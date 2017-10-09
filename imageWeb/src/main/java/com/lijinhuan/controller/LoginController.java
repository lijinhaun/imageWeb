package com.lijinhuan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lijinhuan.mapper.UserMapper;
import com.lijinhuan.model.User;

@Controller
public class LoginController {
	
	@Autowired
	private UserMapper userMapper;
	
	@RequestMapping("/login.html")
	public String login(@ModelAttribute User user){
		User u = userMapper.queryUser(user);
		if( u == null){
			return "index";
		}
		return "main";
	}
	
	@RequestMapping("/logout.html")
	public String logout(){
		return "index";
	}
}
