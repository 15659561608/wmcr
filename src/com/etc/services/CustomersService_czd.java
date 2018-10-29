package com.etc.services;

import java.util.List;

import com.etc.entity.Customers;
import com.etc.util.PageData;

public interface CustomersService_czd {
	PageData<Customers> getCustomersByPage(int page,int pageSize,String keywords);
	PageData<Customers> getCustomersByOrder(int page,int pageSize,String keywords,int flag);
	boolean updateCustomersState(int userId,int state);
	/**
	 * 根据用户编号查询用户详情列表
	 * @param userId
	 * @return
	 */
	public List<Customers> queryCustomersByUserId(int userId); 
	/**
	 * 获取顾客详情
	 * @param id
	 * @return
	 */
	public Customers getCustomersById(int id);
	/**
	 * 添加用户详情表
	 * @param c
	 * @return
	 */
	public boolean addCustomers(Customers c);
}
