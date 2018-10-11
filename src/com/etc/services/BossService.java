package com.etc.services;

import com.etc.entity.Boss;

public interface BossService {
	/**
	 * 获取商户账号信息
	 * @return
	 */
	public Boss getBoss(int bossId);
	
	/**
	 * 修改密码
	 * @param newPwd
	 * @param bossId
	 * @return
	 */
	public boolean updatePwd(String newPwd,int bossId);
}
