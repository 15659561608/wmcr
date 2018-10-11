package com.etc.service.impl;

import com.etc.dao.AdminDao;
import com.etc.dao.impl.AdminDaoImpl;
import com.etc.entity.Administor;
import com.etc.services.AdminService;

public class AdminServiceImpl implements AdminService{
AdminDao ad=new AdminDaoImpl();
	@Override
	public Administor loginad(String account,String pwd) {
		// TODO Auto-generated method stub
		return ad.login(account, pwd);
	}

}
