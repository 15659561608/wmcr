package com.etc.entity;

public class City {
    @Override
	public String toString() {
		return "City [id=" + id + ", cityname=" + cityname + ", lat=" + lat + ", lon=" + lon + "]";
	}

	public City() {
		super();
	}

	public City(Integer id, String cityname, Double lat, Double lon) {
		super();
		this.id = id;
		this.cityname = cityname;
		this.lat = lat;
		this.lon = lon;
	}

	private Integer id;

    private String cityname;

    private Double lat;

    private Double lon;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname == null ? null : cityname.trim();
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
}