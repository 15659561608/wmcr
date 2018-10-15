package com.etc.service.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.dao.BusinessDao;
import com.etc.dao.impl.BusinessDaoImpl;
import com.etc.entity.Businesses;
import com.etc.entity.BusinessesCity;
import com.etc.services.BusinessService;

public class BusinessServiceImpl implements BusinessService {

	private BusinessDao bd=new BusinessDaoImpl();
	@Override
	public List<Businesses> getBusinesses() {
		// TODO Auto-generated method stub
		return bd.getBusinesses();
	}

	@Override
	public boolean addBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		return bd.addBusinesses(b);
	}

	@Override
	public boolean updateBusinesses(Businesses b) {
		// TODO Auto-generated method stub
		return bd.updateBusinesses(b);
	}

	@Override
	public List<BusinessesCity> getBusinesses(int bossId) {
		// TODO Auto-generated method stub
		return bd.getBusinesses(bossId);
	}

	@Override
	public void updateBusiForString(HttpServletRequest request, HttpServletResponse response,String op) {
		// TODO Auto-generated method stub
		PrintWriter out=null;
		try {
			out = response.getWriter();
			int id=Integer.valueOf(request.getParameter("id"));
			int value=Integer.valueOf(request.getParameter("value"));
			value=(value==1)?0:1;
			System.out.println(value);
			boolean result=bd.updateBusiForString(op, value, id);
			if(result) {
				out.print("true");
			}else {
				out.print("false");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			out.close();
		}
		
	}

	@Override
	public List<BusinessesCity> getBusinessesById(int id) {
		// TODO Auto-generated method stub
		List<BusinessesCity> list=bd.getBusinessesById(id);
		
		return list;
	}

}
