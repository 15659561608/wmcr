package com.etc.dao.impl;

import java.sql.Connection;
import java.util.Date;
import java.util.List;

import com.etc.dao.DistributorDao;
import com.etc.entity.Distributor;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class DistributorDaoImpl implements DistributorDao {

	@Override
	public PageData<Distributor> queryDis(int Page, int PageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql = "select * from distributor where disName like ?";

		PageData<Distributor> dis = BaseDao.getPage(sql, Page, PageSize, Distributor.class, "%" + keywords + "%");
		return dis;
	}

	@Override
	public List<Distributor> queryDis(Connection conn) {
		// TODO Auto-generated method stub
		String sql = "select * from distributor where state=0";

		List<Distributor> dis = (List<Distributor>)BaseDao.select(sql, conn, Distributor.class);
		return dis;
	}


	@Override
	public boolean addDis(String disName, String phone, Date birthday) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO distributor(disName, phone, birthday) VALUES (?, ?, ?)";

		return BaseDao.execute(sql, disName, phone, birthday) > 0;
	}



	@Override
	public boolean updateDis(String phone, int state,int id) {
		// TODO Auto-generated method stub
		String sql="update distributor set phone=?,state=? where id=?";
		
		return BaseDao.execute(sql, phone,state,id)>0;
	}

}
