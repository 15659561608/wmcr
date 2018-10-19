package com.etc.controllor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.config.AlipayConfig;
import com.etc.dao.impl.DistributionDaoImpl;
import com.etc.entity.Distribution;
import com.etc.entity.Distributor;
import com.etc.service.impl.DistributionServiceImpl;
import com.etc.service.impl.DistributorServiceImpl;
import com.etc.services.DistributionService;
import com.etc.services.DistributorService;
import com.etc.util.BaseDao;

/**
 * Servlet implementation class AliPayServlet
 */
@WebServlet("/AliPay")
public class AliPayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AliPayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获得初始化的AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
		
		//设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
		
		HttpSession session=request.getSession();
		
		String op="null";
		if(request.getParameter("op")!=null) {
			op=request.getParameter("op");
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		if("pay".equals(op)) {
			if(session.getAttribute("distribution")!=null) {
				out.print("<script>alert('请勿重复提交订单');</script>");
				return;
			}
			// 获取配送信息
			String sName = request.getParameter("sName");
			String sPhone = request.getParameter("sPhone");
			String sAddress = request.getParameter("sAddress");
			String remarks = request.getParameter("remarks");
			String orderId = request.getParameter("orderId");
			SimpleDateFormat simple1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String disTime = simple1.format(new Date());
			// 获取配送员编号
			DistributorService dis = new DistributorServiceImpl();
			Connection conn=BaseDao.getConn();
			List<Distributor> disList = dis.queryDis(conn);
			int ri = disList.size();
			int disId = disList.get(new Random().nextInt(ri)).getId();
			Distribution distribution = new Distribution(disTime, remarks, disId, orderId, sName, sPhone, sAddress);
			
			// 创建配送session
			session.setAttribute("distribution", distribution);
			session.setMaxInactiveInterval(3600);
			//将配送信息插入配送表
			DistributionService ds=new DistributionServiceImpl();
			ds.addDis(distribution, conn);
			//生成商户订单号
			String out_trade_no = new String(request.getParameter("ordId").getBytes("ISO-8859-1"),"UTF-8");
			//付款金额，必填
			String total_amount = new String(request.getParameter("money").getBytes("ISO-8859-1"),"UTF-8");
			//订单名称，必填
			String subject = new String(request.getParameter("orderName"));
			//商品描述，可空
			String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");
			alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
					+ "\"total_amount\":\""+ total_amount +"\"," 
					+ "\"subject\":\""+ subject +"\"," 
					+ "\"body\":\""+ body +"\"," 
					+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
			
			//若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
			//alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
			//		+ "\"total_amount\":\""+ total_amount +"\"," 
			//		+ "\"subject\":\""+ subject +"\"," 
			//		+ "\"body\":\""+ body +"\"," 
			//		+ "\"timeout_express\":\"10m\"," 
			//		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
			//请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节
			
			//请求
			String result="";
			try {
				result = alipayClient.pageExecute(alipayRequest).getBody();
			} catch (AlipayApiException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
//			//输出
			out.println(result);
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
