package com.etc.service.impl;

import com.etc.dao.BossDaocgl;
import com.etc.dao.impl.BossDaocglImpl;
import com.etc.entity.Boss;
import com.etc.services.BossServicecgl;
import com.etc.util.PageData;

public class BossServicecglImpl implements BossServicecgl {
	BossDaocgl bd = new BossDaocglImpl();

	@Override
	public PageData<Boss> queryBoss(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return bd.queryBoss(page, pageSize, keywords);
	}

	@Override
	public boolean updateBoss(int id, String state) {
		// TODO Auto-generated method stub
		return bd.updateBoss(id, state);
	}

}
