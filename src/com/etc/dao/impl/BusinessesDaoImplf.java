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

	@Override
	public List<Businesses> queryBussById(int id) {
		// TODO Auto-generated method stub
		String sql="select * from businesses where bossId=?";
		List<Businesses> businesses= (List<Businesses>) BaseDao.select(sql, Businesses.class,id);
		return businesses;
	}



	

	
	

}
