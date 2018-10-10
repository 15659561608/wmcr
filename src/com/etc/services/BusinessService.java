package com.etc.services;

import java.util.List;

import com.etc.entity.Businesses;

public interface BusinessService {
	/**
	 * 获取门店列表
	 * @return
	 */
	public List<Businesses> getBusinesses();
	
	/**
	 * 添加门店
	 * @param b
	 * @return
	 */
	public boolean addBusinesses(Businesses b);
	
	/**
	 * 修改门店信息
	 * @param b
	 * @return
	 */
	public boolean updateBusinesses(Businesses b);
}
