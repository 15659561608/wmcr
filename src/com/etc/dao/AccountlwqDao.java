package com.etc.dao;



/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月15日 上午9:31:20
* 
*/

public interface AccountlwqDao {
	//统计用户以及未审核的用户数量
   Long  sumUsers();
   Long sumUsersStatus();
   //统计商家以及未被审核的商家数量
   Long sumBoss();
   Long sumBossStatus();
   
   Long sumBusi();
   Long sumBusiStatus();
   
   Long sumOrders();
   Long sumComments();
}
