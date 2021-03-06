package com.etc.service.impl;

import java.util.List;

import com.etc.dao.foodsDaof;
import com.etc.dao.impl.FoodsDaoImplf;
import com.etc.entity.Food;
import com.etc.entity.Foodf;
import com.etc.services.FoodServicesf;
import com.etc.util.PageData;

public class FoodsServiceImplf implements FoodServicesf{
	private foodsDaof fdf=new FoodsDaoImplf();

	@Override
	public boolean addFoods(Food food) {
		// TODO Auto-generated method stub
		return fdf.addFoods(food);
	}

	@Override
	public PageData<Food> getFoods(int page, int pageSize, String keyWords,int busId) {
		// TODO Auto-generated method stub
		return fdf.queryFoods(page, pageSize, keyWords,busId);
	}

	@Override
	public boolean delFoods(int id) {
		// TODO Auto-generated method stub
		return fdf.delFoods(id);
	}

	@Override
	public boolean update(Foodf food) {
		// TODO Auto-generated method stub
		return fdf.updateFoods(food);
	}

	@Override
	public List<Food> allFoods() {
		// TODO Auto-generated method stub
		return fdf.getFoods();
	}

	@Override
	public List<Food> getFoods() {
		// TODO Auto-generated method stub
		return fdf.queryFoods();
	}

	@Override
	public PageData<Food> getFoods(int page, int pageSize) {
		// TODO Auto-generated method stub
		return fdf.queryFoods(page, pageSize);
	}

	@Override
	public PageData<Foodf> getFoodss(int page,int pageSize,String keyWords,int bossId) {
		// TODO Auto-generated method stub
		return fdf.queryFoodss(page, pageSize, keyWords, bossId);
	}

	@Override
	public boolean update(Food food) {
		// TODO Auto-generated method stub
		return fdf.updateFoods(food);
	}
	@Override
	public Food getFoodById(int id) {
		// TODO Auto-generated method stub
		return fdf.getFoodById(id);
	}

	@Override
	public PageData<Foodf> queryFoodfs(int page, int pageSize, String keyWords, int busId) {
		// TODO Auto-generated method stub
		return fdf.queryFoodfs(page, pageSize, keyWords, busId);
	}




}
