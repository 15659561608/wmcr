package com.etc.entity;

public class Foodf {
    private Integer id;

    private String foodName;

    private Double price;

    private Double discount;

    private Integer num;

    private Integer salNum;

    private String des;

    private String logo;

    private String  busiName;
    private String address;
    

    public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	private Integer state;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Integer getSalNum() {
		return salNum;
	}

	public void setSalNum(Integer salNum) {
		this.salNum = salNum;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getBusiName() {
		return busiName;
	}

	public void setBusiName(String busiName) {
		this.busiName = busiName;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	
	public Foodf(Integer id, String foodName, Double price, Double discount, Integer num, Integer salNum, String des,
			String logo, String busiName, String address, Integer state) {
		super();
		this.id = id;
		this.foodName = foodName;
		this.price = price;
		this.discount = discount;
		this.num = num;
		this.salNum = salNum;
		this.des = des;
		this.logo = logo;
		this.busiName = busiName;
		this.address = address;
		this.state = state;
	}

	public Foodf() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Foodf [id=" + id + ", foodName=" + foodName + ", price=" + price + ", discount=" + discount + ", num="
				+ num + ", salNum=" + salNum + ", des=" + des + ", logo=" + logo + ", busiName=" + busiName
				+ ", address=" + address + ", state=" + state + "]";
	}

	public Foodf(Integer id, String foodName, Double price, Double discount, Integer num, Integer salNum, String des,
			String logo, String busiName, Integer state) {
		super();
		this.id = id;
		this.foodName = foodName;
		this.price = price;
		this.discount = discount;
		this.num = num;
		this.salNum = salNum;
		this.des = des;
		this.logo = logo;
		this.busiName = busiName;
		this.state = state;
	}

	public Foodf(Integer id, String foodName, Double price, Double discount, Integer num, Integer salNum, String des,
			String logo, Integer state) {
		super();
		this.id = id;
		this.foodName = foodName;
		this.price = price;
		this.discount = discount;
		this.num = num;
		this.salNum = salNum;
		this.des = des;
		this.logo = logo;
		this.state = state;
	}
	
	
    
}