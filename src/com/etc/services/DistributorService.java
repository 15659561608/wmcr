package com.etc.services;

import java.util.Date;

import com.etc.entity.Distributor;
import com.etc.util.PageData;

public interface DistributorService {
	PageData<Distributor> queryDis(int Page,int PageSize,String keywords);

	boolean addDistributor(String disName, String phone, Date birthday);
	
	boolean updateDis(String phone,int state,int id);
}
