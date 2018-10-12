package com.etc.entity;

import java.util.List;

public class BusinessesData {
	private List<Businesses> data;
	private int code = 0;
	private String msg = "";
	private int count = 15;

	public List<Businesses> getData() {
		return data;
	}

	public void setData(List<Businesses> data) {
		this.data = data;
	}
}
