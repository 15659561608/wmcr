package com.etc.controllor;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.BusinessesCity;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.services.BusinessService;
import com.etc.util.BaiduMap;
import com.etc.util.LocationUtils;

/**
 * Servlet implementation class MapServlet3
 */
@WebServlet("/MapServlet")
public class MapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MapServlet() {
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
		if("queryBusi".equals(op)) {
			String address=request.getParameter("address");
			HashMap<String, Double> hashmap=BaiduMap.getLatLon(address);
			List<BusinessesCity> list=bs.getAllBusinesses();
			List<BusinessesCity> busiList=new ArrayList<>();
			for (int i = 0; i < list.size(); i++) {
				double distance=LocationUtils.getDistance(hashmap.get("lat"),hashmap.get("lon"), list.get(i).getLat(), list.get(i).getLon());
				double disDouble=distance/1000;
				if(disDouble<=5.0) {
					busiList.add(list.get(i));
				}
			}
			
			request.setAttribute("busiList", busiList);
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
