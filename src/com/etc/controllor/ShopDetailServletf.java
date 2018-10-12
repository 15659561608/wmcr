package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShopDetailServletf
 */
@WebServlet("/wmcr/sds.do")
public class ShopDetailServletf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopDetailServletf() {
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
		
		PrintWriter out=response.getWriter();
		Enumeration parameters = request.getParameterNames();  
		
		if("addOrdersDetail".equals(op)) {
			
		while (parameters.hasMoreElements()) {  
			    String pName = (String) parameters.nextElement();  
			    // getParameterValues() 获取同一个参数名的多个参数值，返回字符串数组对象  
//			    System.out.println(pName);
			    
			    String pValues[] = request.getParameterValues(pName);  
			    out.print("<b>" + pName + "</b>");  
			    for (int i=0; i<pValues.length; i++) {  
			        out.println(" " + pValues[i]);  
			        System.out.println("菜名---------"+pValues[i]);
			        			        
			    }  
			    out.println("</br>");  
		}  
			
			String foodName=request.getParameter("foodName");
			
			System.out.println("菜名"+foodName);
			String num=request.getParameter("num");
			System.out.println("数量"+num);
			String price=request.getParameter("price");
			
			
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
