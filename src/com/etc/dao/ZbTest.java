package com.etc.dao;

import java.util.List;

import com.etc.entity.Users;
import com.etc.service.impl.UsersServiceImpl;
import com.etc.services.UsersService;

public class ZbTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UsersService us = new UsersServiceImpl();
		List<Users> users = us.getUsersLogin("15863259456", "123456");
		System.out.println(users);
	}

}
