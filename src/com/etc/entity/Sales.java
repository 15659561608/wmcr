package com.etc.entity;

public class Sales {
    private Integer id;

    private String title;

    private Double discount;

    public Sales() {
		super();
	}

	public Sales(Integer id, String title, Double discount) {
		super();
		this.id = id;
		this.title = title;
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "Sales [id=" + id + ", title=" + title + ", discount=" + discount + "]";
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }
}