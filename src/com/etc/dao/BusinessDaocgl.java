package com.etc.dao;

import com.etc.entity.Businesses;
import com.etc.util.PageData;

public interface BusinessDaocgl {
	PageData<Businesses> queryBusiness(int page, int pageSize, String keywords);
	
	boolean updateBusiness(int state,int id);
}
