package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Food;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.services.FoodServicesf;
import com.etc.util.PageData;
import com.google.gson.Gson;

/**
 * Servlet implementation class FoodsServletf
 */
@WebServlet("/fsf.do")
public class FoodsServletf extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FoodServicesf fsf = new FoodsServiceImplf();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FoodsServletf() {
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
		if ("addFoods".equals(op)) {

			String foodName = request.getParameter("foodName");
			System.out.println(foodName);
			String price = request.getParameter("price");
			String discount = request.getParameter("discount");
			String num = request.getParameter("num");
			String salNum = request.getParameter("salNum");
			String des = request.getParameter("des");
			String logo = request.getParameter("logo");
			String busid = request.getParameter("busid");
			String state = request.getParameter("state");

			Food food = new Food(0, foodName, Double.valueOf(price), Double.valueOf(discount), Integer.valueOf(num),
					Integer.valueOf(salNum), des, logo, Integer.valueOf(busid), Integer.valueOf(state));
			boolean flag = fsf.addFoods(food);

			if (flag) {
				request.getRequestDispatcher("foodsManager.jsp").forward(request, response);
			}

		} else if ("queryFoods".equals(op)) {

			int page = 1;// 默认第一页
			int pageSize = 5;// 默认每页显示10条
			// 如果用户传递的参数不为空
			if (request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}

			if (request.getParameter("pageSize") != null) {
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
			}

			// 增加了模糊查询的部分;
			String keywords = "";
			if (request.getParameter("keywords") != null) {
				keywords = request.getParameter("keywords");
			}

			// 之前的代码要变
			PageData<Food> pd = fsf.getFoods(page, pageSize, keywords);
//			pd.getData().forEach(System.out::println);
			
			request.setAttribute("pd", pd);
			// 需要将每次模糊查询的关键字传递回来给jsp
			request.setAttribute("keywords", keywords);
			// 从当前控制器跳转到jsp页面[问题列表]，跳转的方法叫做转发
			request.getRequestDispatcher("bossManage/foodsManager.jsp").forward(request, response);
		}else if("delFoods".equals(op)) {
			String id=request.getParameter("id");
			//System.out.println(id);
			boolean flag=fsf.delFoods(Integer.valueOf(id));
			if(flag) {
				request.getRequestDispatcher("bossManage/foodsManager.jsp").forward(request, response);
			}
		}else if("updateFoods".equals(op)) {
			String id=request.getParameter("id");
			String foodName = request.getParameter("foodName");
			System.out.println(foodName);
			String price = request.getParameter("price");
			String discount = request.getParameter("discount");
			String num = request.getParameter("num");
			String salNum = request.getParameter("salNum");
			String des = request.getParameter("des");
			String logo = request.getParameter("logo");
			
			String state = request.getParameter("state");
			Food food=new Food(Integer.valueOf(id),foodName,Double.valueOf(price),Double.valueOf(discount),Integer.valueOf(num),Integer.valueOf(salNum),des,logo,Integer.valueOf(state)); 
			boolean flag=fsf.update(food);
			if(flag) {
				request.getRequestDispatcher("bossManage/foodsManager.jsp").forward(request, response);
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
