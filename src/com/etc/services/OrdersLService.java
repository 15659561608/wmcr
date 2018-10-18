package com.etc.services;

import java.sql.Connection;
import java.util.List;

import com.etc.entity.Orders;
import com.etc.entity.OrdersData;
import com.etc.entity.OrdersLwq;
import com.etc.entity.Ordersdetail;
import com.etc.util.PageData;

/**
 * @author 作者 LinWQ:
 * @version 创建时间：2018年10月10日 下午2:37:22
 * 
 */

public interface OrdersLService {
	List<OrdersLwq> getOrders();

	PageData<OrdersLwq> getOrdersByPage(int page, int pageSize, String keywords);

	List<OrdersLwq> getOrdersBusi(String account, String busiName);

	List<OrdersLwq> getOrdersByid(String id);

	public List<OrdersData> queryOrdersByOrderId(String id);

	boolean updateOrdersByid(String id, int status);

	// 用户下单
	public boolean addOrders(Orders o, Connection conn);

	// 根据订单编号获取订单信息
	public Orders getorders(String orderId);
}
