package com.etc.service.impl;

import java.sql.Connection;

import com.etc.dao.DistributionDao;
import com.etc.dao.impl.DistributionDaoImpl;
import com.etc.entity.Distribution;
import com.etc.services.DistributionService;

public class DistributionServiceImpl implements DistributionService {
	private DistributionDao dbd=new DistributionDaoImpl();
	@Override
	public Boolean addDis(Distribution d,Connection conn) {
		// TODO Auto-generated method stub
		return dbd.addDis(d, conn);
	}

	@Override
	public Distribution getDisByOrderId(int ordId) {
		// TODO Auto-generated method stub
		return dbd.getDisByOrderId(ordId);
	}

}
