package com.etc.controllor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Distributor;
import com.etc.service.impl.DistributorServiceImpl;
import com.etc.services.DistributorService;
import com.etc.util.PageData;

/**
 * Servlet implementation class DistributorServlet
 */
@WebServlet("/Ds.do")
public class DistributorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DistributorService ds = new DistributorServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DistributorServlet() {
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
		
		if (op.equals("queryDis")) {
			int page = 1;
			int pageSize = 5;
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
			
			PageData<Distributor> dis = ds.queryDis(page, pageSize, keywords);

			request.setAttribute("d", dis);
			request.setAttribute("keywords", keywords);
			request.getRequestDispatcher("back/view/distributor.jsp").forward(request, response);

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
