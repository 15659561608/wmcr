package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.etc.entity.Boss;
import com.etc.service.impl.BossServiceImpl_czd;
import com.etc.services.BossService_czd;
import com.etc.util.Message;


/**
 * Servlet implementation class BossRegisterServlet
 */
@WebServlet({ "/BossRegisterServlet", "/brs.do" })
public class BossRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      BossService_czd bsc = new BossServiceImpl_czd(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BossRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");		
		PrintWriter out = response.getWriter();
		String op =request.getParameter("op");	
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		if("checkPhone".equals(op)) {
			docheckPhone(request, response);
		}
		else if("yzm".equals(op)) {
				System.out.println("yzm");
				doYzm(request, response);
			}
		}
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void docheckPhone(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//设置编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");		
		PrintWriter out = response.getWriter();
		String data = "商户未被注册 ture";
		// 先获取用户名
		String bossAccount= request.getParameter("phone");
		List<Boss>  list= bsc.isExis(bossAccount);
		if ( list.size()!=0) {//用户在数据库中存在
			data = "商户已经被注册 false";
		}
		//response.getWriter().println(data);
		out.println(data);
		out.close();
	}
	
	protected void doYzm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//设置编码
		System.out.println("11111");
		PrintWriter out = response.getWriter();
		String acc = request.getParameter("phone");
		System.out.println(acc);
		// System.out.println(account);
		Random random = new Random();
		int code = random.nextInt(1000000);
        System.out.println(code);
		// 把随机数存进session
		request.getSession().setAttribute("code", code);
		Message m = new Message();
		m.getRequest2(acc, String.valueOf(code));
		//request.getRequestDispatcher("wmcr/index.jsp").forward(request, response);
		out.print(acc);
		out.close();
		
	}
	
}
