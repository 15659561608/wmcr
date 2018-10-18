package com.etc.test;

import java.util.List;

import com.etc.entity.Boss;
import com.etc.entity.Businesses;
import com.etc.service.impl.BossServiceImpl;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.services.BossService;
import com.etc.services.BusinessService;

public class Testzb {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BusinessService bs= new BusinessServiceImpl();
		//查询商户
	    List<Businesses> list = bs.selectBusName(1);
	    System.out.println(list);
	}

}
