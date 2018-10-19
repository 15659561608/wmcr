package com.etc.services;

import java.util.List;

import com.etc.entity.Businesses;

public interface BusinessesServicef {
	List<Businesses> queryBusinesses();
	List<Businesses> queryBussById(int id);

}
