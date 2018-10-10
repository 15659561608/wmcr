package com.etc.entity;

import java.util.Date;

public class Customers {
    public Customers() {
		super();
	}

	public Customers(Integer id, String custname, String phone, Date regdate, String address, Integer userid,
			Double lat, Double lon, Integer state) {
		super();
		this.id = id;
		this.custname = custname;
		this.phone = phone;
		this.regdate = regdate;
		this.address = address;
		this.userid = userid;
		this.lat = lat;
		this.lon = lon;
		this.state = state;
	}

	@Override
	public String toString() {
		return "Customers [id=" + id + ", custname=" + custname + ", phone=" + phone + ", regdate=" + regdate
				+ ", address=" + address + ", userid=" + userid + ", lat=" + lat + ", lon=" + lon + ", state=" + state
				+ "]";
	}

	private Integer id;

    private String custname;

    private String phone;

    private Date regdate;

    private String address;

    private Integer userid;

    private Double lat;

    private Double lon;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustname() {
        return custname;
    }

    public void setCustname(String custname) {
        this.custname = custname == null ? null : custname.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
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