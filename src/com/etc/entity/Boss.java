package com.etc.entity;

import java.util.Date;

public class Boss {
    private Integer id;

    private String account;

    private String pwd;

    @Override
	public String toString() {
		return "Boss [id=" + id + ", account=" + account + ", pwd=" + pwd + ", regdate=" + regdate + ", state=" + state
				+ "]";
	}

	public Boss() {
		super();
	}

	public Boss(Integer id, String account, String pwd, Date regdate, Integer state) {
		super();
		this.id = id;
		this.account = account;
		this.pwd = pwd;
		this.regdate = regdate;
		this.state = state;
	}

	private Date regdate;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}