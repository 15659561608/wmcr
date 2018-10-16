package com.etc.entity;
/**
* @author 作者 LinWQ:
* @version 创建时间：2018年10月16日 下午2:24:01
* 
*/

public class BusiNameL {
  private String busiName;

public BusiNameL() {
	super();
}

public BusiNameL(String busiName) {
	super();
	this.busiName = busiName;
}

@Override
public String toString() {
	return "BusiNameL [busiName=" + busiName + "]";
}

public String getBusiName() {
	return busiName;
}

public void setBusiName(String busiName) {
	this.busiName = busiName;
}
}
