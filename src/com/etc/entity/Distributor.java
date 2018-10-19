package com.etc.entity;

import java.util.Date;

public class Distributor {
    @Override
	public String toString() {
		return "Distributor [id=" + id + ", disName=" + disName + ", phone=" + phone + ", birthday=" + birthday
				+ ", nativeplace=" + nativeplace + ", lat=" + lat + ", lon=" + lon + ", num=" + num + ", state=" + state
				+ "]";
	}

	private Integer id;

    private String disName;

    private String phone;

    private Date birthday;

    private String nativeplace;

    private Double lat;

    private Double lon;

    private Integer num;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDisName() {
        return disName;
    }

    public void setDisName(String disName) {
        this.disName = disName == null ? null : disName.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getNativeplace() {
        return nativeplace;
    }

    public void setNativeplace(String nativeplace) {
        this.nativeplace = nativeplace == null ? null : nativeplace.trim();
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

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}