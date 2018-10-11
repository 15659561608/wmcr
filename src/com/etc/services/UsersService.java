package com.etc.services;

import java.util.List;

import com.etc.entity.Users;

public interface UsersService {
	 public  List<Users> getUsersLogin(String account,String pwd);
}
