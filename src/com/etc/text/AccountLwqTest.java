package com.etc.text;

import java.util.List;

import com.etc.dao.impl.AccountlwqImpl;
import com.etc.entity.BusiNameL;
import com.etc.entity.OrdersLwq;
import com.etc.service.impl.AccountlwqServiceImpl;
import com.etc.service.impl.BusiNameLServiceImpl;
import com.etc.service.impl.OrdersLServiceImpl;

/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月15日 上午9:41:02
* 
*/

public class AccountLwqTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*AccountlwqServiceImpl ai=new AccountlwqServiceImpl();
    Long a=ai.getSumUsers();
    System.out.println("用户总数"+a);
    Long a1=ai.getSumUsersStatus();
    System.out.println("为审核的用户数"+a1);
    
    Long a2=ai.getSumBoss();
    System.out.println("商家数"+a2);
    Long a3=ai.getSumBossStatus();
    System.out.println("未审核的商家"+a3);
    
    Long a4=ai.getSumBusi();
    System.out.println("门店数"+a4);
    Long a5=ai.getSumBusiStatus();
    System.out.println("未审核的门店数"+a5);
    
    Long a6=ai.getSumOrders();
    System.out.println("订单总数"+a6); 
    
    Long a7=ai.getSumComments();
    System.out.println("评论总数"+a7);*/
		/*BusiNameLServiceImpl bnsi=new BusiNameLServiceImpl();
		List<BusiNameL> b=bnsi.getBusiName("15659561608");
		System.out.println(b);*/
	/*	OrdersLServiceImpl osi=new OrdersLServiceImpl();
		List<OrdersLwq> list=osi.getOrdersBusi("15659561608","小牛小羊");
		System.out.println(list);*/
		
		OrdersLServiceImpl osi=new OrdersLServiceImpl();
	boolean list=osi.updateOrdersByid(1997, 1);
		System.out.println(list);
	}

}
