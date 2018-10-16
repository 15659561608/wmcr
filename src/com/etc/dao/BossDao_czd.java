package com.etc.dao;

import java.util.List;

import com.etc.entity.Boss;

/**
*	@author: czd 
*	@date: 2018年10月16日09:29:49
*/
public interface BossDao_czd {
	boolean registerBoss(Boss b);
	List<Boss> isExist(String account);
}
