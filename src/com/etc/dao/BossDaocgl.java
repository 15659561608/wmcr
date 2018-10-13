package com.etc.dao;

import com.etc.entity.Boss;
import com.etc.util.PageData;

public interface BossDaocgl {

	PageData<Boss> queryBoss(int page,int pageSize,String keywords);
}
