package com.etc.controllor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Boss;
import com.etc.service.impl.BossServicecglImpl;
import com.etc.services.BossServicecgl;
import com.etc.util.PageData;

/**
 * Servlet implementation class BossServlet
 */
@WebServlet("/Bsc.do")
public class BossServletcgl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       BossServicecgl bs=new BossServicecglImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BossServletcgl() {
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
		response.setContentType("text/html;charset=utf-8");
		String op=request.getParameter("op");
	
		if (op.equals("queryBoss")) {
			
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

			PageData<Boss> boss = (PageData<Boss>) bs.queryBoss(page, pageSize, keywords);
			
			request.setAttribute("b", boss);
			request.setAttribute("keywords", keywords);
			request.getRequestDispatcher("back/view/shopList.jsp").forward(request, response);
		}
		if (op.equals("update")) {
			String id=request.getParameter("id");
			String state=request.getParameter("bossstate");
			System.out.println(id);
			boolean flag=bs.updateBoss(Integer.valueOf(id), state);
			if (flag) {
				request.getRequestDispatcher("back/view/shopList.jsp").forward(request, response);
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
