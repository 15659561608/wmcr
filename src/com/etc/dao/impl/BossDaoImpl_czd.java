package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.BossDao_czd;
import com.etc.entity.Boss;
import com.etc.util.BaseDao;

public class BossDaoImpl_czd implements BossDao_czd {

	@Override
	public boolean registerBoss(Boss b) {
		// TODO Auto-generated method stub
			String sql = "INSERT INTO boss(account, pwd, regDate) VALUES (?, ?, NOW())";
			
		return BaseDao.execute(sql, b.getAccount(),b.getPwd())>0;
	}

	@Override
	public List<Boss> isExist(String account) {
		// TODO Auto-generated method stub
		String sql= "select * from boss where account = ?";
		
		return   (List<Boss>) BaseDao.select(sql, Boss.class, account);
	}

}
