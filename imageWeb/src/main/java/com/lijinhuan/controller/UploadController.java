package com.lijinhuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UploadController {

	@RequestMapping("/upload.html")
	public String upload(){
		return "upload";
	}
}
