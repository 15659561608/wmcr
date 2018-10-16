package com.etc.controllor;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Boss;
import com.etc.entity.BusiNameL;
import com.etc.service.impl.BusiNameLServiceImpl;

/**
 * Servlet implementation class BusiNameLServlet
 */
@WebServlet("/BusiNameLServlet")
public class BusiNameLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusiNameLServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("jinlai");
          request.setCharacterEncoding("utf-8");
          HttpSession session = request.getSession();
          Boss boss = (Boss) session.getAttribute("boss");
          //System.out.println(boss.getAccount());
          String account=boss.getAccount();
          BusiNameLServiceImpl bnsi=new BusiNameLServiceImpl();
          List<BusiNameL> list=bnsi.getBusiName(account);
          request.setAttribute("pd", list);
          request.getRequestDispatcher("bossManage/ordersLmessage.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
