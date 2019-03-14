package com.etc.dao;

import java.sql.Connection;
import java.util.List;

import com.alipay.api.domain.OrderDetailResult;
import com.etc.entity.Ordersdetail;
import com.etc.util.PageData;

public interface OrdersDetailLDao {

	// 用户下单
	public boolean addOrdersDetail(Ordersdetail o, Connection conn);

	// 根据订单编号获取订单详情
	public List<Ordersdetail> getOrdersDetail(String orderId);
}
