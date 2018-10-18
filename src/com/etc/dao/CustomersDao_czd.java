package com.etc.dao;

import java.util.List;

import com.etc.entity.Customers;
import com.etc.util.PageData;


public interface CustomersDao_czd {
//2018年10月10日14:29:21 CZD    查询所有顾客详情及用户名
	PageData<Customers>queryCustomersByPage(int page,int pageSize,String keywords);
	boolean updateCustomersState(int userId ,int state);
	PageData<Customers>queryCustomersByOder(int page,int pageSize,String keywords,int flag);
	/**
	 * 根据用户编号查询用户详情列表
	 * @param userId
	 * @return
	 */
	public List<Customers> queryCustomersByUserId(int userId); 
	
	/**
	 * 添加用户详情表
	 * @param c
	 * @return
	 */
	public boolean addCustomers(Customers c);
}
