package com.etc.service.impl;

import java.sql.Connection;

import com.etc.dao.OrdersDetailLDao;
import com.etc.dao.impl.OrdersDetailDaoImpl;
import com.etc.entity.Ordersdetail;
import com.etc.services.OrdersDetailService;

public class OrdersDetailServiceImpl implements OrdersDetailService {
	private OrdersDetailLDao odd=new OrdersDetailDaoImpl();
	@Override
	public boolean addOrdersDetail(Ordersdetail o, Connection conn) {
		// TODO Auto-generated method stub
		return odd.addOrdersDetail(o, conn);
	}

}
