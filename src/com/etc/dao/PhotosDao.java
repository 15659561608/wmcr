package com.etc.dao;

import com.etc.entity.Photos;

public interface PhotosDao {
  //添加图片
   boolean  addPhoto(Photos p);
  //删除店铺图片
   boolean delPhoto(int id);
}
