package com.etc.entity;

public class SalesBusi {
	private Integer salId;

	private String title;

	private Double discount;

	private int busId;
	private String content;
	private int state;
	private String busiName;
	private String phone;
	private String address;
	 private String pubDate;
		public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}
	public String getTitle() {
		return title;
	}

	public Integer getSalId() {
		return salId;
	}


	@Override
	public String toString() {
		return "SalesBusi [salId=" + salId + ", title=" + title + ", discount=" + discount + ", busId=" + busId
				+ ", content=" + content + ", state=" + state + ", busiName=" + busiName + ", phone=" + phone
				+ ", address=" + address + ", pubDate=" + pubDate + "]";
	}

	public void setSalId(Integer salId) {
		this.salId = salId;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	public Double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	public int getBusId() {
		return busId;
	}
	public void setBusId(int busId) {
		this.busId = busId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getBusiName() {
		return busiName;
	}
	public void setBusiName(String busiName) {
		this.busiName = busiName;
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
