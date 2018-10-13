package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.CityDao;
import com.etc.entity.City;
import com.etc.util.BaseDao;

public class CityDaoImpl implements CityDao {

	@Override
	public List<City> getCitys() {
		// TODO Auto-generated method stub
		return (List<City>)BaseDao.select("select * from city", City.class);
	}

}
