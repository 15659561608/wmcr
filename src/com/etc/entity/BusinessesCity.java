package com.etc.entity;

public class BusinessesCity {
    private Integer id;

    private String busiName;

    private String phone;

    private String address;

    private Double avgCost;

    private String licence;

    private Integer salNum;

    private Double lat;

    private Double lon;

    private Double starPrice;

    private Double disFee;

    private Integer onlinePay;

    private Integer isReserve;

    private Integer isBusiness;

    private String des;

    private Integer typeId;
    

  

	
	private Integer bossId;

    private Integer cityId;

    private Integer praise;

    private Integer nag;

    private Integer state;
    private String logo;
    
    private String cityName;
    
    private String title;
    
    public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "BusinessesCity [id=" + id + ", busiName=" + busiName + ", phone=" + phone + ", address=" + address
				+ ", avgCost=" + avgCost + ", licence=" + licence + ", salNum=" + salNum + ", lat=" + lat + ", lon="
				+ lon + ", starPrice=" + starPrice + ", disFee=" + disFee + ", onlinePay=" + onlinePay + ", isReserve="
				+ isReserve + ", isBusiness=" + isBusiness + ", des=" + des + ", typeId=" + typeId + ", bossId="
				+ bossId + ", cityId=" + cityId + ", praise=" + praise + ", nag=" + nag + ", state=" + state + ", logo="
				+ logo + ", cityName=" + cityName + ", title=" + title + ", regDate=" + regDate + "]";
	}

	private String regDate;
    public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBusiName() {
        return busiName;
    }

    public void setBusiName(String busiName) {
        this.busiName = busiName == null ? null : busiName.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public Double getAvgCost() {
        return avgCost;
    }

    public void setAvgCost(Double avgCost) {
        this.avgCost = avgCost;
    }

    public String getLicence() {
        return licence;
    }

    public void setLicence(String licence) {
        this.licence = licence == null ? null : licence.trim();
    }

    public Integer getSalNum() {
        return salNum;
    }

    public void setSalNum(Integer salNum) {
        this.salNum = salNum;
    }

    public Double getLat() {
        return lat;
    }

    public void setLat(Double lat) {
        this.lat = lat;
    }

    public Double getLon() {
        return lon;
    }

    public void setLon(Double lon) {
        this.lon = lon;
    }

    public Double getStarPrice() {
        return starPrice;
    }

    public void setStarPrice(Double starPrice) {
        this.starPrice = starPrice;
    }

    public Double getDisFee() {
        return disFee;
    }

    public void setDisFee(Double disFee) {
        this.disFee = disFee;
    }

    public Integer getOnlinePay() {
        return onlinePay;
    }

    public void setOnlinePay(Integer onlinePay) {
        this.onlinePay = onlinePay;
    }

    public Integer getIsReserve() {
        return isReserve;
    }

    public void setIsReserve(Integer isReserve) {
        this.isReserve = isReserve;
    }

    public Integer getIsBusiness() {
        return isBusiness;
    }

    public void setIsBusiness(Integer isBusiness) {
        this.isBusiness = isBusiness;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des == null ? null : des.trim();
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Integer getBossId() {
        return bossId;
    }

    public void setBossId(Integer bossId) {
        this.bossId = bossId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public Integer getPraise() {
        return praise;
    }

    public void setPraise(Integer praise) {
        this.praise = praise;
    }

    public Integer getNag() {
        return nag;
    }

    public void setNag(Integer nag) {
        this.nag = nag;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}