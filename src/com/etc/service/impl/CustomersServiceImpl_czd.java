package com.etc.service.impl;

import java.util.List;

import com.etc.dao.CustomersDao_czd;
import com.etc.dao.impl.CustomersDaoImpl_czd;
import com.etc.entity.Customers;
import com.etc.services.CustomersService_czd;
import com.etc.util.PageData;


public class CustomersServiceImpl_czd implements CustomersService_czd {
	private CustomersDao_czd cdc = new CustomersDaoImpl_czd();
	@Override
	public PageData<Customers> getCustomersByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return cdc.queryCustomersByPage(page, pageSize, keywords);
	}
	@Override
	public boolean updateCustomersState(int userId, int state) {
		// TODO Auto-generated method stub
		return  cdc.updateCustomersState(userId, state);
	}
	@Override
	public PageData<Customers> getCustomersByOrder(int page, int pageSize, String keywords, int flag) {
		// TODO Auto-generated method stub
		return cdc.queryCustomersByOder(page, pageSize, keywords, flag);
	}
	@Override
	public List<Customers> queryCustomersByUserId(int userId) {
		// TODO Auto-generated method stub
		return cdc.queryCustomersByUserId(userId);
	}
	@Override
	public boolean addCustomers(Customers c) {
		// TODO Auto-generated method stub
		return cdc.addCustomers(c);
	}
	@Override
	public Customers getCustomersById(int id) {
		// TODO Auto-generated method stub
		return cdc.getCustomersById(id);
	}
	@Override
	public boolean updateCustomers(Customers c) {
		// TODO Auto-generated method stub
		return cdc.updateCustomers(c);
	}

}
