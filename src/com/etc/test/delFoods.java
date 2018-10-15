package com.etc.test;

import com.etc.service.impl.FoodsServiceImplf;
import com.etc.services.FoodServicesf;

public class delFoods {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FoodServicesf fsf = new FoodsServiceImplf();
		System.out.println(fsf.delFoods(2011));

	}

}
