package com.etc.service.impl;

import java.util.List;

import com.etc.dao.TypeDao;
import com.etc.dao.impl.TypeDaoImpl;
import com.etc.entity.Type;
import com.etc.services.TypeSevice;

public class TypeServiceImpl implements TypeSevice {
	
	private TypeDao td=new TypeDaoImpl();

	@Override
	public List<Type> getTypes() {
		// TODO Auto-generated method stub
		return td.getTypes();
	}

}
