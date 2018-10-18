package com.etc.entity;

public class Distribution {
	private int dId;
	private String disTime;
	private String remarks;
	private int disId;
	private int ordId;
	public Distribution() {
		// TODO Auto-generated constructor stub
	}
	public Distribution(String disTime, String remarks, int disId, int ordId) {
		super();
		this.disTime = disTime;
		this.remarks = remarks;
		this.disId = disId;
		this.ordId = ordId;
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
	public int getOrdId() {
		return ordId;
	}
	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}
}
