package com.syn.smsp.util;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Enumeration;

/**
 * XSS过滤
 * 
 */
public class LoginFilter implements Filter {

	@Override
	public void init(FilterConfig config) throws ServletException {
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {

		HttpServletRequest reqs = (HttpServletRequest) req;

		Enumeration<String> headerNames=reqs.getHeaderNames();

		String token = "";//登陆验证所用token
		for(Enumeration<String> e = headerNames; e.hasMoreElements();){

			String loginName=e.nextElement().toString();
			if(!org.springframework.util.StringUtils.isEmpty(loginName) && loginName.equals("token")){
				token = reqs.getHeader(loginName);
				System.out.println("header的key:"+loginName+"--------------header的value:"+token);
			}
		}
//		String token = req.getParameter("token");
		if(StringUtils.isNotBlank(token)){
			String[] tokens = token.split("\\|");
			if(tokens.length == 2){
				Subject subject = ShiroUtils.getSubject();
				//sha256加密
				UsernamePasswordToken newToken = new UsernamePasswordToken(tokens[0], tokens[1]);
				subject.login(newToken);
			}
		}

		chain.doFilter(req, res);
	}

	@Override
	public void destroy() {
	}

}