package com.etc.dao;

import java.sql.Connection;
import java.util.List;

import com.etc.entity.Orders;
import com.etc.entity.OrdersData;
import com.etc.entity.OrdersInfo;
import com.etc.entity.OrdersLwq;
import com.etc.util.PageData;


/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月10日 下午2:26:21
* 
*/

public interface OrdersLDao {
	List<OrdersLwq> queryOrders();
	PageData<OrdersLwq> queryOrdersByPage(int page, int pageSize, String keywords);
	
	//商家查看门店订单
	List<OrdersLwq> queryOrdersBusi(String account,String busiName);
	
	
	List<OrdersLwq> queryOrdersByid(String id);
	public List<OrdersData> queryOrdersByOrderId(String id);
	//根据订单编号修改订单支付状态
	public boolean updateOrdersByid(String id,int status);
	//用户下单
	public boolean addOrders(Orders o,Connection conn);
	//根据订单编号获取订单信息
	public Orders getorders(String orderId);
	//根据用户账号查找订单
	List<OrdersLwq> queryOrdersPerson(String account);
	
	public List<OrdersInfo> getOrdersInfo(String account);
}
