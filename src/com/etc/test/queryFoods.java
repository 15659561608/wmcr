package com.etc.test;

import java.util.List;

import com.etc.entity.Food;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.services.FoodServicesf;

public class queryFoods {
	public static void main(String[] args) {
		FoodServicesf fsf = new FoodsServiceImplf();
		List<Food> list=fsf.allFoods();
		for (Food food : list) {
			System.out.println("12"+food.getState());
		}
	}

}
