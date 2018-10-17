package com.etc.controllor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.OrdersLwq;
import com.etc.service.impl.OrdersLServiceImpl;
import com.etc.util.PageData;

/**
 * Servlet implementation class OrdersLServlet
 */
@WebServlet("/OrdersLServlet")
public class OrdersLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrdersLServiceImpl osi=new OrdersLServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrdersLServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String op = request.getParameter("op");
		if("queryansByPage".equals(op)) {

			int page =1;//默认第一页
			int pageSize = 10;//默认每页显示10条
			//如果用户传递的参数不为空
			if(request.getParameter("page")!=null)
			{
				page = Integer.parseInt(request.getParameter("page"));
			}
			
			if(request.getParameter("pageSize")!=null)
			{
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
			}
			
			//增加了模糊查询的部分;
			String keywords="";
			if(request.getParameter("keywords")!=null)
			{
				keywords = request.getParameter("keywords");
			}
			PageData<OrdersLwq> pd=osi.getOrdersByPage(page, pageSize, keywords);
			  //System.out.println(pd);
			request.setAttribute("pd", pd);
			//需要将每次模糊查询的关键字传递回来给jsp
			request.setAttribute("keywords", keywords);
			// 从当前控制器跳转到jsp页面,跳转的方法叫做转发
			request.getRequestDispatcher("back/view/AllOrders.jsp").forward(request, response);
		}
		if("Pay".equals(op)) {
			String goods-name=request.getParameter("goods-name");
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
