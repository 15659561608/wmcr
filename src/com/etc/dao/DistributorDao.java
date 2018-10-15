package com.etc.dao;

import java.util.Date;

import com.etc.entity.Distributor;
import com.etc.util.PageData;

public interface DistributorDao {

	PageData<Distributor> queryDis(int Page,int PageSize,String keywords);
	

	boolean addDis(String disName, String phone, Date birthday);
	
	
	boolean updateDis(String phone,int state,int id);
}
