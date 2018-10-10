package com.etc.dao;
/**
 * 
 * @author 谢凌鑫
 *2018年10月10日
 */

import com.etc.entity.Boss;

public interface BossDao {
	/**
	 * 获取商户账号信息
	 * @return
	 */
	public Boss getBoss();
	
	/**
	 * 修改密码
	 * @param newPwd
	 * @param bossId
	 * @return
	 */
	public boolean updatePwd(String newPwd,int bossId);
}
