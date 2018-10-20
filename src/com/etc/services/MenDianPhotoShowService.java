package com.etc.services;

import com.etc.entity.MenDianPhotoShow;
import com.etc.util.PageData;

public interface MenDianPhotoShowService {

	//分布查询店铺相册信息
	PageData<MenDianPhotoShow> qureyMenDianTu(int page,int pageSize,int id,String keywords);
}
