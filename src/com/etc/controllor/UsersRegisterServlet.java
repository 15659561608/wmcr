package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Users;
import com.etc.service.impl.ResetPwdServiceImpl;
import com.etc.service.impl.UsersServiceImpl;
import com.etc.services.ResetPwdService;
import com.etc.services.UsersService;
import com.etc.util.MD5Util;
import com.etc.util.Message;

/**
 * Servlet implementation class UsersRegisterServlet
 */
@WebServlet("/urs.do")
public class UsersRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UsersService us = new UsersServiceImpl();
	private static ResetPwdService rps = new ResetPwdServiceImpl();
	private static String account = null;
	private static String yzm = null;
	private static String pwd1 = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsersRegisterServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String op = request.getParameter("op");
		/**
		 * 获取验证码
		 */
		if (op.equals("yzm")) {
			account = request.getParameter("account1");
			//System.out.println(account);
			Users u = rps.queryUsers(account);
			//判断账户是否存在，存在不发送验证码
			if (u == null) {
				// System.out.println(account);
				//生成随机数
				Random random = new Random();
				int code = random.nextInt(1000000);
				//把随机数存进session
				session.setAttribute("code", code);
				//调用短信验证接口
				Message m = new Message();
				//发送验证码至手机
				m.getRequest2(account, String.valueOf(code));
				//request.getRequestDispatcher("wmcr/index.jsp").forward(request, response);
				out.print(account);
				out.close();
			}
			else {
				out.println("<script>alert('账户已经存在')</script>");
				request.getRequestDispatcher("wmcr/index.jsp").forward(request, response);
			}
		} else if (op.equals("register")) {
			account = request.getParameter("account1");
			yzm = request.getParameter("captcha2");
			String pwd = request.getParameter("pwd1");
			String repwd = request.getParameter("repwd");
			//如果密码相等加密
			if(pwd.equals(repwd)) {
				// MD5加密
				pwd1 = MD5Util.getEncodeByMd5(pwd);
				String pwd2 = MD5Util.getEncodeByMd5(repwd);
			}
			
			int co = (int) session.getAttribute("code");

			if (Integer.valueOf(yzm) != co) {
				out.println("<script>alert('验证码不正确')</script>");
			} else {
				Users u1 = new Users(account, pwd1);
				boolean flag = us.getUsersRegister(u1);
				if (flag) {
					out.println("<script>alert('注册成功')</script>");
					request.getRequestDispatcher("wmcr/index.jsp").forward(request, response);
				} else {
					out.println("<script>alert('注册失败')</script>");
					request.getRequestDispatcher("wmcr/index.jsp").forward(request, response);
				}
			}

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
