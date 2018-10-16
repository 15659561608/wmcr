package com.etc.dao;

import com.etc.entity.City;
import com.etc.util.PageData;

public interface CitycglDao {

	PageData<City> queryCity(int page,int pageSize,String keywords);
	
	boolean delCity(int id);
	
	boolean addCity(String cityName);
}
