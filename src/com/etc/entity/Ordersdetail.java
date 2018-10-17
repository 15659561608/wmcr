package com.etc.entity;

public class Ordersdetail {
    private Integer id;

    private String orderId;

    private Integer foodId;

    private Integer num;

    public Integer getId() {
        return id;
    }
public Ordersdetail() {
	// TODO Auto-generated constructor stub
}
    public Ordersdetail(String orderId, Integer foodId, Integer num) {
	super();
	this.orderId = orderId;
	this.foodId = foodId;
	this.num = num;
}
	public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Integer getFoodId() {
        return foodId;
    }

    public void setFoodId(Integer foodId) {
        this.foodId = foodId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}