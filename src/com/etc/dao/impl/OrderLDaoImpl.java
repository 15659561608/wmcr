package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.OrdersLDao;
import com.etc.entity.OrdersLwq;
import com.etc.util.BaseDao;

/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月10日 下午2:27:39
* 
*/

public class OrderLDaoImpl implements OrdersLDao{

	@Override
	public List<OrdersLwq> queryOrders() {
		// TODO Auto-generated method stub
		String sql="select orders.id,users.account,businesses.busiName,orders.ordDate,orders.money,food.foodName,ordersdetail.num,orders.state from \r\n" + 
				"orders,businesses,users,ordersdetail,food where orders.userId=users.id and orders.busId=businesses.id and ordersdetail.orderId=orders.id and ordersdetail.foodId=food.id";
		return (List<OrdersLwq>)BaseDao.select(sql,OrdersLwq.class );
	}

}
