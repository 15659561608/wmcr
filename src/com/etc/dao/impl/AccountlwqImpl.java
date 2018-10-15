package com.etc.dao.impl;


import com.etc.dao.AccountlwqDao;

import com.etc.util.BaseDao;


/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月15日 上午9:36:09
* 
*/

public class AccountlwqImpl implements AccountlwqDao {

	@Override
	public Long sumUsers() {
		// TODO Auto-generated method stub
		String sql="SELECT count(*) as sumUsers from users";
		return (Long) BaseDao.getFirst(sql);
	}

	@Override
	public Long sumUsersStatus() {
		// TODO Auto-generated method stub
		String sql="select count(*) as sumUsersStatus from users where state=0";
		return (Long) BaseDao.getFirst(sql);
	}

	@Override
	public Long sumBoss() {
		// TODO Auto-generated method stub
		String sql="SELECT COUNT(*) as sumBoss from boss";
		return (Long) BaseDao.getFirst(sql);
	}

	@Override
	public Long sumBossStatus() {
		// TODO Auto-generated method stub
		String sql="SELECT COUNT(*) as sumBossStatus from boss where state=0";
		return (Long) BaseDao.getFirst(sql);
	}

	@Override
	public Long sumBusi() {
		// TODO Auto-generated method stub
		String sql="SELECT COUNT(*) as sumBusi from businesses";
		return (Long) BaseDao.getFirst(sql);
	}

	@Override
	public Long sumBusiStatus() {
		// TODO Auto-generated method stub
		String sql="SELECT COUNT(*) as sumBusiStatus from businesses where state=0";
		return (Long) BaseDao.getFirst(sql);
	}

	@Override
	public Long sumOrders() {
		// TODO Auto-generated method stub
		String sql="select COUNT(*) as sumOrders from orders ";
		return (Long) BaseDao.getFirst(sql);
	}

	@Override
	public Long sumComments() {
		// TODO Auto-generated method stub
		String sql="SELECT count(*) as sumComments from comment";
		return (Long) BaseDao.getFirst(sql);
	}

}
