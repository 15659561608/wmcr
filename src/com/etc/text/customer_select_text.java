package com.etc.text;

import java.util.List;

import com.etc.entity.Customers;
import com.etc.service.impl.CustomersServiceImpl_czd;
import com.etc.services.CustomersService_czd;
import com.etc.util.BaseDao;
import com.etc.util.PageData;


public class customer_select_text {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*String sql = "SELECT users.id,users.account,customers.custName as custname,customers.phone,customers.regDate as regdate,customers.address,customers.lat,customers.lon,customers.state FROM users INNER JOIN customers ON customers.userId = users.id";
		List<Customers> list = (List<Customers>) BaseDao.select(sql, Customers.class);
		list.forEach(System.out::println);
	*/

		
		CustomersService_czd csc = new CustomersServiceImpl_czd();
	/*
		int page = 2;
		int pageSize = 20;	
		String keywords = "";
		  PageData<Customers> pd = (PageData<Customers>)csc.getCustomersByPage(page, pageSize, keywords);
		  for(Customers c : pd.getData()) {
		  	System.out.println(c);
		  }
		  */
	/*	int userId= 2;
		int state = 1;
	 System.out.println( csc.updateCustomersState(userId, state)    );*/
		
	int page = 1;
		int pageSize = 15;	
		String keywords ="";
		int flag = 0;
		  PageData<Customers> pd = (PageData<Customers>)csc.getCustomersByOrder(page, pageSize, keywords, flag);
		  for(Customers c : pd.getData()) {
		  	System.out.println(c);
		  }	
		
		
		
	}
}
//where  users.account LIKE '%W%' OR  customers.phone LIKE '%156%'