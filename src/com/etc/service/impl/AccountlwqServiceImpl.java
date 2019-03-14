package com.etc.service.impl;


import com.etc.dao.impl.AccountlwqImpl;
import com.etc.services.AccountlwqService;

public class AccountlwqServiceImpl implements AccountlwqService {
	AccountlwqImpl ai=new AccountlwqImpl();
	@Override
	public Long getSumUsers() {
		// TODO Auto-generated method stub
		return ai.sumUsers();
	}
	@Override
	public Long getSumUsersStatus() {
		// TODO Auto-generated method stub
		return ai.sumUsersStatus();
	}
	@Override
	public Long getSumBoss() {
		// TODO Auto-generated method stub
		return ai.sumBoss();
	}
	@Override
	public Long getSumBossStatus() {
		// TODO Auto-generated method stub
		return ai.sumBossStatus();
	}
	@Override
	public Long getSumBusi() {
		// TODO Auto-generated method stub
		return ai.sumBusi();
	}
	@Override
	public Long getSumBusiStatus() {
		// TODO Auto-generated method stub
		return ai.sumBusiStatus();
	}
	@Override
	public Long getSumOrders() {
		// TODO Auto-generated method stub
		return ai.sumOrders();
	}
	@Override
	public Long getSumComments() {
		// TODO Auto-generated method stub
		return ai.sumComments();
	}

}
