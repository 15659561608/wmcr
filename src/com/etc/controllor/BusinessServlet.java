package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.BusinessesData;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.services.BusinessService;
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
		
		//显示门店列表
		if("null".equals(op)) {
			Gson gson=new Gson();
			BusinessesData bd=new BusinessesData();
			bd.setData(bs.getBusinesses());
			String jsonData=gson.toJson(bd);
			response.setContentType("text/json");
			PrintWriter out=response.getWriter();
			out.println(jsonData);
		}
		if("add".equals(op)) {
			doAdd(request, response);
		}
		if("update".equals(op)) {
			doUpdate(request, response);
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
		doGet(request, response);
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
