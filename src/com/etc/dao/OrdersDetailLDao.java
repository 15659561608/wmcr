package com.etc.dao;

import java.sql.Connection;
import java.util.List;

import com.alipay.api.domain.OrderDetailResult;
import com.etc.entity.Ordersdetail;
import com.etc.util.PageData;


/**
 * 
 * @author 谢凌鑫
 *2018年10月17日
 */

public interface OrdersDetailLDao {

	//用户下单
	public boolean addOrdersDetail(Ordersdetail o,Connection conn);
}
