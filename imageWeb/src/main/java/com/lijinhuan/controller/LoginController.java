package com.lijinhuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lijinhuan.mapper.ImageMapper;
import com.lijinhuan.mapper.UserMapper;
import com.lijinhuan.model.Image;
import com.lijinhuan.model.User;

@Controller
public class LoginController {
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private ImageMapper imageMapper;
	@RequestMapping("/login.html")
	public String login(@ModelAttribute User user,ModelMap modelMap){
		List<User> u  = userMapper.queryUser(user);
		String token = "123456";
		if( u.size() == 0){
			return "index";
		}
		List<Image> images = imageMapper.queryByUserId(u.get(0).getId());
		modelMap.put("token",token);
		modelMap.put("images",images);
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
