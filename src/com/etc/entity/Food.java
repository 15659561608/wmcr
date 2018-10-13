package com.etc.entity;

public class Food {
    private Integer id;

    private String foodName;

    private Double price;

    private Double discount;

    private Integer num;

    private Integer salNum;

    private String des;

    private String logo;

    private Integer busId;

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
        this.foodName = foodName == null ? null : foodName.trim();
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
        this.des = des == null ? null : des.trim();
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo == null ? null : logo.trim();
    }

    public Integer getBusId() {
        return busId;
    }

    public void setBusId(Integer busId) {
        this.busId = busId;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

	public Food(Integer id, String foodName, Double price, Double discount, Integer num, Integer salNum, String des,
			String logo, Integer busId, Integer state) {
		super();
		this.id = id;
		this.foodName = foodName;
		this.price = price;
		this.discount = discount;
		this.num = num;
		this.salNum = salNum;
		this.des = des;
		this.logo = logo;
		this.busId = busId;
		this.state = state;
	}

	public Food() {
		super();
	}

	public Food(String foodName, Double price, Double discount, Integer num, Integer salNum, String des, String logo,
			Integer busId, Integer state) {
		super();
		this.foodName = foodName;
		this.price = price;
		this.discount = discount;
		this.num = num;
		this.salNum = salNum;
		this.des = des;
		this.logo = logo;
		this.busId = busId;
		this.state = state;
	}
	

	public Food(Integer id, String foodName, Double price, Double discount, Integer num, Integer salNum, String des,
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

	@Override
	public String toString() {
		return "Food [id=" + id + ", foodName=" + foodName + ", price=" + price + ", discount=" + discount + ", num="
				+ num + ", salNum=" + salNum + ", des=" + des + ", logo=" + logo + ", busId=" + busId + ", state="
				+ state + "]";
	}
    
    
}