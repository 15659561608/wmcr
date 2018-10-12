package com.etc.service.impl;

import com.etc.dao.OrdersDaof;
import com.etc.dao.impl.OrdersDaoImplf;
import com.etc.entity.Orders;
import com.etc.services.OrdersServicef;

/**
*	@author: zmf  
*	@date: 2018年10月11日 上午9:01:38 
*/
public class OrdersServiceImplf implements OrdersServicef{
	private OrdersDaof od=new OrdersDaoImplf();

	@Override
	public boolean addOrders(Orders orders) {
		// TODO Auto-generated method stub
		return od.addOrders(orders);
	}

}
