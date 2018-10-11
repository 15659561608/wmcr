package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.AdminDao;
import com.etc.entity.Administor;
import com.etc.util.BaseDao;

public class AdminDaoImpl implements AdminDao{

	@Override
	public Administor login(String account,String pwd) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM administor WHERE account=? AND pwd=?";
		List<Administor> list=(List<Administor>)BaseDao.select(sql, Administor.class, account,pwd);
		
		if (list.size()>0) {
			return list.get(0);
		} else {
			return null;
		}
		
	}

}
