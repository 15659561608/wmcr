package com.etc.entity;

import java.util.Date;

public class Customers {
    public Customers() {
		super();
	}

	public Customers(String custName, String phone, String regDate, String address, Integer userId, Double lat,
			Double lon) {
		super();
		this.custName = custName;
		this.phone = phone;
		this.regDate = regDate;
		this.address = address;
		this.userId = userId;
		this.lat = lat;
		this.lon = lon;
	}

	public Customers(Integer id, String custName, String phone, String regDate, String address, Integer userId,
			Double lat, Double lon, Integer state) {
		super();
		this.id = id;
		this.custName = custName;
		this.phone = phone;
		this.regDate = regDate;
		this.address = address;
		this.userId = userId;
		this.lat = lat;
		this.lon = lon;
		this.state = state;
	}

	//2018年10月10日14:07:20 CZD 
	public Customers(String account, Integer id, String custName, String phone, String regDate, String address,
			Integer userId, Double lat, Double lon, Integer state) {
		super();
		this.account = account;
		this.id = id;
		this.custName = custName;
		this.phone = phone;
		this.regDate = regDate;
		this.address = address;
		this.userId = userId;
		this.lat = lat;
		this.lon = lon;
		this.state = state;
	}

	@Override
	public String toString() {
		return "Customers [account=" + account + ", id=" + id + ", custName=" + custName + ", phone=" + phone
				+ ", regDate=" + regDate + ", address=" + address + ", userId=" + userId + ", lat=" + lat + ", lon="
				+ lon + ", state=" + state + "]";
	}


	//2018年10月10日14:05:08 添加 用户名字段     Czd
	private  String account;

	private Integer id;

    private String custName;

    private String phone;

    private String regDate;

    private String address;

    private Integer userId;

    private Double lat;

    private Double lon;

    private Integer state;
    
    //2018年10月10日14:08:40  CZD
    public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getcustName() {
        return custName;
    }

    public void setcustName(String custName) {
        this.custName = custName == null ? null : custName.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getregDate() {
        return regDate;
    }

    public void setregDate(String regDate) {
        this.regDate = regDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getuserId() {
        return userId;
    }

    public void setuserId(Integer userId) {
        this.userId = userId;
    }

    public Double getLat() {
        return lat;
    }

    public void setLat(Double lat) {
        this.lat = lat;
    }

    public Double getLon() {
        return lon;
    }

    public void setLon(Double lon) {
        this.lon = lon;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}