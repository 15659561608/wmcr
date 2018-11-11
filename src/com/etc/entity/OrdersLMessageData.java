package com.etc.entity;

import java.util.List;

/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月16日 下午7:23:15
* 
*/

public class OrdersLMessageData {
	private List<OrdersInfo> data;
	public List<OrdersInfo> getData() {
		return data;
	}
	public void setData(List<OrdersInfo> list) {
		this.data = list;
	}
}
