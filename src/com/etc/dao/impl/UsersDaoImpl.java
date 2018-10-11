package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.UsersDao;
import com.etc.entity.Users;
import com.etc.util.BaseDao;

public class UsersDaoImpl implements UsersDao {

	@Override
	public List<Users> usersLogin(String account, String pwd) {
		// TODO Auto-generated method stub
		List<Users> list = (List<Users>) BaseDao.select("SELECT * FROM users WHERE account = ? AND pwd =?", Users.class,account,pwd);
		return list;
	}

}
