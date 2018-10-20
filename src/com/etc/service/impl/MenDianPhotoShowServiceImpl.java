package com.etc.service.impl;

import com.etc.dao.MenDianPhotoShowDao;
import com.etc.dao.impl.MenDianPhotoShowDaoImpl;
import com.etc.entity.MenDianPhotoShow;
import com.etc.services.MenDianPhotoShowService;
import com.etc.util.PageData;

public class MenDianPhotoShowServiceImpl implements MenDianPhotoShowService {
    private MenDianPhotoShowDao mdps = new MenDianPhotoShowDaoImpl();
	//分页查询门店相册信息
	@Override
	public PageData<MenDianPhotoShow> qureyMenDianTu(int page, int pageSize, int id, String keywords) {
		// TODO Auto-generated method stub
		return mdps.selectMenDianTu(page, pageSize, id, keywords);
	}

}
