package com.etc.dao.impl;

import com.etc.dao.DistributorDao;
import com.etc.entity.Distributor;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class DistributorDaoImpl implements DistributorDao {

	@Override
	public PageData<Distributor> queryDis(int Page, int PageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql="select * from distributor where disName like ?";
		
		PageData<Distributor> dis=BaseDao.getPage(sql, Page, PageSize, Distributor.class,"%"+keywords+"%");
		return dis;
	}

}
