package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Customers;
import com.etc.service.impl.CustomersServiceImpl_czd;
import com.etc.services.CustomersService_czd;
import com.etc.util.PageData;



/**
 * Servlet implementation class CustomersServlet_czd
 */
@WebServlet({ "/CustomersServlet_czd", "/csc.do" })
public class CustomersServlet_czd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomersServlet_czd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

    private CustomersService_czd csc = new CustomersServiceImpl_czd();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String op = request.getParameter("op");
		if("queryCustomersByPage".equals(op)) {
			doQueryCustomersByPage(request, response);
			// 调用doQueryusers 
		}else if ("updateCustomerState".equals(op)) {
			// 调用doDel
			doUpdateCustomerState(request, response);
		}else if ("queryCustomersByOrder".equals(op)) {
			doQueryCustomersByOrder(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void doQueryCustomersByPage(HttpServletRequest request, HttpServletResponse response)
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
		PageData<Customers> pd = csc.getCustomersByPage(page, pageSize, keywords);
		request.setAttribute("keywords", keywords);
	//	request.setAttribute("pageSize", pageSize);		
		request.setAttribute("pd", pd);
		request.getRequestDispatcher("/back/view/userList.jsp").forward(request, response);
	}
	
	protected void doUpdateCustomerState(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 修改用户状态操作
		String userId = request.getParameter("userId");
		String state = request.getParameter("state");
		boolean flag = csc.updateCustomersState(Integer.parseInt(userId), Integer.parseInt(state));
		// 直接跳转到显示界面[因为之前并没有使用mvc模式，所以这里大家可以直接跳转到users.jsp]
		// 遗憾 ：1 没有信息提示 2 因为之前并没有使用mvc模式,所以这里请求不合适
		request.getRequestDispatcher("/back/view/userList.jsp").forward(request, response);
	}
	protected void doQueryCustomersByOrder(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 排列查询操作
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
int flag = 1;
		PageData<Customers> pd = csc.getCustomersByOrder(page, pageSize, keywords, flag);
		request.setAttribute("keywords", keywords);
	//	request.setAttribute("pageSize", pageSize);		
		request.setAttribute("pd", pd);
		request.getRequestDispatcher("/back/view/userList.jsp").forward(request, response);
	}
	
}
