package com.etc.controllor;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.etc.entity.Food;
import com.etc.service.impl.Copyfile;
import com.etc.service.impl.FoodsServiceImplf;
import com.etc.services.FoodServicesf;
/**
 * Servlet implementation class UploadServletf
 */
@WebServlet("/usf.do")
public class UploadServletf extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	 // 上传配置
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
    
	private FoodServicesf fsf = new FoodsServiceImplf();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadServletf() {
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
		PrintWriter out=response.getWriter();

			String foodName = "";
			double price = 0;
			double discount = 0;
			int num = 0;
			int salNum = 0;
			String des = "";
			String logo = "";
			int busId = 0;
			int state = 0;
			String path="";
			String s="";
			String po="";
			
			DiskFileItemFactory factory = new DiskFileItemFactory();

			// Configure a repository (to ensure a secure temp location is used)
			ServletContext servletContext = this.getServletConfig().getServletContext();
			File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
			factory.setRepository(repository);

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);
			
			 // 设置最大文件上传值
	        upload.setFileSizeMax(MAX_FILE_SIZE);
	         
	        // 设置最大请求值 (包含文件和表单数据)
	        upload.setSizeMax(MAX_REQUEST_SIZE);
	     // 中文处理
	        upload.setHeaderEncoding("UTF-8"); 


			// Parse the request
			try {
				List<FileItem> items = upload.parseRequest(request);
				
				Iterator<FileItem> iter = items.iterator();
				while (iter.hasNext()) {
				    FileItem item = iter.next();

				    if (item.isFormField()) {
				    	 String name = item.getFieldName();
				    	 String value = item.getString("utf-8");
						    					    	 			    	 
				    	 if(name.equals("foodName")) {
				    		 foodName=value;
				    	 }else if(name.equals("price")) {
				    		 price=Double.valueOf(value);
				    	 }else if(name.equals("discount")) {
				    		 discount=Double.valueOf(value);
				    	 }else if(name.equals("num")) {
				    		 num=Integer.valueOf(value);
				    	 }else if(name.equals("salNum")) {
				    		 salNum=Integer.valueOf(value);
				    	 }else if(name.equals("des")) {
				    		 des=value;
				    	 }else if(name.equals("logo")) {
				    		 logo=value;
				    	 }else if(name.equals("busid")) {
				    		 busId=Integer.valueOf(value);
				    	 }else if(name.equals("state")) {
				    		 state=Integer.valueOf(value);
				    	 }
				    	
				    } else {
				    	 String fieldName = item.getFieldName();
				    	    String fileName = item.getName();
				    	    String contentType = item.getContentType();
				    	    boolean isInMemory = item.isInMemory();
				    	    long sizeInBytes = item.getSize();
				    	    
				    	    System.out.println(fieldName+","+fileName);	
				    	    //项目地址
				    	     path=request.getSession().getServletContext().getRealPath("/bossManage/imgs/"+fileName);
				    	 
				    	   String p=path.substring(0,path.lastIndexOf("\\")+1)+fileName;
				    	   System.out.println("项目的路径:"+path);
				    	   System.out.println("项目的路径:"+p);
				    	    s="\\bossManage\\imgs\\"+path.substring(path.lastIndexOf("\\")+1);
				    	    System.out.println("图片路径"+s);
				    	     po="E:\\pro\\wmcr\\WebContent\\bossManage\\imgs\\"+fileName;
				    	    String p2=request.getSession().getServletContext().getRealPath(request.getRequestURI());
				    	    System.out.println("p2"+p2);
				    	     Copyfile.copyFile(p,po);
				    	     File uploadedFile = new File(path);
				    	     item.write(uploadedFile);
				    	    
				    	   
				    }
				}
				 System.out.println("结果"+foodName+price+discount+num+salNum+des+logo+busId+state+s);
				 Food food=new Food(foodName, price, discount, num, salNum, des, s, busId, state);
				boolean flag=fsf.addFoods(food);
				System.out.println("flag"+flag);
				
			}  catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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
