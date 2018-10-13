package com.etc.dao;

import java.util.List;

import com.etc.entity.Type;

public interface TypeDao {
	/**
	 * 获取城市列表
	 * 
	 * @return
	 */
	public List<Type> getTypes();
}
