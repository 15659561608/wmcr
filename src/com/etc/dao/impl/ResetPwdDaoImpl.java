package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.ResetPwdDao;
import com.etc.entity.Users;
import com.etc.util.BaseDao;

public class ResetPwdDaoImpl implements ResetPwdDao {

	@Override
	public Users queryUsers(String account) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM users WHERE account=?";
		List<Users> u=(List<Users>)BaseDao.select(sql, Users.class, account);
		if (u.size()>0) {
			return u.get(0);
		} else {
			return null;
		}
		
	}

	@Override
	public boolean updateUsers(Users u) {
		// TODO Auto-generated method stub
		String sql="UPDATE users SET pwd=? WHERE account=?";
		return BaseDao.execute(sql,u.getPwd(),u.getAccount())>0;
	}

}
