package com.etc.dao;

import java.util.List;

import com.etc.entity.City;

public interface CityDao {
	/**
	 * 获取城市列表
	 * 
	 * @return
	 */
	public List<City> getCitys();
}
