package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.OrdersLDao;
import com.etc.entity.OrdersLwq;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

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

	@Override
	public PageData<OrdersLwq> queryOrdersByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql="select orders.id,users.account,businesses.busiName,orders.ordDate,orders.money,food.foodName,ordersdetail.num,orders.state from \r\n" + 
				"orders,businesses,users,ordersdetail,food where orders.userId=users.id and orders.busId=businesses.id and ordersdetail.orderId=orders.id and ordersdetail.foodId=food.id and users.account like ?";
		PageData<OrdersLwq> pd=BaseDao.getPage(sql, page, pageSize, OrdersLwq.class, "%" + keywords + "%");
		return pd;
	}

	@Override
	public List<OrdersLwq> queryOrdersBusi(String account, String busiName) {
		// TODO Auto-generated method stub
		String sql="select  orders.id,users.account,businesses.busiName,orders.ordDate,orders.money,food.foodName,ordersdetail.num,orders.state from \r\n" + 
				"orders,businesses,users,ordersdetail,food,boss \r\n" + 
				"where orders.userId=users.id and orders.busId=businesses.id and ordersdetail.orderId=orders.id and ordersdetail.foodId=food.id and boss.id=businesses.bossId \r\n" + 
				"and boss.account=? and businesses.busiName like ?";
		return (List<OrdersLwq>) BaseDao.select(sql, OrdersLwq.class, account,"%"+busiName+"%");
	}

	/**
	 * 根据订单编号查找整条订单信息
	 */
	@Override
	public List<OrdersLwq> queryOrdersByid(int id) {
		// TODO Auto-generated method stub
		String sql="select orders.id,users.account,businesses.busiName,orders.ordDate,orders.money,food.foodName,ordersdetail.num,orders.state from\r\n" + 
				"				orders,businesses,users,ordersdetail,food where orders.userId=users.id and orders.busId=businesses.id and ordersdetail.orderId=orders.id and ordersdetail.foodId=food.id and orders.id=?";
		return (List<OrdersLwq>) BaseDao.select(sql, OrdersLwq.class, id);
	}

	@Override
	public boolean updateOrdersByid(int id, int status) {
		// TODO Auto-generated method stub
		String sql="update orders set state=? where id=?";
		return BaseDao.execute(sql, status,id)>0;
	}

}
