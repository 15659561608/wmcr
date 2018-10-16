package com.etc.dao.impl;

import com.etc.dao.BusinessDaocgl;
import com.etc.entity.Businesses;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class BusinessDaocglImpl implements BusinessDaocgl {

	@Override
	public PageData<Businesses> queryBusiness(int page,int pageSize,String keywords) {
		// TODO Auto-generated method stub
		String sql="select * from businesses where busiName LIKE ? OR address LIKE ?";
		PageData<Businesses> businesses= BaseDao.getPage(sql, page, pageSize, Businesses.class, "%"+keywords+"%","%"+keywords+"%");
		return businesses;
	}

	@Override
	public boolean updateBusiness(int state,int id) {
		// TODO Auto-generated method stub
		String sql="UPDATE businesses SET state=? WHERE (id=?)";
		
		return BaseDao.execute(sql, state,id)>0;
	}

}
