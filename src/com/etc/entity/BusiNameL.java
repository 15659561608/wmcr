package com.etc.entity;

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
