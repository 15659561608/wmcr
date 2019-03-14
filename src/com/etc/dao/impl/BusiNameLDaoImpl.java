package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.BusiNameLDao;
import com.etc.entity.BusiNameL;
import com.etc.util.BaseDao;

public class BusiNameLDaoImpl implements BusiNameLDao {

	@Override
	public List<BusiNameL> queryBusiName(String account) {
		// TODO Auto-generated method stub
		String sql="select businesses.busiName from boss,businesses where boss.id=businesses.bossId and boss.account=?";
		return  (List<BusiNameL>) BaseDao.select(sql,BusiNameL.class , account);
	}

}
