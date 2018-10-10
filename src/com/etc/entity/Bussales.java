package com.etc.entity;

public class Bussales {
    public Bussales() {
		super();
	}

	public Bussales(Integer id, String title, Integer busid) {
		super();
		this.id = id;
		this.title = title;
		this.busid = busid;
	}

	@Override
	public String toString() {
		return "Bussales [id=" + id + ", title=" + title + ", busid=" + busid + "]";
	}

	private Integer id;

    private String title;

    private Integer busid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getBusid() {
        return busid;
    }

    public void setBusid(Integer busid) {
        this.busid = busid;
    }
}