package com.etc.dao;

import com.etc.entity.Administor;

public interface AdminDao {

	Administor login(String account,String pwd);
}
