package com.etc.services;

import java.sql.Connection;
import java.util.List;

import com.etc.entity.Orders;
import com.etc.entity.OrdersLwq;
import com.etc.entity.Ordersdetail;
import com.etc.util.PageData;

public interface OrdersDetailService {
	// 用户下单
	public boolean addOrdersDetail(Ordersdetail o, Connection conn);

	// 根据订单编号获取订单详情
	public List<Ordersdetail> getOrdersDetail(String orderId);
}
