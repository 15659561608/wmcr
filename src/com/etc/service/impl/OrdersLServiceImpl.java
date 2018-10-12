package com.etc.service.impl;

import java.util.List;

import com.etc.dao.impl.OrderLDaoImpl;
import com.etc.entity.OrdersLwq;
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
}
