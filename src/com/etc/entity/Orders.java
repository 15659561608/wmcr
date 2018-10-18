package com.etc.entity;

import java.util.Date;

public class Orders {
    private String id;

    private Integer userId;

    private Integer busId;

    private String ordDate;

    private Double money;

    private Integer state;

    public String getId() {
        return id;
    }
public Orders() {
	// TODO Auto-generated constructor stub
}
    public Orders(String id, Integer userId, Integer busId, String ordDate, Double money) {
		super();
		this.id = id;
		this.userId = userId;
		this.busId = busId;
		this.ordDate = ordDate;
		this.money = money;
	}

	public void setId(String id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getBusId() {
        return busId;
    }

    public void setBusId(Integer busId) {
        this.busId = busId;
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

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}