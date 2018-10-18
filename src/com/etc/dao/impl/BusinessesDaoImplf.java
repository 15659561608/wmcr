package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.BusinessesDaof;
import com.etc.entity.Businesses;
import com.etc.util.BaseDao;

public class BusinessesDaoImplf implements BusinessesDaof{

	@Override
	public List<Businesses> queryBuss() {
		// TODO Auto-generated method stub
		String sql="select * from businesses";
		List<Businesses> list= (List<Businesses>) BaseDao.select(sql, Businesses.class);
		return list;
	}


	

	
	

}
