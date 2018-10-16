package com.etc.services;

import java.util.List;

import com.etc.entity.Boss;

	public interface BossService_czd {
	public boolean registerBoss(Boss b);
	public List<Boss> isExis(String account);
}
