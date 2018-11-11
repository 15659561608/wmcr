package com.etc.entity;

import java.util.Date;

public class OrdersLwq {

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getOrdDate() {
		return ordDate;
	}

	public void setOrdDate(String ordDate) {
		this.ordDate = ordDate;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public OrdersLwq() {
		super();
	}

	public OrdersLwq(String id, String account, String busiName, String ordDate, Double money, String foodName, int num,
			Integer state) {
		super();
		this.id = id;
		this.account = account;
		this.busiName = busiName;
		this.ordDate = ordDate;
		this.money = money;
		this.foodName = foodName;
		this.num = num;
		this.state = state;
	}

	
	@Override
	public String toString() {
		return "OrdersLwq [id=" + id + ", account=" + account + ", busiName=" + busiName + ", ordDate=" + ordDate
				+ ", money=" + money + ", foodName=" + foodName + ", num=" + num + ", state=" + state + ", payState="
				+ payState + "]";
	}


	private String id;

    private String account;

    private String busiName;

    private String ordDate;

    private Double money;
    
    private String foodName;
    
    private int num;

    private Integer state;
    private int payState;
	public int getPayState() {
		return payState;
	}

	public void setPayState(int payState) {
		this.payState = payState;
	}

   
}