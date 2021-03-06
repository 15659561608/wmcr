package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.BusinessesCity;
import com.etc.entity.Customers;
import com.etc.entity.Distribution;
import com.etc.entity.Distributor;
import com.etc.entity.Orders;
import com.etc.entity.OrdersData;
import com.etc.entity.OrdersLwq;
import com.etc.entity.Ordersdetail;
import com.etc.entity.Users;
import com.etc.service.impl.BusiNameLServiceImpl;
import com.etc.service.impl.BusinessServiceImpl;
import com.etc.service.impl.CustomersServiceImpl_czd;
import com.etc.service.impl.DistributorServiceImpl;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.service.impl.OrdersDetailServiceImpl;
import com.etc.service.impl.OrdersLServiceImpl;
import com.etc.services.CustomersService_czd;
import com.etc.services.DistributorService;
import com.etc.services.FoodServicesf;
import com.etc.services.OrdersDetailService;
import com.etc.services.OrdersLService;
import com.etc.util.BaiduMap;
import com.etc.util.BaseDao;

/**
 * Servlet implementation class OrderHandlerServler
 */
@WebServlet("/ohs.do")
public class OrderHandlerServler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderHandlerServler() {
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
		String op = "null";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		// 获取门店编号
		String busiId = "";
		if (request.getParameter("busiId") != null) {
			busiId = request.getParameter("busiId");
		}
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute("users");
		// 下单
		if ("add".equals(op)) {
			if (user == null) {
				request.getRequestDispatcher("wmcr/login.jsp").forward(request, response);
				return;
			}
			if(session.getAttribute("order")!=null) {
				response.setCharacterEncoding("utf-8");
				// 响应类型
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				// 获取商品编号
				List<Orders> orders=(List<Orders>)BaseDao.select("select id from orders ORDER BY ordDate desc limit 0,1",Orders.class);
				String orderId = orders.get(0).getId();
				OrdersLService os = new OrdersLServiceImpl();
				Connection conn = BaseDao.getConn();
					// 获取用户地址列表
					List<Customers> cusList = new CustomersServiceImpl_czd().queryCustomersByUserId(user.getId());
					request.setAttribute("cusList", cusList);

					// 获取订单列表
					List<OrdersData> detailsList = (List<OrdersData>) os.queryOrdersByOrderId(orderId);
					// 获取订单信息
					Orders ord = os.getorders(orderId);
					// 获取门店信息
					List<BusinessesCity> busiInfo = new BusinessServiceImpl().getBusinessesById(Integer.valueOf(busiId));
					request.setAttribute("detailsList", detailsList);
					request.setAttribute("busiInfo", busiInfo.get(0));
					request.setAttribute("orderId", orderId);
					request.setAttribute("ord", ord);
					request.getRequestDispatcher("wmcr/order.jsp").forward(request, response);
			}else {
				// 获取商品编号
				String ids = request.getParameter("ids");
				ids = ids.substring(0, ids.length() - 1);
				String id[] = ids.split(",");
				// 获取订单编号
				String orderId = getOrderIdByTime();
				// 获取商品数量
				String nums = request.getParameter("nums");
				nums = nums.substring(0, nums.length() - 1);
				String num[] = nums.split(",");
				// 获取总价
				String moneyStr = request.getParameter("totalPrice");
				moneyStr = moneyStr.replaceAll(",", "");
				double money = Double.valueOf(moneyStr);
				FoodServicesf fs = new FoodsServiceImplf();

				SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String ordDate = simple.format(new Date());

				Connection conn = BaseDao.getConn();

				// 事务
				try {
					conn.setAutoCommit(false);
					// 插入订单基本表
					Orders order = new Orders(orderId, user.getId(), Integer.valueOf(busiId), ordDate, money);
					OrdersLService os = new OrdersLServiceImpl();
					os.addOrders(order, conn);
					// 插入订单详细表
					OrdersDetailService ods = new OrdersDetailServiceImpl();
					for (int i = 0; i < id.length; i++) {
						Ordersdetail od = new Ordersdetail(orderId, Integer.valueOf(id[i]), Integer.valueOf(num[i]));
						ods.addOrdersDetail(od, conn);
					}

					//创建订单session
					session.setAttribute("order", order);
					session.setMaxInactiveInterval(3600);
					conn.commit();
					// 获取用户地址列表
					List<Customers> cusList = new CustomersServiceImpl_czd().queryCustomersByUserId(user.getId());
					request.setAttribute("cusList", cusList);

					// 获取订单列表
					List<OrdersData> detailsList = (List<OrdersData>) os.queryOrdersByOrderId(orderId);
					// 获取订单信息
					Orders ord = os.getorders(orderId);
					// 获取门店信息
					List<BusinessesCity> busiInfo = new BusinessServiceImpl().getBusinessesById(Integer.valueOf(busiId));
					request.setAttribute("detailsList", detailsList);
					request.setAttribute("busiInfo", busiInfo.get(0));
					request.setAttribute("orderId", orderId);
					request.setAttribute("ord", ord);
					request.getRequestDispatcher("wmcr/order.jsp").forward(request, response);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					PrintWriter out = response.getWriter();
					out.println("<script>alert('提交订单失败');</script>");
				}
			}
			

		}else if("cusAddress".equals(op)) {
			// 获取用户地址列表
			List<Customers> cusList = new CustomersServiceImpl_czd().queryCustomersByUserId(user.getId());
			request.setAttribute("cusList", cusList);
			request.getRequestDispatcher("wmcr/member_addr.jsp").forward(request, response);
		}else if("updateAddress".equals(op)) {
			// 根据id获取用户地址信息
			int id=Integer.valueOf(request.getParameter("id"));
			Customers customers = new CustomersServiceImpl_czd().getCustomersById(id);
			request.setAttribute("customers", customers);
			request.getRequestDispatcher("wmcr/updateAddress.jsp").forward(request, response);
		}else if("delAddress".equals(op)){
			int userId=Integer.valueOf(request.getParameter("id"));
			boolean result=new CustomersServiceImpl_czd().delCustomers(userId);
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			if(result) {
				out.print("<script>alert('删除成功');location.href='wmcr/member_addr.jsp';</script>");
			}else {
				out.print("<script>alert('删除失败');location.href='wmcr/member_addr.jsp';</script>");
			}
		} else if("doUpdateAddress".equals(op)) {
			// 根据id修改用户地址信息
			int id=Integer.valueOf(request.getParameter("id"));
			String custName=request.getParameter("custName");
			String phone=request.getParameter("phone");
			String address=request.getParameter("address");
			Customers c=new Customers();
			c.setId(id);
			c.setcustName(custName);
			c.setPhone(phone);
			c.setAddress(address);
			boolean result = new CustomersServiceImpl_czd().updateCustomers(c);
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			if(result) {
				out.print("<script>alert('修改成功');top.location.href='wmcr/member_addr.jsp';</script>");
			}else {
				out.print("<script>alert('修改失败');top.location.href='wmcr/member_addr.jsp';</script>");
			}
		}else if ("addAddress".equals(op)) {
			// 添加联系人地址

			response.setContentType("text/html");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			if (user == null) {
				request.getRequestDispatcher("wmcr/login.jsp").forward(request, response);
				return;
			}

			String custName = request.getParameter("name");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String regDate = simple.format(new Date());

			// 根据地址获取经纬度
			double lat = 0.0;
			double lon = 0.0;
			HashMap<String, Double> hashmap = (HashMap<String, Double>) BaiduMap.getLatLon(address);
			if (hashmap != null) {
				lat = hashmap.get("lat");
				lon = hashmap.get("lon");
			}

			Customers c = new Customers(custName, phone, regDate, address, user.getId(), lat, lon);
			CustomersService_czd cs = new CustomersServiceImpl_czd();
			boolean result = cs.addCustomers(c);
			if (result) {
				out.print("true");
			} else {
				out.print("false");
			}
		}

	}

	// 生成订单号
	public static String getOrderIdByTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String newDate = sdf.format(new Date());
		String result = "";
		Random random = new Random();
		for (int i = 0; i < 3; i++) {
			result += random.nextInt(10);
		}
		return newDate + result;
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
