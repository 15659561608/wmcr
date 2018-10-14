package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.dao.BusinessDao;
import com.etc.dao.impl.BusinessDaoImpl;
import com.etc.entity.Boss;
import com.etc.entity.BusinessesCity;
import com.etc.entity.BusinessesData;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.services.BusinessService;
import com.etc.util.BaiduMap;
import com.google.gson.Gson;

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
			PrintWriter out=response.getWriter();
			String address=request.getParameter("address");
			if(BaiduMap.getLatLon(address)==null) {
				out.print("false");
			}else {
				out.print("true");
			}
		}
		
		if("ajaxUpdateIB".equals(op)) {
			bs.updateBusiForString(request, response, "isBusiness");
		}
		if("ajaxUpdateIR".equals(op)) {
			bs.updateBusiForString(request, response, "isReserve");
		}
		if("ajaxUpdateOP".equals(op)) {
			bs.updateBusiForString(request, response, "onlinePay");
		}
		
		if("updateInfo".equals(op)) {
			int id=Integer.valueOf(request.getParameter("id"));
			List<BusinessesCity> list=bs.getBusinessesById(id);
			request.setAttribute("busiInfo", list.get(0));
			request.getRequestDispatcher("bossManage/updateBusi.jsp").forward(request, response);
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
		
		String busiName=request.getParameter("busiName");
		String phone=request.getParameter("phone");
	}
	protected void doUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.valueOf(request.getParameter("id"));
		String busiName=request.getParameter("busiName");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String avgCost=request.getParameter("avgCost");
		String licence=request.getParameter("licence");
		double lat=0.0;
		double lon=0.0;
		HashMap<String,Double> hashmap=(HashMap<String, Double>) BaiduMap.getLatLon(address);
		if(hashmap!=null) {
			lat=hashmap.get("lat");
			lon=hashmap.get("lon");
		}
		
		double staPrice=Double.valueOf(request.getParameter("startPrice"));
		double disFee=Double.valueOf(request.getParameter("disFee"));
		
		int onlinePay=Integer.valueOf(request.getParameter("onlinePay"));
		int isReserve=Integer.valueOf(request.getParameter("isReserve"));
		int isBusiness=Integer.valueOf(request.getParameter("isBusiness"));
		String des=request.getParameter("des");
		int typeId=Integer.valueOf(request.getParameter("typeId"));
		int cityId=Integer.valueOf(request.getParameter("cityId"));
		int state=Integer.valueOf(request.getParameter("state"));
		String logo=request.getParameter("logo");
		
	}
	protected void doDel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
