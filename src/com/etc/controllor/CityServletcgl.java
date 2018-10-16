package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.City;
import com.etc.service.impl.CityServicecglImpl;
import com.etc.services.CityServicecgl;
import com.etc.util.PageData;

/**
 * Servlet implementation class CityServletcgl
 */
@WebServlet("/Cs.do")
public class CityServletcgl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CityServicecgl cs = new CityServicecglImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CityServletcgl() {
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
		if ("queryCity".equals(op)) {

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

			PageData<City> city = (PageData<City>) cs.queryCity(page, pageSize, keywords);

			request.setAttribute("pd", city);
			request.setAttribute("keywords", keywords);
			request.getRequestDispatcher("back/view/city.jsp").forward(request, response);

		}
		if ("del".equals(op)) {
			String id = request.getParameter("id");

			boolean flag = cs.delCity(Integer.valueOf(id));
			if (flag) {
				out.print("<script>alert('删除成功');location.href='back/view/city.jsp'</script>");
			
			} else {
				out.print("<script>alert('城市中还有店铺,删除失败');location.href='back/view/city.jsp'</script>");
			}
		}
		if ("addCity".equals(op)) {
			String cityName = request.getParameter("cityName");
			
			boolean flag = cs.addCity(cityName);
			if (flag) {
				out.print("<script>alert('添加成功');location.href='back/view/addCity.jsp'</script>");
				

			} else {
				out.print("<script>alert('城市已存在,添加失败');location.href='back/view/addCity.jsp'</script>");

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
