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
import com.etc.service.impl.ResetPwdServiceImpl;
import com.etc.service.impl.UsersServiceImpl;
import com.etc.services.ResetPwdService;
import com.etc.services.UsersService;
import com.etc.util.MD5Util;

/**
 * Servlet implementation class UsersLoginServlet
 */
@WebServlet("/uls.do")
public class UsersLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UsersService us = new UsersServiceImpl();
	private static ResetPwdService rps = new ResetPwdServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsersLoginServlet() {
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
		// 请求编码
		request.setCharacterEncoding("utf-8");
		// 响应编码
		response.setCharacterEncoding("utf-8");
		// 响应类型
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String op = request.getParameter("op");
		if (op.equals("zh")) {
			String msg = "";
			String account = request.getParameter("account");

			if (account.isEmpty()) {
				msg = "账号不能为空";
			} else {
				Users u = rps.queryUsers(account);
				if (!account.equals(null) && u == null) {
					msg = "账号不正常";
				}
				if (u != null && !account.equals(null)) {
					msg = "账号正常";
				}

				out.print(msg);
				out.close();
			}
		} else if (op.equals("chaxun")) {
			String msg = "";
			String account = request.getParameter("account");
			String pwd = request.getParameter("pwd");
			// MD5算法加密
			String pwd1 = MD5Util.getEncodeByMd5(pwd);
			List<Users> users = us.getUsersLogin(account, pwd1);

			if (users.size() == 0) {
				msg = "密码不正确,请重新输入";
				out.print("<script>alert('登录失败');location.href='wmcr/index.jsp'</script>");
			} else if (users.size() > 0) {
				msg = "密码正确";
				request.getSession().setAttribute("users", users.get(0));
				// 将用户登录的信息存储在cookie
				// Cookie cookie =new Cookie("account",users.);
				// Cookie cookie1 =new Cookie("pwd1",userPwd);
				// //使用response.addCookie
				// response.addCookie(cookie);
				// response.addCookie(cookie1);
				out.print("<script>alert('登录成功');location.href='mainPage.jsp'</script>");
			}
			out.print(msg);
			out.close();
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

}
