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
		String pwd = request.getParameter("pwd");
		List<Users> users = us.getUsersLogin(account, pwd);
		System.out.println(users.get(0));
		if(!(users.size()>0)) {
			//用户名或密码错误
			out.print("<script>alert('登录失败');location.href='wmcr/index.jsp'</script>");
		} else {
			request.getSession().setAttribute("users", users.get(0));
			//将用户登录的信息存储在cookie
//			Cookie  cookie =new Cookie("account",users.);
//			Cookie  cookie1 =new Cookie("pwd",userPwd);
//			//使用response.addCookie
//			response.addCookie(cookie);
//			response.addCookie(cookie1);
			out.print("<script>alert('登录成功');location.href='wmcr/mainPage.jsp'</script>");

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
