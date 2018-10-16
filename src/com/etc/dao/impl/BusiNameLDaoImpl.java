package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.BusiNameLDao;
import com.etc.entity.BusiNameL;
import com.etc.util.BaseDao;

/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月16日 下午2:45:14
* 
*/

public class BusiNameLDaoImpl implements BusiNameLDao {

	@Override
	public List<BusiNameL> queryBusiName(String account) {
		// TODO Auto-generated method stub
		String sql="select businesses.busiName from boss,businesses where boss.id=businesses.bossId and boss.account=?";
		return  (List<BusiNameL>) BaseDao.select(sql,BusiNameL.class , account);
	}

}
