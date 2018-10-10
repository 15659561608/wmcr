package com.etc.entity;

import java.util.Date;

public class OrdersLwq {

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Integer getBusiName() {
		return busiName;
	}

	public void setBusiName(Integer busiName) {
		this.busiName = busiName;
	}

	public Date getOrddate() {
		return orddate;
	}

	public void setOrddate(Date orddate) {
		this.orddate = orddate;
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

	public OrdersLwq(Integer id, String account, Integer busiName, Date orddate, Double money, String foodName, int num,
			Integer state) {
		super();
		this.id = id;
		this.account = account;
		this.busiName = busiName;
		this.orddate = orddate;
		this.money = money;
		this.foodName = foodName;
		this.num = num;
		this.state = state;
	}

	@Override
	public String toString() {
		return "OrdersLwq [id=" + id + ", account=" + account + ", busiName=" + busiName + ", orddate=" + orddate
				+ ", money=" + money + ", foodName=" + foodName + ", num=" + num + ", state=" + state + "]";
	}

	private Integer id;

    private String account;

    private Integer busiName;

    private Date orddate;

    private Double money;
    
    private String foodName;
    
    private int num;

    private Integer state;
    

   
}