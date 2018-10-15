package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.UsersDao;
import com.etc.entity.Users;
import com.etc.util.BaseDao;

public class UsersDaoImpl implements UsersDao {
	// 用户登陆
	@Override
	public List<Users> usersLogin(String account, String pwd) {
		// TODO Auto-generated method stub
		List<Users> list = (List<Users>) BaseDao.select("SELECT * FROM users WHERE account = ? AND pwd =?", Users.class,
				account, pwd);
		return list;
	}

	// 用户注册
	@Override
	public boolean usersRegister(Users u) {
		// TODO Auto-generated method stub

		return BaseDao.execute("INSERT INTO users(account, pwd, regDate) VALUES (?, ?, NOW())", u.getAccount(),
				u.getPwd()) > 0;
	}
    //aJAX验证密码
	@Override
	public List<Users> usersLoginByPwd(String pwd) {
		// TODO Auto-generated method stub
		List<Users> list = (List<Users>) BaseDao.select("SELECT * FROM users WHERE  pwd =?", Users.class, pwd);
		return list;
	}
}
