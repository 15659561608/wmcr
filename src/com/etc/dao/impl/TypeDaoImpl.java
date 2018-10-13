package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.CityDao;
import com.etc.dao.TypeDao;
import com.etc.entity.City;
import com.etc.entity.Type;
import com.etc.util.BaseDao;

public class TypeDaoImpl implements TypeDao {

	@Override
	public List<Type> getTypes() {
		// TODO Auto-generated method stub
		return (List<Type>)BaseDao.select("select * from type", Type.class);
	}


}
