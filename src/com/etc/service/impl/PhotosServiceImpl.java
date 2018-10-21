package com.etc.service.impl;

import com.etc.dao.PhotosDao;
import com.etc.dao.impl.PhotosDaoImpl;
import com.etc.entity.Photos;
import com.etc.services.PhotosService;

public class PhotosServiceImpl implements PhotosService {
	private PhotosDao pdd = new PhotosDaoImpl();

	@Override
	public boolean addPic(Photos p) {
		// TODO Auto-generated method stub
		return pdd.addPhoto(p);
	}

	@Override
	public boolean delpic(int id) {
		// TODO Auto-generated method stub
		return pdd.delPhoto(id);
	}
}
