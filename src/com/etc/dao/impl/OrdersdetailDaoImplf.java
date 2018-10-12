package com.etc.dao.impl;

import com.etc.dao.ordersDetailDaof;
import com.etc.entity.Ordersdetail;
import com.etc.util.BaseDao;

/**
*	@author: zmf  
*	@date: 2018年10月11日 上午9:43:14 
*/
public class OrdersdetailDaoImplf implements ordersDetailDaof{

	@Override
	public boolean addordersDetail(Ordersdetail ordersdetail) {
		// TODO Auto-generated method stub
		String sql="insert into Ordersdetail values(?,?,?,?)";
		return BaseDao.execute(sql, ordersdetail.getId(),ordersdetail.getOrderid(),ordersdetail.getFoodid(),ordersdetail.getNum())>0;
	}

}
