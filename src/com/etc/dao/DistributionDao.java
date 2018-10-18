package com.etc.dao;

import java.sql.Connection;
import java.util.Date;

import com.etc.entity.Distribution;
import com.etc.entity.Distributor;
import com.etc.util.PageData;

public interface DistributionDao {

	/**
	 * 添加配送表
	 * @param d
	 */
	public Boolean addDis(Distribution d,Connection conn);
	
	/**
	 * 根据订单编号查找配送表
	 * @param ordId
	 * @return
	 */
	public Distribution getDisByOrderId(int ordId);
}
