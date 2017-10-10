package com.lijinhuan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lijinhuan.model.Image;


public interface ImageMapper {

	public void insert(Image image);
	public List<Image> queryByUserId(@Param("userId") int userId); 
}
