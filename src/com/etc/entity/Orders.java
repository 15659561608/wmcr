package com.etc.entity;

import java.util.Date;

public class Orders {
    public Orders() {
		super();
	}

	public Orders(Integer id, Integer userid, Integer busid, Date orddate, Double money, Integer state) {
		super();
		this.id = id;
		this.userid = userid;
		this.busid = busid;
		this.orddate = orddate;
		this.money = money;
		this.state = state;
	}

	@Override
	public String toString() {
		return "Orders [id=" + id + ", userid=" + userid + ", busid=" + busid + ", orddate=" + orddate + ", money="
				+ money + ", state=" + state + "]";
	}

	private Integer id;

    private Integer userid;

    private Integer busid;

    private Date orddate;

    private Double money;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getBusid() {
        return busid;
    }

    public void setBusid(Integer busid) {
        this.busid = busid;
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

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}