package com.etc.dao;

import com.etc.entity.Distributor;
import com.etc.util.PageData;

public interface DistributorDao {

	PageData<Distributor> queryDis(int Page,int PageSize,String keywords);
}
