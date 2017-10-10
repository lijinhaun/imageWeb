package com.lijinhuan.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.lijinhuan.mapper.ImageMapper;
import com.lijinhuan.model.Image;

@Controller
public class UploadController {

	@Autowired
	private ImageMapper ImageMapper;
	
	@RequestMapping("/upload.html")
	public String upload(){
		return "upload";
	}
	
	@RequestMapping("/doUpload.html")
	public String doUpload(@RequestParam("uploadfile") CommonsMultipartFile file,HttpServletRequest request){
		String token = request.getParameter("token");
		String fileName = UUID.randomUUID().toString();
		System.out.println("fileName："+fileName);
		OutputStream outputStream = null;
		InputStream inputStream = null;
		try {
			inputStream = file.getInputStream();
			File file2 = new File("D:/text/"+file.getOriginalFilename());
			outputStream = new FileOutputStream(file2);
			byte[] bytes = new byte[1024];
			int len = 0;
			while ((len = inputStream.read(bytes) ) != -1) {
				outputStream.write(bytes);
			}
			//上传成功，插入数据库表
			Image image = new Image();
			image.setImageName(fileName);
			image.setUserId(1);
			ImageMapper.insert(image);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				outputStream.close();
				inputStream.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:index.html";
	}
}
