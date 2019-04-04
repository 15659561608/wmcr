package com.etc.services;

import java.sql.Connection;
import java.util.List;

import com.etc.entity.Orders;
import com.etc.entity.OrdersData;
import com.etc.entity.OrdersInfo;
import com.etc.entity.OrdersLwq;
import com.etc.entity.Ordersdetail;
import com.etc.util.PageData;

public interface OrdersLService {
	List<OrdersLwq> getOrders();

	PageData<OrdersLwq> getOrdersByPage(int page, int pageSize, String keywords);

	List<OrdersLwq> getOrdersBusi(String account, String busiName);

	List<OrdersLwq> getOrdersByid(String id);
	public List<OrdersData> queryOrdersByOrderId(String id);
	
	public boolean confirmOrdersByid(String id, int status);
	boolean updateOrdersByid(String id, int status);
	boolean updatePayStatusByid(String id, int status);

	// 用户下单
	public boolean addOrders(Orders o, Connection conn);
	
	public List<OrdersInfo> getOrdersInfo(String account);
	// 根据订单编号获取订单信息
	public Orders getorders(String orderId);
	
	List<OrdersLwq> getOrdersPerson(String account);
}
