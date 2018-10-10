package com.etc.entity;

public class Businesses {
    private Integer id;

    private String businame;

    private String phone;

    private String address;

    private Double avgcost;

    private String licence;

    private Integer salnum;

    private Double lat;

    private Double lon;

    private Double starprice;

    private Double disfee;

    private Integer onlinepay;

    private Integer isreserve;

    private Integer isbusiness;

    private String des;

    private Integer typeid;

    private Integer bossid;

    private Integer cityid;

    private Integer praise;

    private Integer nag;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBusiname() {
        return businame;
    }

    public void setBusiname(String businame) {
        this.businame = businame == null ? null : businame.trim();
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

    public Double getAvgcost() {
        return avgcost;
    }

    public void setAvgcost(Double avgcost) {
        this.avgcost = avgcost;
    }

    public String getLicence() {
        return licence;
    }

    public void setLicence(String licence) {
        this.licence = licence == null ? null : licence.trim();
    }

    public Integer getSalnum() {
        return salnum;
    }

    public void setSalnum(Integer salnum) {
        this.salnum = salnum;
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

    public Double getStarprice() {
        return starprice;
    }

    public void setStarprice(Double starprice) {
        this.starprice = starprice;
    }

    public Double getDisfee() {
        return disfee;
    }

    public void setDisfee(Double disfee) {
        this.disfee = disfee;
    }

    public Integer getOnlinepay() {
        return onlinepay;
    }

    public void setOnlinepay(Integer onlinepay) {
        this.onlinepay = onlinepay;
    }

    public Integer getIsreserve() {
        return isreserve;
    }

    public void setIsreserve(Integer isreserve) {
        this.isreserve = isreserve;
    }

    public Integer getIsbusiness() {
        return isbusiness;
    }

    public void setIsbusiness(Integer isbusiness) {
        this.isbusiness = isbusiness;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des == null ? null : des.trim();
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Integer getBossid() {
        return bossid;
    }

    public void setBossid(Integer bossid) {
        this.bossid = bossid;
    }

    public Integer getCityid() {
        return cityid;
    }

    public void setCityid(Integer cityid) {
        this.cityid = cityid;
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