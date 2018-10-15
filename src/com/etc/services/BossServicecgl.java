package com.etc.services;

import com.etc.entity.Boss;
import com.etc.util.PageData;

public interface BossServicecgl {

	PageData<Boss> queryBoss(int page, int pageSize, String keywords);
	
	boolean updateBoss(int id,String state);
}
