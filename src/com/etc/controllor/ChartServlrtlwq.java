package com.etc.controllor;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.service.impl.AccountlwqServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class ChartServlrtlwq
 */
@WebServlet("/ChartServlrtlwq")
public class ChartServlrtlwq extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChartServlrtlwq() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		  AccountlwqServiceImpl ai=new AccountlwqServiceImpl();
		  List list=new ArrayList();
		  list.add(ai.getSumUsers());
		  list.add(ai.getSumUsersStatus());
		  list.add(ai.getSumBoss());
		  list.add(ai.getSumBossStatus());
		  list.add(ai.getSumBusi());
		  list.add(ai.getSumBusiStatus());
		  list.add(ai.getSumOrders());
		  list.add(ai.getSumComments());
		  
		  Gson gson=new Gson();
		  String gsonStr=gson.toJson(list);
		  response.getWriter().print(gsonStr);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
