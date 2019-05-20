package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Administor;
import com.etc.service.impl.AdminServiceImpl;
import com.etc.services.AdminService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/back/Lg.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     AdminService as=new AdminServiceImpl();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		String op = request.getParameter("op");
		/**
		 * 后台登录
		 */
		if (("loginhou").equals(op)) {
		

			String account = request.getParameter("adAccount");
			String pwd = request.getParameter("adPwd");

			Administor a = as.loginad(account, pwd);
			if (a == null) {
				out.println("<script>alert('登陆失败');location.href='login.jsp'</script>");
			} else {
				request.getSession().setAttribute("administor", a);
				out.println("<script>alert('登陆成功');location.href='index.jsp'</script>");
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
