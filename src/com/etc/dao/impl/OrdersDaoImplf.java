package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.OrdersDaof;
import com.etc.entity.Orders;
import com.etc.util.BaseDao;

/**
*	@author: zmf  
*	@date: 2018年10月11日 上午8:53:52 
*/
public class OrdersDaoImplf implements OrdersDaof{

	@Override
	public boolean addOrders(Orders orders) {
		// TODO Auto-generated method stub
		String sql="insert into orders values(?,?,?,?,?,?)";
		return BaseDao.execute(sql, orders.getId(),orders.getUserid(),orders.getBusid(),orders.getOrddate(),orders.getMoney(),orders.getState())>0;
	}

}
