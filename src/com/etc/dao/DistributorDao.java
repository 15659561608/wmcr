package com.etc.dao;

import java.sql.Connection;
import java.util.Date;
import java.util.List;

import com.etc.entity.Distributor;
import com.etc.util.PageData;

public interface DistributorDao {

	PageData<Distributor> queryDis(int Page,int PageSize,String keywords);
	

	boolean addDis(String disName, String phone, Date birthday);
	
	public List<Distributor> queryDis(Connection conn);
	
	boolean updateDis(String phone,int state,int id);
}
