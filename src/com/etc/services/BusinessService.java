package com.etc.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Businesses;
import com.etc.entity.BusinessesCity;

public interface BusinessService {
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
	 * 获取门店信息
	 * @return
	 */
	public List<BusinessesCity> getBusinessesById(int id);
	/**
	 * 添加门店
	 * @param b
	 * @return
	 */
	public boolean addBusinesses(Businesses b);
	/**
	 * 获取门店列表
	 * @return
	 */
	public List<BusinessesCity> getAllBusinesses();
	/**
	 * 获取审核通过的门店列表
	 * @return
	 */
	public List<BusinessesCity> getPassBusinesses();
	/**
	 * 根据类别获取审核通过的门店列表
	 * @return
	 */
	public List<BusinessesCity> getPassBusinessesByType(int id);
	/**
	 * 获取营业中门店列表
	 * @return
	 */
	public List<BusinessesCity> getOnBusinesses();
	/**
	 * 修改门店信息
	 * @param b
	 * @return
	 */
	public boolean updateBusinesses(Businesses b);
	/**
	 * 修改状态
	 * @param op
	 * @return
	 */
	public void updateBusiForString(HttpServletRequest request, HttpServletResponse response,String op);
}
