package com.etc.service.impl;

import com.etc.dao.BossDao;
import com.etc.dao.impl.BossDaoImpl;
import com.etc.entity.Boss;
import com.etc.services.BossService;

public class BossServiceImpl implements BossService {

	 private BossDao bd=new BossDaoImpl();
	@Override
	public Boss getBoss(int bossId) {
		// TODO Auto-generated method stub
		return bd.getBoss(bossId);
	}

	@Override
	public boolean updatePwd(String newPwd, int bossId) {
		// TODO Auto-generated method stub
		return bd.updatePwd(newPwd, bossId);
	}

}
