package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Type;
import com.etc.entity.Typecgl;
import com.etc.service.impl.TypeServicecglImpl;
import com.etc.services.TypeServicecgl;
import com.etc.util.PageData;
import com.google.gson.Gson;

/**
 * Servlet implementation class TypeServletcgl
 */
@WebServlet("/Tsc.do")
public class TypeServletcgl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TypeServicecgl ts = new TypeServicecglImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TypeServletcgl() {
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
		response.setContentType("text/html;charset=Utf-8");
		String op = request.getParameter("op");

		if ("queryType".equals(op)) {
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

			PageData<Typecgl> type = (PageData<Typecgl>) ts.queryType(page, pageSize, keywords);

			request.setAttribute("t", type);
			request.setAttribute("keywords", keywords);
			request.getRequestDispatcher("back/view/typeList.jsp").forward(request, response);
		}

		if ("addType".equals(op)) {

			String title = request.getParameter("title");
			String pId = request.getParameter("pId");

			boolean flag = ts.addType(title, Integer.valueOf(pId));
			if (flag) {
				request.getRequestDispatcher("back/view/addType.jsp").forward(request, response);
			}
		}
		if ("findType".equals(op)) {

			response.setContentType("application/json");
			PrintWriter out = response.getWriter();
			List<Type> type = ts.getType();

			Gson gson = new Gson();

			String jsonStr = gson.toJson(type);

			out.print(jsonStr);
		}
		if ("update".equals(op)) {
			String id = request.getParameter("id");
			String fuTitle = request.getParameter("fuTitle");
			
			boolean flag=ts.updateType(Integer.valueOf(id),Integer.valueOf(fuTitle));
			
			if (flag) {
				request.getRequestDispatcher("back/view/typeList.jsp").forward(request, response);
					
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
