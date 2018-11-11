package com.etc.entity;

public class OrdersInfo {
	private String id;
	@Override
	public String toString() {
		return "OrdersInfo [id=" + id + ", orderDate=" + orderDate + ", state=" + state + ", payState=" + payState
				+ ", money=" + money + ", account=" + account + ", busiName=" + busiName + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	private String orderDate;
	private int state;
	private int payState;
	private double money;
	private String account;
	private String busiName;
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getPayState() {
		return payState;
	}
	public void setPayState(int payState) {
		this.payState = payState;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getBusiName() {
		return busiName;
	}
	public void setBusiName(String busiName) {
		this.busiName = busiName;
	}
}
