package com.etc.services;

import com.etc.entity.Users;

public interface ResetPwdService {

	Users queryUsers(String account);
	
	boolean updateUsers(Users u);
}
