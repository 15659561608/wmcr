package com.etc.entity;

public class Distribution {
	@Override
	public String toString() {
		return "Distribution [dId=" + dId + ", disTime=" + disTime + ", remarks=" + remarks + ", disId=" + disId
				+ ", ordId=" + ordId + ", name=" + name + ", phone=" + phone + ", address=" + address + "]";
	}
	private int dId;
	private String disTime;
	private String remarks;
	private int disId;
	private String ordId;
	private String name;
	private String phone;
	private String address;
	public Distribution() {
		// TODO Auto-generated constructor stub
	}
	public int getdId() {
		return dId;
	}
	public void setdId(int dId) {
		this.dId = dId;
	}
	public String getDisTime() {
		return disTime;
	}
	public void setDisTime(String disTime) {
		this.disTime = disTime;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public int getDisId() {
		return disId;
	}
	public void setDisId(int disId) {
		this.disId = disId;
	}
	public String getOrdId() {
		return ordId;
	}
	public void setOrdId(String ordId) {
		this.ordId = ordId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Distribution(String disTime, String remarks, int disId, String ordId, String name, String phone,
			String address) {
		super();
		this.disTime = disTime;
		this.remarks = remarks;
		this.disId = disId;
		this.ordId = ordId;
		this.name = name;
		this.phone = phone;
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
