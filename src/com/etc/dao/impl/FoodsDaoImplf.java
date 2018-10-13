package com.etc.dao.impl;

import com.etc.dao.foodsDaof;
import com.etc.entity.Food;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

/**
*	@author: zmf  
*	@date: 2018年10月12日 下午3:03:12 
*/
public class FoodsDaoImplf implements foodsDaof{

	@Override
	public boolean addFoods(Food food) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO food(id, foodName, price, discount, num, salNum, des, logo, busId, state) VALUES (?,?,?,?,?,?,?,?,?,?)"; 
				
		return BaseDao.execute(sql, food.getId(),food.getFoodName(),food.getPrice(),food.getDiscount(),food.getNum(),food.getSalNum(),food.getDes(),food.getLogo(),food.getBusId(),food.getState())>0;
	}

	@Override
	public PageData<Food> queryFoods(int page,int pageSize,String keyWords) {
		// TODO Auto-generated method stub
		String sql="select * from food where foodName like ?";
		PageData<Food> pd= BaseDao.getPage(sql, page, pageSize, Food.class,"%"+keyWords+"%");
		return pd;
	}

	@Override
	public boolean delFoods(int id) {
		// TODO Auto-generated method stub
		String sql="delete from food where id=?";
		return BaseDao.execute(sql, id)>0;
	}

	@Override
	public boolean updateFoods(Food food) {
		// TODO Auto-generated method stub
		String sql="update food set foodName=?, price=?, discount=?, num=?, salNum=?, des=?, logo=?, state=? where id=?";
		return BaseDao.execute(sql, food.getFoodName(),food.getPrice(),food.getDiscount(),food.getNum(),food.getSalNum(),food.getDes(),food.getLogo(),food.getState(),food.getId())>0;
	}

}
