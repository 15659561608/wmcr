package com.etc.service.impl;

import java.util.Date;

import com.etc.dao.DistributorDao;
import com.etc.dao.impl.DistributorDaoImpl;
import com.etc.entity.Distributor;
import com.etc.services.DistributorService;
import com.etc.util.PageData;

public class DistributorServiceImpl implements DistributorService {
	DistributorDao dd = new DistributorDaoImpl();

	@Override
	public PageData<Distributor> queryDis(int Page, int PageSize, String keywords) {
		// TODO Auto-generated method stub
		return dd.queryDis(Page, PageSize, keywords);
	}

	@Override
	public boolean addDistributor(String disName, String phone, Date birthday) {
		// TODO Auto-generated method stub
		return dd.addDis(disName, phone, birthday);
	}

	@Override
	public boolean updateDis(String phone, int state, int id) {
		// TODO Auto-generated method stub
		return dd.updateDis(phone, state, id);
	}

}
