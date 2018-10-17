package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Boss;
import com.etc.entity.BusinessesCity;
import com.etc.entity.Comment;
import com.etc.entity.Food;
import com.etc.util.PageData;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CommentServlet() {
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
		response.setContentType("html/text;charset=utf-8");
		String op = request.getParameter("op");
		 PrintWriter out=response.getWriter();
		if ("queryComment".equals("op")) {

		
			BusinessesCity bus=(BusinessesCity)request.getSession().getAttribute("busss");
			System.out.println("**************"+bus);
			int busId = bus.getId();
			System.out.println("////////////"+busId);
			
			// 从当前控制器跳转到jsp页面[问题列表]，跳转的方法叫做转发
			request.getRequestDispatcher("bossManage/foodsManage.jsp").forward(request, response);

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
