package com.etc.dao;

import java.util.List;

import com.etc.entity.Customers;
import com.etc.util.PageData;


public interface CustomersDao_czd {
//2018年10月10日14:29:21 CZD    查询所有顾客详情及用户名
	PageData<Customers>queryCustomersByPage(int page,int pageSize,String keywords);
	boolean updateCustomersState(int userId ,int state);
	
	/**
	 * 获取顾客详情
	 * @param id
	 * @return
	 */
	public Customers getCustomersById(int id);
	
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
	
	/**
	 * 修改用户详细表
	 * @param c
	 * @return
	 */
	public boolean updateCustomers(Customers c);
	
	/**
	 * 删除用户详情表
	 * @param userId
	 * @return
	 */
	public boolean delCustomers(int userId);
}
