package com.etc.test;

import com.etc.entity.Foodf;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.services.FoodServicesf;
import com.etc.util.PageData;

public class queryFoods {
	public static void main(String[] args) {
		FoodServicesf fsf = new FoodsServiceImplf();
		int page=1;
		int pageSize=10;
		String keyWords="";
		PageData<Foodf> list=fsf.getFoods(page, pageSize, keyWords);
		list.getData().forEach(System.out::println);
	}

}
