package com.etc.services;

import java.util.List;

import com.etc.entity.OrdersLwq;
import com.etc.util.PageData;

/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月10日 下午2:37:22
* 
*/

public interface OrdersLService {
	List<OrdersLwq> getOrders();
	PageData<OrdersLwq> getOrdersByPage(int page, int pageSize, String keywords);
	
	List<OrdersLwq> getOrdersBusi(String account,String busiName);
	
   List<OrdersLwq> getOrdersByid(int id);
   
   boolean updateOrdersByid(int id, int status);
}
