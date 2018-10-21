package com.etc.services;

import com.etc.entity.Photos;

public interface PhotosService {
	 //添加店铺图片
	 boolean  addPic(Photos p);
	 //删除店铺图片
	 boolean  delpic(int id);
}
