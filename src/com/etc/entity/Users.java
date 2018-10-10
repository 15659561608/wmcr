package com.etc.entity;

import java.util.Date;

public class Users {
    public Users() {
		super();
	}

	public Users(Integer id, String account, String pwd, Date regdate, Integer state) {
		super();
		this.id = id;
		this.account = account;
		this.pwd = pwd;
		this.regdate = regdate;
		this.state = state;
	}

	@Override
	public String toString() {
		return "Users [id=" + id + ", account=" + account + ", pwd=" + pwd + ", regdate=" + regdate + ", state=" + state
				+ "]";
	}

	private Integer id;

    private String account;

    private String pwd;

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