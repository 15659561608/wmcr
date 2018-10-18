package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Photos;
import com.etc.service.impl.PhotosServiceImpl;
import com.etc.services.PhotosService;

/**
 * Servlet implementation class PhotosSerlet
 */
@WebServlet("/PhotosSerlet")
public class PhotosSerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotosSerlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		String op="null";
//		if(request.getParameter("op")!=null) {
//			op=request.getParameter("op");
//		}
		 HttpSession session=request.getSession();
		 PrintWriter out = response.getWriter();
		 //String DbSavePath = request.getParameter("logo");
		 //System.out.println(DbSavePath);
		 //System.out.println(session.getAttribute("DbSavePath"));
		 String busId = request.getParameter("busiName");
		 //System.out.println(busId);
		 PhotosService pss = new PhotosServiceImpl();
		 Photos p = new Photos();
		 p.setSrc(String.valueOf(session.getAttribute("DbSavePath")));
		 p.setBusId(Integer.parseInt(busId));
		 boolean flag = pss.addPic(p);
		 if(flag) {
			 out.print("<script>alert('插入成功');location.href='bossManage/picture-list.jsp'</script>");
		 }
		 else {
			 out.print("<script>alert('插入失败');location.href='bossManage/picture-add.jsp'</script>");
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
