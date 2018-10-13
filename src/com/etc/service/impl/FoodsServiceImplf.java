package com.etc.service.impl;

import com.etc.dao.foodsDaof;
import com.etc.dao.impl.FoodsDaoImplf;
import com.etc.entity.Food;

import com.etc.services.FoodServicesf;
import com.etc.util.PageData;

/**
*	@author: zmf  
*	@date: 2018年10月12日 下午3:10:57 
*/
public class FoodsServiceImplf implements FoodServicesf{
	private foodsDaof fdf=new FoodsDaoImplf();

	@Override
	public boolean addFoods(Food food) {
		// TODO Auto-generated method stub
		return fdf.addFoods(food);
	}

	@Override
	public PageData<Food> getFoods(int page, int pageSize, String keyWords) {
		// TODO Auto-generated method stub
		return fdf.queryFoods(page, pageSize, keyWords);
	}

	@Override
	public boolean delFoods(int id) {
		// TODO Auto-generated method stub
		return fdf.delFoods(id);
	}

	@Override
	public boolean update(Food food) {
		// TODO Auto-generated method stub
		return fdf.updateFoods(food);
	}



}
