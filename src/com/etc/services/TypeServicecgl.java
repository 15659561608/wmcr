package com.etc.services;

import java.util.List;

import com.etc.entity.Type;
import com.etc.entity.Typecgl;
import com.etc.util.PageData;

public interface TypeServicecgl {

	PageData<Typecgl> queryType(int page, int pageSize, String keywords);
	List<Type> getType();
	boolean addType(String title, int pId);
	boolean updateType(int id, int pId);
}
