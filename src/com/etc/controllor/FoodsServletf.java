package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Food;
import com.etc.entity.Foodf;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.services.FoodServicesf;
import com.etc.util.PageData;

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
		 PrintWriter out=response.getWriter();	
		if ("addFoods".equals(op)) {
				System.out.println(op);
			String foodName = request.getParameter("foodName");
			System.out.println(foodName);
			String price = request.getParameter("price");
			String discount = request.getParameter("discount");
			String num = request.getParameter("num");
			String salNum = request.getParameter("salNum");
			String des = request.getParameter("des");
			String logo = request.getParameter("logo");
			System.out.println(logo);
			String busid = request.getParameter("busiName");
			System.out.println(busid);
			String state = request.getParameter("state");
			
			Food food = new Food(0, foodName, Double.valueOf(price), Double.valueOf(discount), Integer.valueOf(num),
					Integer.valueOf(salNum), des, logo, Integer.valueOf(busid), Integer.valueOf(state));
			boolean flag = fsf.addFoods(food);
			System.out.println(flag);

			if (flag) {
				request.getRequestDispatcher("bossManage/foodsManage.jsp").forward(request, response);
			}

		}else if("queryFoods".equals(op)){
		//	System.out.println(op);
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
		//int busid = (int) request.getSession().getAttribute("busid");
		//System.out.println("111"+busid);
		/*List<Businesses> list=bsf.queryBusinesses();
		list.forEach(System.out::println);
		*/
		// System.out.println(busId);
		// 之前的代码要变
		PageData<Foodf> pd = fsf.getFoods(page, pageSize, keywords);
	//	List<Foodf> list=pd.getData();
	//	list.forEach(System.out::println);
		int total=pd.getTotal();
		request.setAttribute("total", total);
		request.setAttribute("pd", pd);
		// 需要将每次模糊查询的关键字传递回来给jsp
		request.setAttribute("keywords", keywords);
		// 从当前控制器跳转到jsp页面[问题列表]，跳转的方法叫做转发
		request.getRequestDispatcher("bossManage/foodsManage.jsp").forward(request, response);

	}else if("delFoods".equals(op))
	{
		String id = request.getParameter("id");
		// System.out.println(id);
		boolean flag = fsf.delFoods(Integer.valueOf(id));
		if (flag) {
			request.getRequestDispatcher("bossManage/foodsManage.jsp").forward(request, response);
		}
	}else if("updateFoods".equals(op))
	{
		System.out.println("op" + op);
		String id = request.getParameter("id");
		System.out.println("菜名111111111" + id);
		String foodName = request.getParameter("foodName");
		System.out.println("菜名" + foodName);
		String price = request.getParameter("price");
		String discount = request.getParameter("discount");
		String num = request.getParameter("num");
		String salNum = request.getParameter("salNum");
		//String busid = request.getParameter("busid");
		String des = request.getParameter("des");
		String logo = request.getParameter("logo");
		String busiId=request.getParameter("busiName");
		String state = request.getParameter("state");
		System.out.println("33"+busiId);
		Food food = new Food(Integer.valueOf(id), foodName, Double.valueOf(price), Double.valueOf(discount),
				Integer.valueOf(num), Integer.valueOf(salNum), des, logo,
				Integer.valueOf(busiId), Integer.valueOf(state));
		
		boolean flag = fsf.update(food);
		System.out.println(flag);
		if (flag) {
			request.getRequestDispatcher("bossManage/foodsManage.jsp").forward(request, response);
		}

	}else if("getFoods".equals(op))
	{
		// System.out.println(op);

		int page = 1;// 默认第一页
		int pageSize = 9;// 默认每页显示9条
		// 如果用户传递的参数不为空
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		if (request.getParameter("pageSize") != null) {
			pageSize = Integer.parseInt(request.getParameter("pageSize"));
		}

		PageData<Food> pd = fsf.getFoods(page, pageSize);
		List<Food> food = pd.getData();
		ArrayList<Food> list1 = new ArrayList<Food>();
		ArrayList<Food> list2 = new ArrayList<Food>();
		ArrayList<Food> list3 = new ArrayList<Food>();
		for (int i = 0; i < food.size(); i++) {
			if (i <= 3) {
				list1.add(food.get(i));
			} else if (i <= 6) {
				list2.add(food.get(i));
			} else {
				list3.add(food.get(i));
			}
		}

		System.out.println("11111");
		list1.forEach(System.out::println);
		pd.getData().forEach(System.out::println);

		request.setAttribute("pd", pd);

		request.setAttribute("list1", list1);
		request.setAttribute("list2", list2);
		request.setAttribute("list3", list3);
		// 从当前控制器跳转到jsp页面[问题列表]，跳转的方法叫做转发
		request.getRequestDispatcher("wmcr/shop_detail.jsp").forward(request, response);

		// System.out.println("ioioioo");
		// request.getSession().setAttribute("food", food);
		// out.print("<script>alert('转发成功');location.href='wmcr/shop_detail.jsp'</script>");
		// response.setContentType("application/json");
		// List<Food> food=fsf.getFoods();
		// DemoEntity 是封装了 list<dept> 和list<emp> 的一个类

		/*
		 * Gson gson = new Gson(); out.println(gson.toJson(food));
		 * out.println(gson.toJson(list1)); out.println(gson.toJson(list2));
		 * out.println(gson.toJson(list3));
		 */
		// out.close();
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
