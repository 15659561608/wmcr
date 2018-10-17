package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.etc.entity.Businesses;
import com.etc.entity.BusinessesCity;
import com.etc.entity.BusinessesData;
import com.etc.entity.Food;
import com.etc.entity.MenuData;
import com.etc.entity.Sales;
import com.etc.entity.SalesBusi;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.service.impl.SalesServiceImpl;
import com.etc.services.BusinessService;
import com.etc.util.BaiduMap;
import com.etc.util.PageData;
import com.google.gson.Gson;
import com.sun.glass.ui.Menu;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op = "null";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		// 分页对象
		int page = 1;
		int pageSize = 10;
		if (request.getParameter("page") != null) {
			page = Integer.valueOf(request.getParameter("page"));
		}
		if (request.getParameter("pageSize") != null) {
			pageSize = Integer.valueOf(request.getParameter("pageSize"));
		}
		BusinessService bs = new BusinessServiceImpl();

		HttpSession session = request.getSession();
		Boss boss = (Boss) session.getAttribute("boss");
		// 显示门店列表
		if ("null".equals(op)) {
			Gson gson = new Gson();
			BusinessesData bd = new BusinessesData();
			bd.setData(bs.getBusinesses(boss.getId()));
			String jsonData = gson.toJson(bd);
			response.setContentType("text/json");
			PrintWriter out = response.getWriter();
			System.out.println(jsonData);
			out.println(jsonData);
			out.close();
		}
		if ("add".equals(op)) {
			doAdd(request, response);
		}
		if ("update".equals(op)) {
			doUpdate(request, response);
		}
		if ("ajaxCheckAddress".equals(op)) {
			PrintWriter out = response.getWriter();
			String address = request.getParameter("address");
			if (BaiduMap.getLatLon(address) == null) {
				out.print("false");
			} else {
				out.print("true");
			}
		}

		if ("ajaxUpdateIB".equals(op)) {
			bs.updateBusiForString(request, response, "isBusiness");
		}
		if ("ajaxUpdateIR".equals(op)) {
			bs.updateBusiForString(request, response, "isReserve");
		}
		if ("ajaxUpdateOP".equals(op)) {
			bs.updateBusiForString(request, response, "onlinePay");
		}

		if ("updateInfo".equals(op)) {
			int id = Integer.valueOf(request.getParameter("id"));
			List<BusinessesCity> list = bs.getBusinessesById(id);
			request.setAttribute("busiInfo", list.get(0));
			request.getRequestDispatcher("bossManage/updateBusi.jsp").forward(request, response);
		}
		if ("busiDetail".equals(op)) {
			int id = Integer.valueOf(request.getParameter("id"));
			// 获取门店详细信息
			List<BusinessesCity> list = bs.getBusinessesById(id);

			// 获取门店活动信息
			List<SalesBusi> salesList = new SalesServiceImpl().getSalesByBusId(19);

			// 获取门店菜品
			PageData<Food> foodList = new FoodsServiceImplf().getFoods(page, pageSize, "", id);

			/*
			 * // 拼接json字符串 Gson gson = new Gson(); List<MenuData> beanList=new
			 * ArrayList<>(); for (int i = 0; i < foodList.getData().size(); i++) { MenuData
			 * md=new MenuData("http://dhcmenuitem.dhero.cn/142615425540822113425540737808",
			 * foodList.getData().get(i).getFoodName(),
			 * foodList.getData().get(i).getSalNum().intValue(), 0,
			 * foodList.getData().get(i).getPrice(),
			 * foodList.getData().get(i).getId().intValue(),
			 * foodList.getData().get(i).getDes()); beanList.add(md); } String
			 * jsonStr=gson.toJson(beanList); System.out.println(jsonStr);
			 */
			request.setAttribute("busiInfo", list.get(0));
			request.setAttribute("salesList", salesList);
			request.setAttribute("foodList", foodList);
			request.getRequestDispatcher("wmcr/shop_detail.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void doAdd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Boss boss = (Boss) session.getAttribute("boss");
		String busiName = request.getParameter("busiName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		double avgCost = Double.valueOf(request.getParameter("avgCost"));
		String licence = request.getParameter("licence");
		double lat = 0.0;
		double lon = 0.0;
		HashMap<String, Double> hashmap = (HashMap<String, Double>) BaiduMap.getLatLon(address);
		if (hashmap != null) {
			lat = hashmap.get("lat");
			lon = hashmap.get("lon");
		}

		double starPrice = Double.valueOf(request.getParameter("starPrice"));
		double disFee = Double.valueOf(request.getParameter("disFee"));

		int onlinePay = Integer.valueOf(request.getParameter("onlinePay"));
		int isReserve = Integer.valueOf(request.getParameter("isReserve"));
		int isBusiness = Integer.valueOf(request.getParameter("isBusiness"));
		String des = request.getParameter("des");
		int typeId = Integer.valueOf(request.getParameter("typeId"));
		int cityId = Integer.valueOf(request.getParameter("cityId"));
		int state = 0;
		String logo = request.getParameter("logo");
		int bossId = boss.getId();
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String regDate = sdf.format(d);
		Businesses businesses = new Businesses(busiName, phone, address, avgCost, licence, lat, lon, starPrice, disFee,
				onlinePay, isReserve, isBusiness, des, typeId, bossId, cityId, state, logo, regDate);

		BusinessService bs = new BusinessServiceImpl();
		boolean result = bs.addBusinesses(businesses);
		PrintWriter out = response.getWriter();
		if (result) {
			out.print("<script>alert('提交成功!');location.href='bossManage/addbusi.jsp';</script>");
		} else {
			out.print("false");
		}
		out.close();
	}

	protected void doUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.valueOf(request.getParameter("id"));
		String busiName = request.getParameter("busiName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		double avgCost = Double.valueOf(request.getParameter("avgCost"));
		String licence = request.getParameter("licence");
		double lat = 0.0;
		double lon = 0.0;
		HashMap<String, Double> hashmap = (HashMap<String, Double>) BaiduMap.getLatLon(address);
		if (hashmap != null) {
			lat = hashmap.get("lat");
			lon = hashmap.get("lon");
		}

		double starPrice = Double.valueOf(request.getParameter("starPrice"));
		double disFee = Double.valueOf(request.getParameter("disFee"));

		int onlinePay = Integer.valueOf(request.getParameter("onlinePay"));
		int isReserve = Integer.valueOf(request.getParameter("isReserve"));
		int isBusiness = Integer.valueOf(request.getParameter("isBusiness"));
		String des = request.getParameter("des");
		int typeId = Integer.valueOf(request.getParameter("typeId"));
		int cityId = Integer.valueOf(request.getParameter("cityId"));
		int state = 0;
		String logo = request.getParameter("logo");

		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String regDate = sdf.format(d);
		Businesses businesses = new Businesses(id, busiName, phone, address, avgCost, licence, lat, lon, starPrice,
				disFee, onlinePay, isReserve, isBusiness, des, typeId, cityId, state, logo, regDate);

		BusinessService bs = new BusinessServiceImpl();
		boolean result = bs.updateBusinesses(businesses);
		PrintWriter out = response.getWriter();
		if (result) {
			out.print("<script>alert('提交成功!');location.href='bossManage/updateBusi.jsp';</script>");
		} else {
			out.print("<script>alert('提交失败!');location.href='bossManage/updateBusi.jsp';</script>");
		}
		out.close();
	}

	protected void doDel(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
