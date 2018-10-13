package com.etc.controllor;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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

import com.etc.service.impl.FoodsServiceImplf;
import com.etc.services.FoodServicesf;
/**
 * Servlet implementation class UploadServletf
 */
@WebServlet("/usf.do")
public class UploadServletf extends HttpServlet {
	private static final long serialVersionUID = 1L;
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
			
			
			DiskFileItemFactory factory = new DiskFileItemFactory();

			// Configure a repository (to ensure a secure temp location is used)
			ServletContext servletContext = this.getServletConfig().getServletContext();
			File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
			factory.setRepository(repository);

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);

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
				    	    
				    	     path=request.getRealPath("/imgs/"+fileName);
				    	    System.out.println("path"+path);
				    	    File uploadedFile = new File(path);
				    	    item.write(uploadedFile);
				    	    System.out.println("上传成功~");
				    	   
				    }
				}
				// System.out.println("结果"+foodName+price+discount+num+salNum+des+logo+busId+state+path);
				 Food food=new Food(foodName, price, discount, num, salNum, des, path, busId, state);
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
