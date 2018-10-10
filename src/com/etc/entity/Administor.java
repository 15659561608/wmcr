package com.etc.entity;

public class Administor {
    private Integer id;

    private String account;

    private String pwd;

    public Integer getId() {
        return id;
    }

    @Override
	public String toString() {
		return "Administor [id=" + id + ", account=" + account + ", pwd=" + pwd + "]";
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

    public Administor() {
		super();
	}

	public Administor(Integer id, String account, String pwd) {
		super();
		this.id = id;
		this.account = account;
		this.pwd = pwd;
	}

	public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }
}