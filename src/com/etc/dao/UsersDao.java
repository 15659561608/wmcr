package com.etc.dao;

import java.util.List;

import com.etc.entity.Users;

public interface UsersDao {
   //根据用户名（可为手机号码），和密码来查询用户(用户登陆比对)
   public  List<Users> usersLogin(String account,String pwd);
   //注册用户
   boolean usersRegister(Users u);
   //根据用户的密码来查询用户（用与AJAX验证）
   public  List<Users> usersLoginByPwd(String pwd);
   
}
