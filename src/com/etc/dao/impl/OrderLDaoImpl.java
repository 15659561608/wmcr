package com.etc.dao.impl;

import java.sql.Connection;
import java.util.List;

import com.etc.dao.OrdersLDao;
import com.etc.entity.Orders;
import com.etc.entity.OrdersData;
import com.etc.entity.OrdersInfo;
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
	public List<OrdersData> queryOrdersByOrderId(String id) {
		// TODO Auto-generated method stub
		String sql="select orders.id,users.account,businesses.busiName,orders.ordDate,orders.money,food.foodName,food.price,ordersdetail.num,orders.state from\r\n" + 
				"orders,businesses,users,ordersdetail,food where orders.userId=users.id and orders.busId=businesses.id and ordersdetail.orderId=orders.id and ordersdetail.foodId=food.id and orders.id=? order by orders.ordDate desc";
		return (List<OrdersData>) BaseDao.select(sql, OrdersData.class, id);
	}
	/**
	 * 根据订单编号查找整条订单信息
	 */
	@Override
	public List<OrdersLwq> queryOrdersByid(String id) {
		// TODO Auto-generated method stub
		String sql="select orders.id,users.account,businesses.busiName,orders.ordDate,orders.money,food.foodName,ordersdetail.num,orders.state from\r\n" + 
				"				orders,businesses,users,ordersdetail,food where orders.userId=users.id and orders.busId=businesses.id and ordersdetail.orderId=orders.id and ordersdetail.foodId=food.id and orders.id=?";
		return (List<OrdersLwq>) BaseDao.select(sql, OrdersLwq.class, id);
	}
	@Override
	public boolean updateOrdersByid(String id, int status) {
		// TODO Auto-generated method stub
		String sql="update orders set state=? where id=?";
		return BaseDao.execute(sql, status==1?0:1,id)>0;
	}
	@Override
	public boolean updatePayStatusByid(String id, int status) {
		// TODO Auto-generated method stub
		String sql="update orders set payState=? where id=?";
		return BaseDao.execute(sql, status,id)>0;
	}
	@Override
	public boolean addOrders(Orders o,Connection conn) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO orders (id, userId, busId, ordDate, money, state) VALUES (?, ?,?,?,?, 0)";
		return BaseDao.execute(sql, conn, o.getId(),o.getUserId(),o.getBusId(),o.getOrdDate(),o.getMoney())>0;
	}

	@Override
	public Orders getorders(String orderId) {
		// TODO Auto-generated method stub
		String sql="select * from orders where id=?";
		List<Orders> list=(List<Orders>)BaseDao.select(sql, Orders.class, orderId);
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<OrdersLwq> queryOrdersPerson(String account) {
		// TODO Auto-generated method stub
String sql="select  orders.id,users.account,businesses.busiName,orders.ordDate,orders.money,food.foodName,ordersdetail.num,orders.state,orders.payState from orders,businesses,users,ordersdetail,food,boss \r\n" + 
		"where orders.userId=users.id and orders.busId=businesses.id and ordersdetail.orderId=orders.id and ordersdetail.foodId=food.id and boss.id=businesses.bossId \r\n" + 
		"and users.account=? order by orders.ordDate desc";
		 return (List<OrdersLwq>) BaseDao.select(sql, OrdersLwq.class, account);
	}

	@Override
	public List<OrdersInfo> getOrdersInfo(String account) {
		// TODO Auto-generated method stub
		String sql="select o.id as id,o.ordDate as orderDate,o.state as state,o.payState as payState,o.money as money,u.account as account,b.busiName as busiName  from orders o,users u,businesses b,boss bo where o.userId=u.id and o.busId=b.id and b.bossId=bo.id and bo.account =?";
		return (List<OrdersInfo>) BaseDao.select(sql, OrdersInfo.class, account);
	}

	
	

}
