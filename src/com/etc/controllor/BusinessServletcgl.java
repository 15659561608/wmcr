package com.etc.controllor;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.dao.BusinessDaocgl;
import com.etc.entity.Businesses;
import com.etc.entity.City;
import com.etc.service.impl.BusinessServicecglImpl;
import com.etc.services.BusinessServicecgl;
import com.etc.util.PageData;

/**
 * Servlet implementation class BusinessServletcgl
 */
@WebServlet("/Bus.do")
public class BusinessServletcgl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       BusinessServicecgl bus=new BusinessServicecglImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessServletcgl() {
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
		response.setContentType("text/html;charset=Utf-8");
		String op=request.getParameter("op");
		
		if ("queryBusiness".equals(op)) {
			int page = 1;
			int pageSize = 10;
			String keywords = "";
			if (null != request.getParameter("page")) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			if (null != request.getParameter("pageSize")) {
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
			}
			if (null != request.getParameter("keywords")) {
				keywords = request.getParameter("keywords");
			}

			PageData<Businesses> businesses = (PageData<Businesses>) bus.queryBusiness(page, pageSize, keywords);

			request.setAttribute("b", businesses);
			request.setAttribute("keywords", keywords);
			request.getRequestDispatcher("back/view/businesses.jsp").forward(request, response);
		}
		if ("update".equals(op)) {
			String id=request.getParameter("id");
			String state=request.getParameter("state");
			
			boolean flag=bus.updateBusiness(Integer.valueOf(state),Integer.valueOf(id));
			
			if (flag) {
				request.getRequestDispatcher("back/view/businesses.jsp").forward(request, response);
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
