package com.etc.entity;

public class Photos {
    public Photos() {
		super();
	}

	public Photos(Integer id, String src, Integer busid) {
		super();
		this.id = id;
		this.src = src;
		this.busid = busid;
	}

	@Override
	public String toString() {
		return "Photos [id=" + id + ", src=" + src + ", busid=" + busid + "]";
	}

	private Integer id;

    private String src;

    private Integer busid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src == null ? null : src.trim();
    }

    public Integer getBusid() {
        return busid;
    }

    public void setBusid(Integer busid) {
        this.busid = busid;
    }
}