package com.etc.test;

import com.etc.entity.Food;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.services.FoodServicesf;

public class updateFoods {
	public static void main(String[] args) {
		FoodServicesf fsf = new FoodsServiceImplf();
		Food food=new Food(2007,"latiao",5.0,0.2,6,1,"hao","img",1);
	boolean f=	fsf.update(food);
		System.out.println(f);		
		
		
	}

}
