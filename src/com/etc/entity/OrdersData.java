package com.etc.entity;

import java.util.Date;

public class OrdersData {



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	@Override
	public String toString() {
		return "OrdersData [id=" + id + ", account=" + account + ", busiName=" + busiName + ", price=" + price
				+ ", ordDate=" + ordDate + ", money=" + money + ", foodName=" + foodName + ", num=" + num + ", state="
				+ state + "]";
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

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
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

	private String id;

    private String account;

    private String busiName;
    private double price;
    private String ordDate;

    private Double money;
    
    private String foodName;
    
    private int num;

    private Integer state;
    

   
}