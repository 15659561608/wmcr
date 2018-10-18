package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.BossDao;
import com.etc.entity.Boss;
import com.etc.util.BaseDao;

public class BossDaoImpl implements BossDao {

	@Override
	public Boss getBoss(int bossId) {
		// TODO Auto-generated method stub
		String sql="select * from boss where id=?";
		List<Boss> list=(List<Boss>)BaseDao.select(sql,Boss.class,bossId);
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public boolean updatePwd(String newPwd, int bossId) {
		// TODO Auto-generated method stub
		String sql="update boss set pwd=? where id=?";
		return BaseDao.execute(sql,newPwd,bossId)>0;
	}

	@Override
	public Boss getBoss(String account, String pwd) {
		// TODO Auto-generated method stub
		String sql="select * from boss where account=? and pwd=?";
		List<Boss> list=(List<Boss>)BaseDao.select(sql, Boss.class, account,pwd);
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public Boss getBoss(String account) {
		// TODO Auto-generated method stub
		String sql="select * from boss where account=?";
		List<Boss> list=(List<Boss>)BaseDao.select(sql,Boss.class,account);
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}
 
}
