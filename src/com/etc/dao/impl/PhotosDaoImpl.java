package com.etc.dao.impl;

import com.etc.dao.PhotosDao;
import com.etc.entity.Photos;
import com.etc.util.BaseDao;

public class PhotosDaoImpl implements PhotosDao {

	@Override
	public boolean addPhoto(Photos p) {
		// TODO Auto-generated method stub
		return BaseDao.execute("INSERT into photos VALUES(null,?,?)", p.getSrc(),p.getBusId())>0;
		
	}
	
	@Override
	public boolean delPhoto(int id) {
		// TODO Auto-generated method stub
		return BaseDao.execute("DELETE FROM  photos  where photos.id = ?",id)>0;
	}

}
