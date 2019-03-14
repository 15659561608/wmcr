package com.etc.dao;

import com.etc.entity.Boss;

public interface BossDao {
	/**
	 * 获取商户账号信息
	 * @return
	 */
	public Boss getBoss(int bossId);
	/**
	 * 获取商户账号信息
	 * @return
	 */
	public Boss getBoss(String account);
	/**
	 * 获取商户
	 * @param account
	 * @param pwd
	 * @return
	 */
	public Boss getBoss(String account,String pwd);
	
	/**
	 * 修改密码
	 * @param newPwd
	 * @param bossId
	 * @return
	 */
	public boolean updatePwd(String newPwd,int bossId);
}
