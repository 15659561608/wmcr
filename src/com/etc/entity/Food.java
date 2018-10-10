package com.etc.entity;

public class Food {
    public Food() {
		super();
	}

	public Food(Integer id, String foodname, Double price, Double discount, Integer num, Integer salnum, String des,
			String logo, Integer busid, Integer state) {
		super();
		this.id = id;
		this.foodname = foodname;
		this.price = price;
		this.discount = discount;
		this.num = num;
		this.salnum = salnum;
		this.des = des;
		this.logo = logo;
		this.busid = busid;
		this.state = state;
	}

	@Override
	public String toString() {
		return "Food [id=" + id + ", foodname=" + foodname + ", price=" + price + ", discount=" + discount + ", num="
				+ num + ", salnum=" + salnum + ", des=" + des + ", logo=" + logo + ", busid=" + busid + ", state="
				+ state + "]";
	}

	private Integer id;

    private String foodname;

    private Double price;

    private Double discount;

    private Integer num;

    private Integer salnum;

    private String des;

    private String logo;

    private Integer busid;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname == null ? null : foodname.trim();
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

    public Integer getSalnum() {
        return salnum;
    }

    public void setSalnum(Integer salnum) {
        this.salnum = salnum;
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

    public Integer getBusid() {
        return busid;
    }

    public void setBusid(Integer busid) {
        this.busid = busid;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}