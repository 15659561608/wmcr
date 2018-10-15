package com.etc.text;

import java.util.List;

import com.etc.entity.Comment_czd;
import com.etc.entity.Customers;
import com.etc.service.impl.CommentServiceImpl_czd;
import com.etc.services.CommentService_czd;
import com.etc.services.CustomersService_czd;
import com.etc.util.BaseDao;
import com.etc.util.PageData;


public class comment_select_text {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*String sql = "SELECT users.id,users.account,customers.custName as custname,customers.phone,customers.regDate as regdate,customers.address,customers.lat,customers.lon,customers.state FROM users INNER JOIN customers ON customers.userId = users.id";
		List<Customers> list = (List<Customers>) BaseDao.select(sql, Customers.class);
		list.forEach(System.out::println);
	*/

		CommentService_czd csc = new CommentServiceImpl_czd();

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
	/*	
	int page = 1;
		int pageSize = 15;	
		String keywords ="";

		  PageData<Comment_czd> pd = (PageData<Comment_czd>)csc.getCommentByPage(page, pageSize, keywords);
		  	System.out.println(pd);
		*/
		int comId = 2;
	 System.out.println(csc.deleteCommentById(comId));
	}		
	}

//where  users.account LIKE '%W%' OR  customers.phone LIKE '%156%'