package com.etc.services;

import java.util.List;

import com.etc.entity.Food;
import com.etc.util.PageData;

/**
*	@author: zmf  
*	@date: 2018年10月12日 下午3:09:27 
*/
public interface FoodServicesf {
	boolean addFoods(Food food);
	PageData<Food> getFoods(int page,int pageSize,String keyWords); 
	boolean delFoods(int id);
	boolean update(Food food);
	List<Food> allFoods();

}
