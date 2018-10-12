package com.etc.service.impl;

import com.etc.dao.ordersDetailDaof;
import com.etc.dao.impl.OrdersdetailDaoImplf;
import com.etc.entity.Ordersdetail;
import com.etc.services.OrdersDetailServicef;

/**
*	@author: zmf  
*	@date: 2018年10月11日 上午9:53:19 
*/
public class ordersDetailServiceImplf implements OrdersDetailServicef{
	private ordersDetailDaof odf=new OrdersdetailDaoImplf();

	@Override
	public boolean addOrdersdetail(Ordersdetail ordersdetail) {
		// TODO Auto-generated method stub
		return odf.addordersDetail(ordersdetail);
	}

}
