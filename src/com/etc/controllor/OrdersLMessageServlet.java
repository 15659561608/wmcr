package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Boss;
import com.etc.entity.BusinessesData;
import com.etc.entity.OrdersLMessageData;
import com.etc.entity.OrdersLwq;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.service.impl.OrdersLServiceImpl;
import com.etc.services.BusinessService;
import com.google.gson.Gson;

/**
 * Servlet implementation class OrdersLMessageServlet
 */
@WebServlet("/OrdersLMessageServlet")
public class OrdersLMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrdersLMessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op = "null";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}

		OrdersLServiceImpl olsi=new OrdersLServiceImpl();

		HttpSession session = request.getSession();
		Boss boss = (Boss) session.getAttribute("boss");
		// 显示门店列表
		if ("null".equals(op)) {
			Gson gson = new Gson();
			OrdersLMessageData od=new OrdersLMessageData();
			od.setData(olsi.getOrdersBusi(boss.getAccount(), ""));
			
			String jsonData = gson.toJson(od);
			response.setContentType("text/json");
			PrintWriter out = response.getWriter();
			//System.out.println(jsonData);
			out.println(jsonData);
			out.close();
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
