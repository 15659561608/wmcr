package com.etc.controllor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.MenDianPhotoShow;
import com.etc.service.impl.MenDianPhotoShowServiceImpl;
import com.etc.service.impl.PhotosServiceImpl;
import com.etc.services.MenDianPhotoShowService;
import com.etc.services.PhotosService;
import com.etc.util.PageData;

/**
 * Servlet implementation class MenDianTuShowServlet
 */
@WebServlet("/mdts.do")
public class MenDianTuShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenDianTuShowServlet() {
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
		response.setContentType("html/text;charset=utf-8");
		//创建Session对象
		HttpSession session=request.getSession();
		String op="null";
		if(request.getParameter("op")!=null) {
			op=request.getParameter("op");
		}
		// String v=request.getParameter("表单中的文本名，select名字等等/参数名"); 接收请求参数的值
		 if ("secletPhoto".equals(op)) {
			
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
			
			
			//之前的代码要变
			MenDianPhotoShowService mps = new MenDianPhotoShowServiceImpl();
			PageData<MenDianPhotoShow> pdd = mps.qureyMenDianTu(page, pageSize,  (int)session.getAttribute("bossId"), keywords);
			int total=pdd.getTotal();
			request.setAttribute("total", total);
			
			request.setAttribute("pdd", pdd);
			//需要将每次模糊查询的关键字传递回来给jsp
			request.setAttribute("keywords", keywords);
			// 从当前控制器跳转到jsp页面,跳转的方法叫做转发
			request.getRequestDispatcher("bossManage/picture-list.jsp").forward(request, response);
	  }
		 else if("deltu".equals(op)) {
			 String id = request.getParameter("pId");
			 System.out.println("1111");
			 PhotosService ps = new PhotosServiceImpl();
			 boolean flag = ps.delpic(Integer.valueOf(id));
			 if(flag) {
				 request.getRequestDispatcher("bossManage/picture-list.jsp").forward(request, response);
			 }
			 else {
				 
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
