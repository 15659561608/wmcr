package com.etc.service.impl;

import com.etc.dao.ResetPwdDao;
import com.etc.dao.impl.ResetPwdDaoImpl;
import com.etc.entity.Users;
import com.etc.services.ResetPwdService;

public class ResetPwdServiceImpl implements ResetPwdService {
	ResetPwdDao rp = new ResetPwdDaoImpl();

	@Override
	public Users queryUsers(String account) {
		// TODO Auto-generated method stub
		return rp.queryUsers(account);
	}

	@Override
	public boolean updateUsers(Users u) {
		// TODO Auto-generated method stub
		return rp.updateUsers(u);
	}

}
