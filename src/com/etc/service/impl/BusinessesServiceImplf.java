package com.etc.service.impl;

import java.util.List;

import com.etc.dao.BusinessesDaof;
import com.etc.dao.impl.BusinessesDaoImplf;
import com.etc.entity.Businesses;
import com.etc.services.BusinessesServicef;

public class BusinessesServiceImplf implements BusinessesServicef{
	private BusinessesDaof bdf=new BusinessesDaoImplf();

	@Override
	public List<Businesses> queryBusinesses() {
		// TODO Auto-generated method stub
		return bdf.queryBuss();
	}

	@Override
	public List<Businesses> queryBussById(int id) {
		// TODO Auto-generated method stub
		return bdf.queryBussById(id);
	}

	

}
