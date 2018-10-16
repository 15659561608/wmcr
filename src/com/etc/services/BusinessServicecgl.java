package com.etc.services;

import com.etc.entity.Businesses;
import com.etc.util.PageData;

public interface BusinessServicecgl {
	PageData<Businesses> queryBusiness(int page, int pageSize, String keywords);
	
	boolean updateBusiness(int state,int id);
}
