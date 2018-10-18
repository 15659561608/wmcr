package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Comment;
import com.etc.service.impl.CommentServiceImpl;
import com.etc.services.CommentService;
import com.etc.util.PageData;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommentService cs = new CommentServiceImpl();

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
		System.out.println(op);
		
		if ("queryComment".equals(op)) {
			int page = 1;
			int pageSize = 10;
			int busId = (int) request.getAttribute("busssId");
			System.out.println("////////////" + busId);
			if (null != request.getParameter("page")) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			if (null != request.getParameter("pageSize")) {
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
			}

			PageData<Comment> comment = (PageData<Comment>) cs.queryComment(page, pageSize, busId);

			request.setAttribute("c", comment);

			// 从当前控制器跳转到jsp页面[问题列表]，跳转的方法叫做转发
			request.getRequestDispatcher("wmcr/shop_comment.jsp").forward(request, response);

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
