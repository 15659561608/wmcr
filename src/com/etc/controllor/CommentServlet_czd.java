package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Comment_czd;
import com.etc.entity.Customers;
import com.etc.service.impl.CommentServiceImpl_czd;
import com.etc.service.impl.CustomersServiceImpl_czd;
import com.etc.services.CommentService_czd;
import com.etc.services.CustomersService_czd;
import com.etc.util.PageData;

/**
 * Servlet implementation class CommentServlet_czd
 */
@WebServlet({ "/CommentServlet_czd", "/cmt.do" })
public class CommentServlet_czd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet_czd() {
        super();
        // TODO Auto-generated constructor stub
    }

    private CommentService_czd csc = new CommentServiceImpl_czd();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String op = request.getParameter("op");
		if("queryCommentByPage".equals(op)) {
			doQueryCommentByPage(request, response);
			// 调用doQueryusers 
		}else if ("del".equals(op)) {
			// 调用doDel
			doDel(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void doQueryCommentByPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 分页查询操作
		int page =1;
		int pageSize =10;
		String keywords ="";
		if(request.getParameter("keywords")!=null) {
			keywords = request.getParameter("keywords");
		}
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}if(request.getParameter("pageSize")!=null) {
			pageSize = Integer.parseInt(request.getParameter("pageSize"));
		}
		PageData<Comment_czd> pd = csc.getCommentByPage(page, pageSize, keywords);
		request.setAttribute("keywords", keywords);
	//	request.setAttribute("pageSize", pageSize);		
		request.setAttribute("pd", pd);
		request.getRequestDispatcher("/back/view/commentList.jsp").forward(request, response);
	}
	protected void doDel(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 删除操作
		String comId = request.getParameter("comId");
		comId= comId.trim();//去除空格
		//
		boolean flag = csc.deleteCommentById(Integer.parseInt(comId));

		// 直接跳转到显示界面[因为之前并没有使用mvc模式，所以这里大家可以直接跳转到users.jsp]
		// 遗憾 ：1 没有信息提示 2 因为之前并没有使用mvc模式,所以这里请求不合适
		request.getRequestDispatcher("/back/view/commentList.jsp").forward(request, response);
	}
	
}
