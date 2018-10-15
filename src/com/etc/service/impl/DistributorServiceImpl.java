package com.etc.service.impl;

import com.etc.dao.DistributorDao;
import com.etc.dao.impl.DistributorDaoImpl;
import com.etc.entity.Distributor;
import com.etc.services.DistributorService;
import com.etc.util.PageData;

public class DistributorServiceImpl implements DistributorService {
DistributorDao dd=new DistributorDaoImpl();
	@Override
	public PageData<Distributor> queryDis(int Page, int PageSize, String keywords) {
		// TODO Auto-generated method stub
		return dd.queryDis(Page, PageSize, keywords);
	}

}
