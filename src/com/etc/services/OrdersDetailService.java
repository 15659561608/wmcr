package com.etc.services;

import java.sql.Connection;
import java.util.List;

import com.etc.entity.Orders;
import com.etc.entity.OrdersLwq;
import com.etc.entity.Ordersdetail;
import com.etc.util.PageData;

/**
 * 
 * @author 谢凌鑫
 *2018年10月17日
 */

public interface OrdersDetailService {
	// 用户下单
	public boolean addOrdersDetail(Ordersdetail o, Connection conn);
}
