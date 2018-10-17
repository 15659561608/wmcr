package com.etc.dao;

import java.util.List;


import com.etc.entity.OrdersLwq;
import com.etc.util.PageData;


/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月10日 下午2:26:21
* 
*/

public interface OrdersLDao {
	List<OrdersLwq> queryOrders();
	PageData<OrdersLwq> queryOrdersByPage(int page, int pageSize, String keywords);
	
	//商家查看门店订单
	List<OrdersLwq> queryOrdersBusi(String account,String busiName);
	
	//根据订单编号修改订单状态
	List<OrdersLwq> queryOrdersByid(int id);
	
	public boolean updateOrdersByid(int id,int status);
}
