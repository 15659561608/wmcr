package com.etc.services;

import com.etc.entity.Customers;
import com.etc.util.PageData;

public interface CustomersService_czd {
	PageData<Customers> getCustomersByPage(int page,int pageSize,String keywords);
	PageData<Customers> getCustomersByOrder(int page,int pageSize,String keywords,int flag);
	boolean updateCustomersState(int userId,int state);
}
