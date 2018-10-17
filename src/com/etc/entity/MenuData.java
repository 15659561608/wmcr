/**
  * Copyright 2018 bejson.com 
  */
package com.etc.entity;
import java.util.List;

/**
 * Auto-generated: 2018-10-17 13:36:58
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class MenuData {

    private String qiniu_url;
    private List<String> additions;
    private String name;
    private List<String> optionsets;
    private int ordercount;
    private int position;
    private double price;
    private int id;
    public MenuData(String qiniu_url, String name, int ordercount, int position, double price, int id,
			String description) {
		super();
		this.qiniu_url = qiniu_url;
		this.name = name;
		this.ordercount = ordercount;
		this.position = position;
		this.price = price;
		this.id = id;
		this.description = description;
	}
	private String description;
    public void setQiniu_url(String qiniu_url) {
         this.qiniu_url = qiniu_url;
     }
     public String getQiniu_url() {
         return qiniu_url;
     }

    public void setAdditions(List<String> additions) {
         this.additions = additions;
     }
     public List<String> getAdditions() {
         return additions;
     }

    public void setName(String name) {
         this.name = name;
     }
     public String getName() {
         return name;
     }

    public void setOptionsets(List<String> optionsets) {
         this.optionsets = optionsets;
     }
     public List<String> getOptionsets() {
         return optionsets;
     }

    public void setOrdercount(int ordercount) {
         this.ordercount = ordercount;
     }
     public int getOrdercount() {
         return ordercount;
     }

    public void setPosition(int position) {
         this.position = position;
     }
     public int getPosition() {
         return position;
     }

    public void setPrice(double price) {
         this.price = price;
     }
     public double getPrice() {
         return price;
     }

    public void setId(int id) {
         this.id = id;
     }
     public int getId() {
         return id;
     }

    public void setDescription(String description) {
         this.description = description;
     }
     public String getDescription() {
         return description;
     }

}