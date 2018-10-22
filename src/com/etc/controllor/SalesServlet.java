package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Boss;
import com.etc.entity.Sales;
import com.etc.entity.SalesBusi;
import com.etc.entity.SalesData;
import com.etc.service.impl.SalesServiceImpl;
import com.etc.services.SalesService;
import com.google.gson.Gson;

/**
 * Servlet implementation class SalesServlet
 */
@WebServlet("/SalesServlet")
public class SalesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String op = "null";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		HttpSession session=request.getSession();
		Boss boss=(Boss) session.getAttribute("boss");
		SalesService ss=new SalesServiceImpl();
		if("null".equals(op)) {
			int bossId=boss.getId();
			SalesData sd=new SalesData();
			sd.setData(ss.getSalesByBossId(bossId));
			Gson gson=new Gson();
			String jsonData=gson.toJson(sd);
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/json");
			PrintWriter out=response.getWriter();
			out.print(jsonData);
		}
		if("queryHis".equals(op)) {
			int bossId=boss.getId();
			SalesData sd=new SalesData();
			sd.setData(ss.getHisSalesByBossId(bossId));
			Gson gson=new Gson();
			String jsonData=gson.toJson(sd);
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/json");
			PrintWriter out=response.getWriter();
			out.print(jsonData);
		}
		if("del".equals(op)) {
			int id=Integer.valueOf(request.getParameter("id"));
			if(ss.delSales(id)) {
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html");
				PrintWriter out=response.getWriter();
				out.print("<script>alert('删除成功!');location.href='bossManage/sales.jsp';</script>");
			}
		}
		if("updateInfo".equals(op)) {
			int id=Integer.valueOf(request.getParameter("id"));
			request.setAttribute("SalesInfo", ss.getSalesBySalId(id).get(0));
			request.getRequestDispatcher("bossManage/updateSales.jsp").forward(request, response);
		}
		if("update".equals(op)) {
			int salId=Integer.valueOf(request.getParameter("salId"));
			String title=request.getParameter("title");
			double discount=Double.valueOf(request.getParameter("discount"));
			String content=request.getParameter("content");
			int state=0;
			SimpleDateFormat simple=new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
			String pubDate=simple.format(new Date());
			Sales s=new Sales(salId, title, discount, content, state, pubDate);
			boolean result=ss.updateSales(s, salId);
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			if(result) {
				out.print("<script>alert('修改成功!');location.href='bossManage/updateSales.jsp';</script>");
			}else {
				out.print("<script>alert('修改失败!');location.href='bossManage/updateSales.jsp';</script>");
			}
		}
		if("add".equals(op)) {
			String title=request.getParameter("title");
			double discount=Double.valueOf(request.getParameter("discount"));
			String content=request.getParameter("content");
			int state=0;
			SimpleDateFormat simple=new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
			String pubDate=simple.format(new Date());
			int busiId=Integer.valueOf(request.getParameter("busiId"));
			Sales s=new Sales(title, discount,busiId, content, pubDate);
			boolean result=ss.addSales(s);
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			if(result) {
				out.print("<script>alert('提交成功!');location.href='bossManage/updateSales.jsp';</script>");
			}else {
				out.print("<script>alert('提交失败!');location.href='bossManage/updateSales.jsp';</script>");
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
