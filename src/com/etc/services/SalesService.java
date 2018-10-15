package com.etc.services;

import java.util.List;

import com.etc.entity.Sales;
import com.etc.entity.SalesBusi;

public interface SalesService {
	/**
	 * 根据商户编号获取促销信息
	 * @param bossId
	 * @return
	 */
	public List<SalesBusi> getSalesByBossId(int bossId);
	/**
	 * 根据门店编号获取促销信息
	 * @param bossId
	 * @return
	 */
	public List<SalesBusi> getSalesByBusId(int busId);
	/**
	 * 根据商户编号获取历史促销信息
	 * @param bossId
	 * @return
	 */
	public List<SalesBusi> getHisSalesByBusId(int busId);
	/**
	 * 根据门店编号获取历史促销信息
	 * @param bossId
	 * @return
	 */
	public List<SalesBusi> getHisSalesByBossId(int bossId);
	/**
	 * 根据促销编号获取促销信息
	 * @param bossId
	 * @return
	 */
	public List<SalesBusi> getSalesBySalId(int salId);
	/**
	 * 发布促销信息
	 * @param s
	 * @return
	 */
	public boolean addSales(Sales s);
	
	/**
	 * 删除促销信息
	 * @param id
	 * @return
	 */
	public boolean delSales(int id);
	/**
	 * 修改促销信息
	 * @param id
	 * @return
	 */
	public boolean updateSales(Sales s,int id);
}
