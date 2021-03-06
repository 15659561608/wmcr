package com.etc.services;

import java.util.List;

import com.etc.entity.Food;
import com.etc.entity.Foodf;
import com.etc.util.PageData;

public interface FoodServicesf {
	boolean addFoods(Food food);
	PageData<Food> getFoods(int page,int pageSize); 
	PageData<Food> getFoods(int page,int pageSize,String keyWords,int busId); 
	
	PageData<Foodf> queryFoodfs(int page, int pageSize, String keyWords, int busId);
	boolean delFoods(int id);
	boolean update(Foodf food);
	boolean update(Food food);
	List<Food> allFoods();
	List<Food> getFoods();
	//PageData<Food> getFoods(int page,int pageSize,String keyWords);
	PageData<Foodf> getFoodss(int page,int pageSize,String keyWords,int bossId);
	/**
	 * 根据编号获取菜品
	 * @param id
	 * @return
	 */
	public Food getFoodById(int id);
}
