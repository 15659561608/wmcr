package com.etc.entity;

import java.util.Date;

public class Comment {
    @Override
	public String toString() {
		return "Comment [id=" + id + ", content=" + content + ", comdate=" + comdate + ", praise=" + praise
				+ ", userid=" + userid + ", busid=" + busid + "]";
	}

	public Comment() {
		super();
	}

	public Comment(Integer id, String content, Date comdate, Integer praise, Integer userid, Integer busid) {
		super();
		this.id = id;
		this.content = content;
		this.comdate = comdate;
		this.praise = praise;
		this.userid = userid;
		this.busid = busid;
	}

	private Integer id;

    private String content;

    private Date comdate;

    private Integer praise;

    private Integer userid;

    private Integer busid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getComdate() {
        return comdate;
    }

    public void setComdate(Date comdate) {
        this.comdate = comdate;
    }

    public Integer getPraise() {
        return praise;
    }

    public void setPraise(Integer praise) {
        this.praise = praise;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getBusid() {
        return busid;
    }

    public void setBusid(Integer busid) {
        this.busid = busid;
    }
}