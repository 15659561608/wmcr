package com.etc.controllor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Users;

/**
 * Servlet implementation class OrderHandlerServler
 */
@WebServlet("/ohs.do")
public class OrderHandlerServler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderHandlerServler() {
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
		HttpSession session=request.getSession();
		Users user=(Users) session.getAttribute("users");
		System.out.println(user);
		//下单
		if("add".equals(op)) {
			//获取商品编号
			String ids=request.getParameter("ids");
			ids=ids.substring(0,ids.length()-1);
			String id[]=ids.split(",");
			for (int i = 0; i < id.length; i++) {
				
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
