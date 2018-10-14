package com.etc.dao.impl;

import com.etc.dao.BossDaocgl;
import com.etc.entity.Boss;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class BossDaocglImpl implements BossDaocgl {

	@Override
	public PageData<Boss> queryBoss(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql = "select * from boss where account like ?";
		PageData<Boss> boss = BaseDao.getPage(sql, page, pageSize, Boss.class, "%" + keywords + "%");

		return boss;
	}

	@Override
	public boolean updateBoss(int id, String state) {
		// TODO Auto-generated method stub
		String sql="update boss SET state=? WHERE id=?";

		return BaseDao.execute(sql, state,id)>0;
	}

}
