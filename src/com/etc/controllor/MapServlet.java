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
import com.etc.entity.Type;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.service.impl.TypeServicecglImpl;
import com.etc.services.BusinessService;
import com.etc.util.BaiduMap;
import com.etc.util.LocationUtils;
import com.etc.util.PageData;

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
		
		//分页对象
		int page=1;
		int pageSize=10;
		if(request.getParameter("page")!=null) {
			page=Integer.valueOf(request.getParameter("page"));
		}
		if(request.getParameter("pageSize")!=null) {
			pageSize=Integer.valueOf(request.getParameter("pageSize"));
		}
		
		
		BusinessService bs=new BusinessServiceImpl();
		String address=request.getParameter("address");
		HashMap<String, Double> hashmap=BaiduMap.getLatLon(address);
		//获取分类列表
		List<Type> typeList=new TypeServicecglImpl().getType();
		
		//定义存储附近门店的集合
		List<BusinessesCity> busiList=new ArrayList<>();
		
		if("queryBusi".equals(op)) {
			//获取所有审核通过门店
			List<BusinessesCity> list=bs.getPassBusinesses();
			if(hashmap!=null) {
				
				//筛选附近的门店
				for (int i = 0; i < list.size(); i++) {
					double distance=LocationUtils.getDistance(hashmap.get("lat"),hashmap.get("lon"), list.get(i).getLat(), list.get(i).getLon());
					double disDouble=distance/1000;
					if(disDouble<=5.0) {
						busiList.add(list.get(i));
					}
				}
				
				//定义分页数据
				List<BusinessesCity> pageList=new ArrayList<>();
				if(busiList.size()>0 && busiList.size()>=pageSize) {
					for(int i=(page-1);i<pageSize;i++) {
						pageList.add(busiList.get(i));
					}
				}else if(busiList.size()<pageSize){
					for(int i=(page-1);i<busiList.size();i++) {
						pageList.add(busiList.get(i));
					}
				}else {
					request.setAttribute("msg","msg");
					request.getRequestDispatcher("wmcr/shop_list.jsp").forward(request, response);
				}
				PageData<BusinessesCity> pageData=new PageData<BusinessesCity>(pageList, busiList.size(), pageSize, page);
				request.setAttribute("pageData", pageData);
				request.setAttribute("typeList", typeList);
				request.setAttribute("address",address);
				request.getRequestDispatcher("wmcr/shop_list.jsp").forward(request, response);
			}else {
				request.setAttribute("address",address);
				request.setAttribute("typeList", typeList);
				request.setAttribute("msg","msg");
				request.getRequestDispatcher("wmcr/shop_list.jsp").forward(request, response);
			}
			
		}
		
		if("queryBusiByType".equals(op)) {
			//按类别获取所有审核通过门店
			int id=Integer.valueOf(request.getParameter("id"));
			List<BusinessesCity> list=bs.getPassBusinessesByType(id);
			if(hashmap!=null) {
				
				//筛选附近的门店
				for (int i = 0; i < list.size(); i++) {
					double distance=LocationUtils.getDistance(hashmap.get("lat"),hashmap.get("lon"), list.get(i).getLat(), list.get(i).getLon());
					double disDouble=distance/1000;
					if(disDouble<=5.0) {
						busiList.add(list.get(i));
					}
				}
				
				//定义分页数据
				List<BusinessesCity> pageList=new ArrayList<>();
				if(busiList.size()>0 && busiList.size()>=pageSize) {
					for(int i=(page-1);i<pageSize;i++) {
						pageList.add(busiList.get(i));
					}
				}else if(busiList.size()<pageSize){
					for(int i=(page-1);i<busiList.size();i++) {
						pageList.add(busiList.get(i));
					}
				}else {
					request.setAttribute("msg","msg");
					request.getRequestDispatcher("wmcr/shop_list.jsp").forward(request, response);
				}
				PageData<BusinessesCity> pageData=new PageData<BusinessesCity>(pageList, busiList.size(), pageSize, page);
				request.setAttribute("pageData", pageData);
				request.setAttribute("typeId", id);
				request.setAttribute("typeList", typeList);
				request.setAttribute("address",address);
				request.getRequestDispatcher("wmcr/shop_list.jsp").forward(request, response);
			}else {
				request.setAttribute("address",address);
				request.setAttribute("typeId", id);
				request.setAttribute("typeList", typeList);
				request.setAttribute("msg","msg");
				request.getRequestDispatcher("wmcr/shop_list.jsp").forward(request, response);
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
}
