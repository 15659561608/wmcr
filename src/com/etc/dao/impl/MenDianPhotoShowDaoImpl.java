package com.etc.dao.impl;

import com.etc.dao.MenDianPhotoShowDao;
import com.etc.entity.MenDianPhotoShow;
import com.etc.util.BaseDao;
import com.etc.util.PageData;

public class MenDianPhotoShowDaoImpl implements MenDianPhotoShowDao {
    //查询门店相册
	@Override
	public PageData<MenDianPhotoShow> selectMenDianTu(int page, int pageSize, int id,String keywords) {
		// TODO Auto-generated method stub
		String sql = "SELECT photos.id,businesses.busiName,photos.src,businesses.des FROM photos,businesses WHERE photos.busId = businesses.id and businesses.bossId = ? and businesses.busiName LIKE ?";
		PageData<MenDianPhotoShow>  pdd = BaseDao.getPage(sql, page, pageSize, MenDianPhotoShow.class, id,"%"+keywords+"%");
		
		return pdd;
				
		
	}

}
