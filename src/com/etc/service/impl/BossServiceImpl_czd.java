package com.etc.service.impl;

import java.util.List;

import com.etc.dao.BossDao_czd;
import com.etc.dao.impl.BossDaoImpl_czd;
import com.etc.entity.Boss;
import com.etc.services.BossService_czd;

public class BossServiceImpl_czd implements BossService_czd {
	BossDao_czd bdc = new BossDaoImpl_czd();
	@Override
	public boolean registerBoss(Boss b) {
		// TODO Auto-generated method stub
		return bdc.registerBoss(b);
	}
	@Override
	public List<Boss> isExis(String account) {
		// TODO Auto-generated method stub

		return bdc.isExist(account);
	}

}
