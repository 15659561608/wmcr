package com.etc.controllor;

import java.awt.print.Printable;
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
import com.etc.entity.Businesses;
import com.etc.service.impl.BossServiceImpl;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.services.BossService;
import com.etc.services.BusinessService;
import com.etc.util.MD5Util;
import com.google.gson.Gson;

/**
 * Servlet implementation class BossInfoServlet
 */
@WebServlet("/bs.do")
public class BossServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BossServlet() {
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
		
		BossService bs=new BossServiceImpl();
		
		PrintWriter out=response.getWriter();
		
		if("accountCheck".equals(op)) {
			
		}
		
		if("login".equals(op)) {
			
			String account=request.getParameter("account");
			String pwd=MD5Util.getEncodeByMd5(request.getParameter("pwd"));
			Boss boss=bs.checkLogin(account, pwd);
			session.setAttribute("bossId", boss.getId());
			if(boss!=null) {
				out.print(true);
				//传值给MenDianTuShowServlet
				session.setAttribute("bossId", boss.getId());
				session.setAttribute("boss", boss);
			
				session.setMaxInactiveInterval(3600*6);
			}else {
				out.print(false);
			}
		}
		if("logout".equals(op)) {
				session.removeAttribute("bossId");
				session.removeAttribute("boss");
				response.sendRedirect("/wmcr/bossManage/login.jsp");
		}
		if("updatePwd".equals(op)) {
			String oldPwd=MD5Util.getEncodeByMd5(request.getParameter("oldPwd"));
			String pwd=MD5Util.getEncodeByMd5(request.getParameter("pwd"));
			Boss b=(Boss)session.getAttribute("boss");
			if(b.getPwd().equals(oldPwd)) {
				boolean result=bs.updatePwd(pwd,b.getId());
				if(result) {
					out.print("true");
				}else {
					out.print("false");
				}
			}else {
				out.print("密码错误");
			}
		}
		if("select".equals(op)) {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/json");
			//查询店铺信息
			BusinessService bss= new BusinessServiceImpl();
			//查询商户的ID
			BossService boss = new BossServiceImpl();
			Boss b=(Boss)session.getAttribute("boss");
		    List<Businesses> list = bss.selectBusName(b.getId());
			Gson gson=new Gson();
			String jsonStr=gson.toJson(list);
			out.print(jsonStr);
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
