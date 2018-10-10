package com.etc.dao.impl;

import com.etc.dao.BossDao;
import com.etc.entity.Boss;

public class BossDaoImpl implements BossDao {

	@Override
	public Boss getBoss() {
		// TODO Auto-generated method stub
		String sql="select * from boss";
		return null;
	}

	@Override
	public boolean updatePwd(String newPwd, int bossId) {
		// TODO Auto-generated method stub
		return false;
	}

}
