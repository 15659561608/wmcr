package com.etc.entity;

public class Sales {
	private Integer salId;

	private String title;

	private Double discount;

	private int busId;
	private String content;
	private int state;
	private String pubDate;

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	public Sales() {
		// TODO Auto-generated constructor stub
	}

	public Sales(Integer salId, String title, Double discount, String content, int state, String pubDate) {
		super();
		this.salId = salId;
		this.title = title;
		this.discount = discount;
		this.content = content;
		this.state = state;
		this.pubDate = pubDate;
	}

	public Sales(String title, Double discount, int busId, String content, String pubDate) {
		super();
		this.title = title;
		this.discount = discount;
		this.busId = busId;
		this.content = content;
		this.pubDate = pubDate;
	}

	public String getTitle() {
		return title;
	}

	@Override
	public String toString() {
		return "Sales [salId=" + salId + ", title=" + title + ", discount=" + discount + ", busId=" + busId
				+ ", content=" + content + ", state=" + state + ", pubDate=" + pubDate + "]";
	}

	public Integer getSalId() {
		return salId;
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
}