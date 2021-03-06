package com.etc.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter({"/wmcr/member_addr.jsp","/wmcr/member_collect.jsp","/wmcr/member_index.jsp","/wmcr/member_order.jsp","/wmcr/order.jsp"})
public class FrontLoginFilter implements Filter {

    /**
     * Default constructor. 
     */
	
    public FrontLoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
		
		String uri=req.getRequestURI();
		if(uri.endsWith("login.jsp") || uri.endsWith("css")|| uri.endsWith("js")|| uri.endsWith("jpg")|| uri.endsWith("png")) {
			chain.doFilter(request, response);
		}else {
			if(req.getSession().getAttribute("users")==null) {
				req.getRequestDispatcher("/wmcr/login.jsp").forward(req, res);
			}else {
				chain.doFilter(request, response);
			}
			
		}
		
		// pass the request along the filter chain
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
