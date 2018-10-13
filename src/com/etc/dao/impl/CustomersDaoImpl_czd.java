package com.etc.dao.impl;

import com.etc.dao.CustomersDao_czd;
import com.etc.entity.Customers;
import com.etc.util.BaseDao;
import com.etc.util.PageData;


public class CustomersDaoImpl_czd implements CustomersDao_czd {
//模糊分页查询
	@Override
	public PageData<Customers> queryCustomersByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql = "SELECT users.id,users.account,customers.custName ,customers.phone,customers.regDate,customers.address,customers.lat,customers.lon,users.state FROM users INNER JOIN customers ON customers.userId = users.id WHERE CONCAT(users.account,customers.phone) LIKE ? order by state desc";
		PageData<Customers> pd = BaseDao.getPage(sql, page, pageSize,Customers.class,"%"+keywords+"%");
		return pd ; 
	
	}
//审核状态
	@Override 
	public boolean updateCustomersState(int userId, int state) {
		// TODO Auto-generated method stub
		if(state==0) {
			state=1;
		}else {
			state=0;
		}
		String sql = "UPDATE users SET state = ? WHERE id = ?";
		return  BaseDao.execute(sql,state,userId)>0;
	}
//排序
	@Override
	public PageData<Customers> queryCustomersByOder(int page, int pageSize, String keywords, int flag) {
		// TODO Auto-generated method stub
		
		String	sql="SELECT users.id,users.account,customers.custName,customers.phone,customers.regDate,customers.address,customers.lat,customers.lon,users.state FROM users INNER JOIN customers ON customers.userId = users.id WHERE CONCAT(users.account,customers.phone) LIKE ? order by state";
		if(flag==1)
				sql = "SELECT users.id,users.account,customers.custName,customers.phone,customers.regDate,customers.address,customers.lat,customers.lon,users.state FROM users INNER JOIN customers ON customers.userId = users.id WHERE CONCAT(users.account,customers.phone) LIKE ? order by state desc";		
		PageData<Customers> pd =BaseDao.getPage(sql, page, pageSize, Customers.class,"%"+keywords+"%");
		
		return pd;
	}

	
	
	

}
