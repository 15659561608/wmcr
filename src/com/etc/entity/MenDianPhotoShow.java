package com.etc.entity;

public class MenDianPhotoShow {
     private int id;//相册ID
     private String busiName;//店铺名
     private String src;//图片路径
     private String des;//店铺描述
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBusiName() {
		return busiName;
	}
	public void setBusiName(String busiName) {
		this.busiName = busiName;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
     
     public MenDianPhotoShow() {
		// TODO Auto-generated constructor stub
	}
	public MenDianPhotoShow(int id, String busiName, String src, String des) {
		super();
		this.id = id;
		this.busiName = busiName;
		this.src = src;
		this.des = des;
	}
	@Override
	public String toString() {
		return "MenDianPhotoShow [id=" + id + ", busiName=" + busiName + ", src=" + src + ", des=" + des + "]";
	}
     
     
     
}
