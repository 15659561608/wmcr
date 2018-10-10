package com.etc.service.impl;

import java.util.List;

import com.etc.dao.BusinessDao;
import com.etc.dao.impl.BusinessDaoImpl;
import com.etc.entity.Businesses;
import com.etc.services.BusinessService;

public class BusinessServiceImpl implements BusinessService {

	private BusinessDao bd=new BusinessDaoImpl();
	@Override
	public List<Businesses> getBusinesses() {
		// TODO Auto-generated method stub
		return bd.getBusinesses();
	}

	@Override
	public boolean addBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		return bd.addBusinesses(b);
	}

	@Override
	public boolean updateBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		return false;
	}

}
