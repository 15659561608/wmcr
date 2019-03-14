package com.etc.dao;

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
