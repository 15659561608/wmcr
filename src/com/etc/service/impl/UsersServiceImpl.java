package com.etc.service.impl;

import java.util.List;

import com.etc.dao.UsersDao;
import com.etc.dao.impl.UsersDaoImpl;
import com.etc.entity.Users;
import com.etc.services.UsersService;

public class UsersServiceImpl implements UsersService {
	private UsersDao ud = new UsersDaoImpl();

	@Override
	public List<Users> getUsersLogin(String account, String pwd) {
		// TODO Auto-generated method stub
		return ud.usersLogin(account, pwd);
	}

}
