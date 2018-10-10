package com.etc.dao;

import java.util.List;

import com.etc.entity.OrdersLwq;
import com.etc.service.impl.OrdersLServiceImpl;

/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月10日 下午2:41:27
* 
*/

public class Tests {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
      OrdersLServiceImpl osi=new OrdersLServiceImpl();
      List<OrdersLwq>  list=osi.getOrders();
      if(list.isEmpty()) {
    	  System.out.println("数据为空");
      }else {
    list.forEach(System.out::println);
	}
	}

}
