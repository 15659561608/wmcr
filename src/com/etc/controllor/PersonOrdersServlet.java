package com.etc.controllor;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.OrdersLwq;
import com.etc.entity.Users;
import com.etc.service.impl.OrdersLServiceImpl;

/**
 * Servlet implementation class PersonOrdersServlet
 */
@WebServlet("/PersonOrdersServlet")
public class PersonOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonOrdersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    request.setCharacterEncoding("utf-8");
    //获取登录的账号名字
    Users users=(Users) request.getSession().getAttribute("users");
    String account=users.getAccount();
		String op = request.getParameter("op");
		//System.out.println(account+","+op);
		if("queryansByPage".equals(op)) {
			OrdersLServiceImpl osi=new OrdersLServiceImpl();
			List<OrdersLwq> list=osi.getOrdersBusi(account,"");
			// System.out.println(list);
			request.setAttribute("pd", list);
			//查询到转发到原来的页面
			request.getRequestDispatcher("wmcr/member_order.jsp").forward(request, response);
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
