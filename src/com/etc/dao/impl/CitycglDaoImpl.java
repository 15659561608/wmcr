package com.etc.dao.impl;

import com.etc.dao.CitycglDao;

import com.etc.entity.City;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class CitycglDaoImpl implements CitycglDao {

	@Override
	public PageData<City> queryCity(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM city where cityName like ?";
		PageData<City> city = BaseDao.getPage(sql, page, pageSize, City.class, "%" + keywords + "%");
		return city;
	}

	@Override
	public boolean delCity(int id) {
		// TODO Auto-generated method stub

		String sql = "DELETE from city WHERE id=? ";

		return BaseDao.execute(sql, id) > 0;

	}

	@Override
	public boolean addCity(String cityName) {
		// TODO Auto-generated method stub
		String sql = "insert into city(cityName) values (?)";
		
		return BaseDao.execute(sql, cityName)>0;
	}
}
