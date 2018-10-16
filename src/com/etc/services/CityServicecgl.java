package com.etc.services;

import com.etc.entity.City;
import com.etc.util.PageData;

public interface CityServicecgl {

	PageData<City> queryCity(int page,int pageSize,String keywords);
	
	boolean delCity(int id);
	
	boolean addCity(String cityName);
}
