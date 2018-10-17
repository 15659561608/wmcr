package com.etc.dao.impl;

import java.util.List;

import com.etc.dao.TypeDaocgl;
import com.etc.entity.Type;
import com.etc.entity.Typecgl;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class TypeDaocglImpl implements TypeDaocgl {

	@Override
	public PageData<Typecgl> queryType(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql = "select t2.id as id,t2.title as title,t1.title as fuTitle from type t1,type t2 where t1.id=t2.pId and t2.title like ? ";
		PageData<Typecgl> type = BaseDao.getPage(sql, page, pageSize, Typecgl.class, "%" + keywords + "%");
		return type;
	}

	@Override
	public List<Type> getType() {
		// TODO Auto-generated method stub

		String sql = "select * from type";
		List<Type> list = (List<Type>) BaseDao.select(sql, Type.class);
		return list;
	}

	@Override
	public boolean addType(String title, int pId) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO type (title, pId) VALUES (?, ?)";

		return BaseDao.execute(sql, title, pId) > 0;
	}

	@Override
	public boolean updateType(int id, int pId) {
		// TODO Auto-generated method stub
		String sql = "UPDATE type SET pId=? WHERE (id=?)";
		
		return BaseDao.execute(sql, pId,id)>0;
	}

}
