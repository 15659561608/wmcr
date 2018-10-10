package com.etc.entity;

public class Ordersdetail {
    private Integer id;

    private Integer orderid;

    private Integer foodid;
    private Integer num;

    
    @Override
	public String toString() {
		return "Ordersdetail [id=" + id + ", orderid=" + orderid + ", foodid=" + foodid + ", num=" + num + "]";
	}

	public Ordersdetail() {
		super();
	}

	public Ordersdetail(Integer id, Integer orderid, Integer foodid, Integer num) {
		super();
		this.id = id;
		this.orderid = orderid;
		this.foodid = foodid;
		this.num = num;
	}

	

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getFoodid() {
        return foodid;
    }

    public void setFoodid(Integer foodid) {
        this.foodid = foodid;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}