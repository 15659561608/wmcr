package com.etc.dao;

import com.etc.entity.Users;

public interface ResetPwdDao {

	Users queryUsers(String account);
	
	boolean updateUsers(Users u);
}
