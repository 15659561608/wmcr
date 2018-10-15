package com.etc.services;

import com.etc.entity.Distributor;
import com.etc.util.PageData;

public interface DistributorService {
	PageData<Distributor> queryDis(int Page,int PageSize,String keywords);
}
