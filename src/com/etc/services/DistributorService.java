package com.etc.services;

import java.sql.Connection;
import java.util.Date;
import java.util.List;

import com.etc.entity.Distributor;
import com.etc.util.PageData;

public interface DistributorService {
	PageData<Distributor> queryDis(int Page, int PageSize, String keywords);

	public List<Distributor> queryDis(Connection conn);

	boolean addDistributor(String disName, String phone, Date birthday);

	boolean updateDis(String phone, int state, int id);
}
