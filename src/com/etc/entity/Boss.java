package com.etc.entity;

import java.util.Date;

public class Boss {
    private Integer id;

    private String account;

    private String pwd;

    private Date regDate;

    private Integer state;
    
    
    

    public Boss(String account, String pwd) {
		super();
		this.account = account;
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "Boss [id=" + id + ", account=" + account + ", pwd=" + pwd + ", regDate=" + regDate + ", state=" + state
				+ "]";
	}

	public Boss() {
		super();
	}

	public Boss(Integer id, String account, String pwd, Date regDate, Integer state) {
		super();
		this.id = id;
		this.account = account;
		this.pwd = pwd;
		this.regDate = regDate;
		this.state = state;
	}

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
}