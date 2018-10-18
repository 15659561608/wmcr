package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Comment;
import com.etc.entity.Users;
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
		response.setContentType("text/html;charset=utf-8");
		String op = request.getParameter("op");
		PrintWriter out = response.getWriter();
		int busId = (int) request.getSession().getAttribute("busss");

		if ("queryComment".equals(op)) {
			int page = 1;
			int pageSize = 10;

			if (null != request.getParameter("page")) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			if (null != request.getParameter("pageSize")) {
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
			}

			PageData<Comment> comment = (PageData<Comment>) cs.queryComment(page, pageSize, busId);
			int i = comment.getTotal();

			request.setAttribute("total", i);
			request.setAttribute("c", comment);

			
			request.getRequestDispatcher("wmcr/shop_comment.jsp").forward(request, response);

		}

		if ("addComment".equals(op)) {
			String content = request.getParameter("content");
			String praise = request.getParameter("praise");
			Date getdate = Calendar.getInstance().getTime();
			String comDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(getdate);
			
			Users u = (Users) request.getSession().getAttribute("users");
			int userId = u.getId();
			// 判断用户是否买过这家店的东西
			boolean flag = cs.queryorder(userId, busId);
			// System.out.println(userId);
			// System.out.println(flag);
			// 判断用户是否登录
			if (u == null) {

				out.print("<script>alert('请先登录');location.href='wmcr/index.jsp'</script>");
				// out.print("<script>alert('请先登录');location.href='wmcr/shop_comment.jsp'</script>");

			}
			// 判断用户是否买过这家店的东西
			if (flag == false) {
				out.print("<script>alert('你还没下过单不可评论');location.href='wmcr/shop_comment.jsp'</script>");
				// request.getRequestDispatcher("wmcr/shop_comment.jsp").forward(request,
				// response);
			}

			else {

				boolean f = cs.addComment(content, comDate, Integer.valueOf(praise), userId, busId);
				if (f) {
					out.print("<script>alert('评论成功');location.href='wmcr/shop_comment.jsp'</script>");
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
