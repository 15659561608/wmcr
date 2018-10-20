package com.etc.dao;

import com.etc.entity.MenDianPhotoShow;
import com.etc.util.PageData;

public interface MenDianPhotoShowDao {
    //分页加关键字查询
	PageData<MenDianPhotoShow> selectMenDianTu(int page,int pageSize,int id,String keywords);
}
