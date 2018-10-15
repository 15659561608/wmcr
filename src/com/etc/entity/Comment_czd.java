package com.etc.entity;

import java.util.Date;

public class Comment_czd {
    private Integer id;//评论编号

    private String content;//评论内容

    private Date comDate;//评论时间

    private Integer praise;//好评星级
 
    private String busiName;//店铺名称

    private String account;//用户名


    

    @Override
	public String toString() {
		return "Comment_czd [id=" + id + ", content=" + content + ", comDate=" + comDate + ", praise=" + praise
				+ ", busiName=" + busiName + ", account=" + account + "]";
	}

	public Comment_czd() {
		super();
	}

	public Comment_czd(Integer id, String content, Date comDate, Integer praise, String busiName, String account) {
		super();
		this.id = id;
		this.content = content;
		this.comDate = comDate;
		this.praise = praise;
		this.busiName = busiName;
		this.account = account;
	}

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

    public Date getComDate() {
        return comDate;
    }

    public void setComDate(Date comDate) {
        this.comDate = comDate;
    }

    public Integer getPraise() {
        return praise;
    }

    public void setPraise(Integer praise) {
        this.praise = praise;
    }

	public String getBusiName() {
		return busiName;
	}

	public void setBusiName(String busiName) {
		this.busiName = busiName;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

    


}