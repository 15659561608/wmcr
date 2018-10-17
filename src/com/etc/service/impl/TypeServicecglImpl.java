package com.etc.service.impl;

import java.util.List;

import com.etc.dao.TypeDaocgl;
import com.etc.dao.impl.TypeDaocglImpl;
import com.etc.entity.Type;
import com.etc.entity.Typecgl;
import com.etc.services.TypeServicecgl;
import com.etc.util.PageData;

public class TypeServicecglImpl implements TypeServicecgl {

	TypeDaocgl td=new TypeDaocglImpl();

	@Override
	public PageData<Typecgl> queryType(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return td.queryType(page,pageSize,keywords);
	}

	@Override
	public List<Type> getType() {
		// TODO Auto-generated method stub
		return td.getType();
	}

	@Override
	public boolean addType(String title, int pId) {
		// TODO Auto-generated method stub
		return td.addType(title,pId);
	}

	@Override
	public boolean updateType(int id, int pId) {
		// TODO Auto-generated method stub
		return td.updateType(id,pId);
	}
}
