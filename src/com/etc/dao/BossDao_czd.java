package com.etc.dao;

import java.util.List;

import com.etc.entity.Boss;

public interface BossDao_czd {
	boolean registerBoss(Boss b);
	List<Boss> isExist(String account);
}
