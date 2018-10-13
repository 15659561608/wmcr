package com.etc.service.impl;

import java.util.List;

import com.etc.dao.CityDao;
import com.etc.dao.impl.CityDaoImpl;
import com.etc.entity.City;
import com.etc.services.CitySevice;

public class CityServiceImpl implements CitySevice {
	
	private CityDao cd=new CityDaoImpl();
	@Override
	public List<City> getCitys() {
		// TODO Auto-generated method stub
		return cd.getCitys();
	}

}
