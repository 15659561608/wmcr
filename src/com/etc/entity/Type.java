package com.etc.entity;

public class Type {
    public Type() {
		super();
	}

	public Type(Integer id, String title, Integer pid) {
		super();
		this.id = id;
		this.title = title;
		this.pid = pid;
	}

	@Override
	public String toString() {
		return "Type [id=" + id + ", title=" + title + ", pid=" + pid + "]";
	}

	private Integer id;

    private String title;

    private Integer pid;

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

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }
}