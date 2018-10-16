package com.etc.service.impl;

import com.etc.dao.BusinessDaocgl;
import com.etc.dao.impl.BusinessDaocglImpl;
import com.etc.entity.Businesses;
import com.etc.services.BusinessServicecgl;
import com.etc.util.PageData;

public class BusinessServicecglImpl implements BusinessServicecgl {
	BusinessDaocgl bs=new BusinessDaocglImpl();
	@Override
	public PageData<Businesses> queryBusiness(int page,int pageSize,String keywords) {
		// TODO Auto-generated method stub
		return bs.queryBusiness(page,pageSize,keywords);
	}
	@Override
	public boolean updateBusiness(int state,int id) {
		// TODO Auto-generated method stub
		return bs.updateBusiness(state,id);
	}

	
}
