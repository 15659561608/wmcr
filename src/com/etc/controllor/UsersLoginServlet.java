package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Users;
import com.etc.service.impl.UsersServiceImpl;
import com.etc.services.UsersService;

/**
 * Servlet implementation class UsersLoginServlet
 */
@WebServlet("/uls.do")
public class UsersLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static UsersService us = new UsersServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsersLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String account = request.getParameter("account");
		System.out.println(account);
		String pwd = request.getParameter("pwd");
		System.out.println(pwd);
		List<Users> users = us.getUsersLogin(account, pwd);
		if(users!=null) {
			System.out.println("ok");
		}
		else {
			System.out.println("ehhehehe");
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
