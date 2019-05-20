package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Boss;
import com.etc.entity.Businesses;
import com.etc.entity.Type;
import com.etc.service.impl.BusinessesServiceImplf;
import com.etc.services.BusinessesServicef;
import com.google.gson.Gson;

/**
 * Servlet implementation class BusinessesServletf
 */
@WebServlet("/bsf.do")
public class BusinessesServletf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private BusinessesServicef bsf=new BusinessesServiceImplf();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessesServletf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			HttpSession session=request.getSession();
		
			response.setContentType("application/json");
			PrintWriter out = response.getWriter();
			Boss b=(Boss)session.getAttribute("boss");
			int bossId=b.getId();
			List<Businesses> businesses=bsf.queryBussById(bossId);

			Gson gson = new Gson();

			String data = gson.toJson(businesses);

			out.print(data);
		}
	
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
