package com.etc.entity;

import java.util.Date;

public class Reminder {
    private Integer id;

    private Date remDate;

    private Integer ordersId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getRemDate() {
        return remDate;
    }

    public void setRemDate(Date remDate) {
        this.remDate = remDate;
    }

    public Integer getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
    }
}