package com.etc.dao.impl;

import java.sql.Connection;
import java.util.List;

import com.etc.dao.OrdersDetailLDao;
import com.etc.entity.Ordersdetail;
import com.etc.util.BaseDao;

public class OrdersDetailDaoImpl implements OrdersDetailLDao {

	@Override
	public boolean addOrdersDetail(Ordersdetail o, Connection conn) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO ordersdetail ( orderId, foodId, num) VALUES (?,?,?)";
		return BaseDao.execute(sql, conn,o.getOrderId(),o.getFoodId(),o.getNum())>0;
	}

	@Override
	public List<Ordersdetail> getOrdersDetail(String orderId) {
		// TODO Auto-generated method stub
		String sql="select * from ordersdetail where orderId=?";
		return (List<Ordersdetail>)BaseDao.select(sql, Ordersdetail.class,orderId);
	}

}
