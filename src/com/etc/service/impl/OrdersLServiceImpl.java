package com.etc.service.impl;

import java.sql.Connection;
import java.util.List;

import com.etc.dao.impl.OrderLDaoImpl;
import com.etc.entity.Orders;
import com.etc.entity.OrdersData;
import com.etc.entity.OrdersLwq;
import com.etc.entity.Ordersdetail;
import com.etc.services.OrdersDetailService;
import com.etc.services.OrdersLService;
import com.etc.util.PageData;

/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月10日 下午2:38:14
* 
*/

public class OrdersLServiceImpl implements OrdersLService{
   OrderLDaoImpl  odi=new OrderLDaoImpl();
	@Override
	public List<OrdersLwq> getOrders() {
		// TODO Auto-generated method stub
		return odi.queryOrders();
	}
	@Override
	public PageData<OrdersLwq> getOrdersByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return odi.queryOrdersByPage(page, pageSize, keywords);
	}
	@Override
	public List<OrdersLwq> getOrdersBusi(String account, String busiName) {
		// TODO Auto-generated method stub
		return odi.queryOrdersBusi(account, busiName);
	}
	/**
	 * 根据订单编号查询订单信息
	 */
	@Override
	public List<OrdersLwq> getOrdersByid(String id) {
		// TODO Auto-generated method stub
		return odi.queryOrdersByid(id);
	}
	@Override
	public boolean updateOrdersByid(String id, int status) {
		// TODO Auto-generated method stub
		return odi.updateOrdersByid(id, status);
	}
	@Override
	public boolean addOrders(Orders o, Connection conn) {
		// TODO Auto-generated method stub
		return odi.addOrders(o, conn);
	}
	@Override
	public List<OrdersData> queryOrdersByOrderId(String id) {
		// TODO Auto-generated method stub
		return odi.queryOrdersByOrderId(id);
	}
	@Override
	public Orders getorders(String orderId) {
		// TODO Auto-generated method stub
		return odi.getorders(orderId);
	}
	@Override
	public List<OrdersLwq> getOrdersPerson(String account) {
		// TODO Auto-generated method stub
		return odi.queryOrdersPerson(account);
	}

}
