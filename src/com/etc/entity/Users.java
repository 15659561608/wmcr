package com.etc.entity;

import java.util.Date;

public class Users {
    private Integer id;

    private String account;

    private String pwd;

    private Date regDate;

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

    public Users(String account, String pwd) {
		super();
		this.account = account;
		this.pwd = pwd;
	}

	public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

	@Override
	public String toString() {
		return "Users [id=" + id + ", account=" + account + ", pwd=" + pwd + ", regDate=" + regDate + ", state=" + state
				+ "]";
	}
  
	public Users() {
		// TODO Auto-generated constructor stub
	}
	
	public Users(Integer id, String account, String pwd, Date regDate, Integer state) {
		super();
		this.id = id;
		this.account = account;
		this.pwd = pwd;
		this.regDate = regDate;
		this.state = state;
	}
    
}