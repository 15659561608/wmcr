package com.etc.dao;

import java.util.List;

import com.etc.entity.Food;
import com.etc.util.PageData;

/**
 * @author: zmf
 * @date: 2018年10月12日 下午3:02:01
 */
public interface foodsDaof {
	boolean addFoods(Food food);

	PageData<Food> queryFoods(int page, int pageSize);

	PageData<Food> queryFoods(int page, int pageSize, String keyWords, int busId);

	List<Food> getFoods();

	boolean delFoods(int id);

	boolean updateFoods(Food food);

	List<Food> queryFoods();
	/**
	 * 根据编号获取菜品
	 * @param id
	 * @return
	 */
	public Food getFoodById(int id);
}
