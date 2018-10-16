package com.etc.service.impl;

import java.util.List;

import com.etc.dao.CitycglDao;
import com.etc.dao.impl.CitycglDaoImpl;
import com.etc.entity.Businesses;
import com.etc.entity.City;
import com.etc.services.CityServicecgl;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class CityServicecglImpl implements CityServicecgl {
	CitycglDao cd = new CitycglDaoImpl();

	@Override
	public PageData<City> queryCity(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return cd.queryCity(page, pageSize, keywords);
	}

	@Override
	public boolean delCity(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from businesses WHERE cityId=?";

		List list = (List) BaseDao.select(sql, Businesses.class, id);
		if (list.size() == 0) {

			return cd.delCity(id);
		} else {
			return false;
		}

	}

	@Override
	public boolean addCity(String cityName) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from city WHERE cityName=?";

		List list = (List) BaseDao.select(sql, Businesses.class, cityName);
		if (list.size() == 0) {

			return cd.addCity(cityName);
		} else {
			return false;
		}
	}

}
