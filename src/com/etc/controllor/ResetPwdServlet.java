package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Users;
import com.etc.service.impl.ResetPwdServiceImpl;
import com.etc.services.ResetPwdService;
import com.etc.util.MD5Util;
import com.etc.util.Message;

/**
 * Servlet implementation class ResetPwd
 */
@WebServlet("/wmcr/Rp.do")
public class ResetPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       ResetPwdService rps=new ResetPwdServiceImpl();    
       
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPwdServlet() {
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
		 * 获取验证码
		 */
		if (op.equals("yzm")) {
			 String phone=request.getParameter("account");
				Random random=new Random();
				int  code=random.nextInt(1000000);
				
				//把随机数存进session
				request.getSession().setAttribute("code", code);
			    Message m=new Message();
			    m.getRequest2(phone, String.valueOf(code));
			request.getRequestDispatcher("pwd_forget.jsp").forward(request, response);
		out.print(phone);
		out.close();
		}
		/**
		 * 验证账户和验证码
		 */
		else if (op.equals("first")) {
			
		String account=	request.getParameter("phone");
	
		String yzm=request.getParameter("captcha2");	
		
		Users u=rps.queryUsers(account);
		//把之前存进去的code取出来
		HttpSession session  = request.getSession();
		int co=(int) session.getAttribute("code");
		
		
		if (u==null) {
			out.println("<script>alert('账户不存在');location.href='pwd_forget.jsp'</script>");	
			
		} 
		else if(Integer.valueOf(yzm)!=co){
			out.println("<script>alert('验证码不正确');location.href='pwd_forget.jsp'</script>");
		}
		else {
			request.getSession().setAttribute("users", u);
			out.println("<script>location.href='pwd_reset.jsp'</script>");
		}
		
		} 
		/**
		 * 重置密码页面
		 */
		else if (op.equals("second")) {
			Users us=(Users) request.getSession().getAttribute("users");
			String account=us.getAccount();
			
			String pwd=request.getParameter("pass");
			 pwd = MD5Util.getEncodeByMd5(pwd);
				Users u=new Users(account,pwd);
				boolean flag=rps.updateUsers(u);
				if (flag) {
					out.println("<script>location.href='pwd_success.jsp'</script>");
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
