package com.etc.dao;

import com.etc.entity.Food;

import com.etc.util.PageData;

/**
*	@author: zmf  
*	@date: 2018年10月12日 下午3:02:01 
*/
public interface foodsDaof {
	boolean addFoods(Food food);
	
	PageData<Food> queryFoods(int page,int pageSize,String keyWords);
	

}
