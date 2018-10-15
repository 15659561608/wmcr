package com.etc.services;

import java.util.List;

import com.etc.entity.Users;

public interface UsersService {
	 //用户登录
	 public  List<Users> getUsersLogin(String account,String pwd);
	 //用户注册（添加）
	 boolean getUsersRegister(Users u);
}
