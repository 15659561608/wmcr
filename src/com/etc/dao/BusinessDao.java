package com.etc.dao;

import java.util.List;

import com.etc.entity.Businesses;
import com.etc.entity.BusinessesCity;

/**
 * 
 * @author 谢凌鑫
 *2018年10月10日
 */
public interface BusinessDao {

	/**
	 * 获取门店列表
	 * @return
	 */
	public List<Businesses> getBusinesses();
	
	/**
	 * 获取门店列表
	 * @return
	 */
	public List<BusinessesCity> getBusinesses(int bossId);
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
