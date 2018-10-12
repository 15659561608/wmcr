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
	
	/**
	 * 判断登录
	 * @param account
	 * @param pwd
	 * @return
	 */
	public Boss checkLogin(String account,String pwd);
	
	/**
	 * 验证用户名
	 * @param account
	 * @return
	 */
	public Boss checkAccount(String account);
}
