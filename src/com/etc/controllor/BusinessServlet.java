package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Boss;
import com.etc.entity.Businesses;
import com.etc.entity.BusinessesData;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.services.BusinessService;
import com.etc.util.BaiduMap;
import com.google.gson.Gson;
import com.sun.javafx.collections.MappingChange.Map;

/**
 * Servlet implementation class BusinessServlet
 */
@WebServlet("/Business")
public class BusinessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op="null";
		if(request.getParameter("op")!=null) {
			op=request.getParameter("op");
		}
		
		BusinessService bs=new BusinessServiceImpl();
		
		HttpSession session=request.getSession();
		Boss boss=(Boss)session.getAttribute("boss");
		//显示门店列表
		if("null".equals(op)) {
			Gson gson=new Gson();
			BusinessesData bd=new BusinessesData();
			bd.setData(bs.getBusinesses(boss.getId()));
			String jsonData=gson.toJson(bd);
			response.setContentType("text/json");
			PrintWriter out=response.getWriter();
			out.println(jsonData);
			out.close();
		}
		if("add".equals(op)) {
			doAdd(request, response);
		}
		if("update".equals(op)) {
			doUpdate(request, response);
		}
		if("ajaxCheckAddress".equals(op)) {
			String address=request.getParameter("address");
			PrintWriter out=response.getWriter();
			if(BaiduMap.getLatLon(address)==null) {
				out.print("false");
			}else {
				out.print("true");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void doAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String busiName=request.getParameter("busiName");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		HashMap<String, Double> map=(HashMap)BaiduMap.getLatLon(address);
		double lat=0.0;
		double lon=0.0;
		if(map!=null) {
			lat=(double)map.get("lat");
			lon=(double)map.get("lon");
		}else {
			out.print("false");
			return;
		}
		String licence=request.getParameter("licence");
		int typeId=Integer.valueOf(request.getParameter("typeId"));
		int bossId=Integer.valueOf(request.getParameter("bossId"));
		int cityId=Integer.valueOf(request.getParameter("cityId"));
		
		Businesses busi=new Businesses(busiName, phone, address, licence, lat, lon, typeId, bossId, cityId);
		
		BusinessService bs=new BusinessServiceImpl();
		boolean result=bs.addBusinesses(busi);
		if(result) {
			out.print("true");
		}else {
			out.print("false");
		}
	}
	protected void doUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void doDel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
