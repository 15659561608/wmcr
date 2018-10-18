package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Orders;
import com.etc.entity.Ordersdetail;
import com.etc.entity.Users;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.service.impl.OrdersDetailServiceImpl;
import com.etc.service.impl.OrdersLServiceImpl;
import com.etc.services.FoodServicesf;
import com.etc.services.OrdersDetailService;
import com.etc.services.OrdersLService;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op="null";
		if(request.getParameter("op")!=null) {
			op=request.getParameter("op");
		}
		//获取门店编号
		String busiId="";
		if(request.getParameter("busiId")!=null) {
			busiId=request.getParameter("busiId");
		}
		HttpSession session=request.getSession();
		Users user=(Users) session.getAttribute("users");
		System.out.println(user);
		//下单
		if("add".equals(op)) {
			if(user==null) {
				request.getRequestDispatcher("wmcr/index.jsp").forward(request, response);
				return;
			}
			//获取商品编号
			String ids=request.getParameter("ids");
			ids=ids.substring(0,ids.length()-1);
			String id[]=ids.split(",");
			//获取订单编号
			String orderId=getOrderIdByTime();
			//获取商品数量
			String nums=request.getParameter("nums");
			nums=nums.substring(0,nums.length()-1);
			String num[]=nums.split(",");
			//获取总价
			String moneyStr=request.getParameter("totalPrice");
			moneyStr=moneyStr.replaceAll(",", "");
			double money=Double.valueOf(moneyStr);
			FoodServicesf fs=new FoodsServiceImplf();
			
			SimpleDateFormat simple=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String ordDate=simple.format(new Date());
			
			
			
			Connection conn=BaseDao.getConn();
			
			//事务
			try {
				conn.setAutoCommit(false);
				//插入订单基本表
				Orders order=new Orders(orderId, user.getId(), Integer.valueOf(busiId), ordDate, money);
				OrdersLService os=new OrdersLServiceImpl();
				os.addOrders(order, conn);
				
				//插入订单详细表
				OrdersDetailService ods=new OrdersDetailServiceImpl();
				for (int i = 0; i < id.length; i++) {
					Ordersdetail od=new Ordersdetail(orderId, Integer.valueOf(id[i]), Integer.valueOf(num[i]));
					ods.addOrdersDetail(od, conn);
				}
				
				conn.commit();
				request.setAttribute("orderId", orderId);
				request.getRequestDispatcher("wmcr/order.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				PrintWriter out=response.getWriter();
				out.println("<script>alert('提交订单失败');</script>");
			}
			
			
			
		}
	}

	//生成订单号
	public static String getOrderIdByTime() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String newDate=sdf.format(new Date());
		String result="";
		Random random=new Random();
		for(int i=0;i<3;i++){
			result+=random.nextInt(10);
		}
		return newDate+result;
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
