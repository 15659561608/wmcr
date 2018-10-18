package com.etc.services;

import java.sql.Connection;

import com.etc.entity.Distribution;

public interface DistributionService {
	/**
	 * 添加配送表
	 * 
	 * @param d
	 */
	public Boolean addDis(Distribution d,Connection conn);

	/**
	 * 根据订单编号查找配送表
	 * 
	 * @param ordId
	 * @return
	 */
	public Distribution getDisByOrderId(int ordId);
}
