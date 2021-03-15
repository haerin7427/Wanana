package com.project.login.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//로그인 처리를 담당하는 인터셉터 
public class AuthenticationInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception{
		System.out.println("preHandle controller");
		
		HttpSession session=request.getSession();//session 객체를 가져온다
		
		Object obj=session.getAttribute("login");//login처리를 담당하는 사용자 정보를 담고 있는 객체를 가져온다.
		
		if(obj==null) {
			response.sendRedirect("/login"); //로그인이 안되어 있는 상태로, 로그인 폼으로 다시 돌려보낸다.
			System.out.println("preHandle : false");
			return false;
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request,HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception{
		super.postHandle(request, response, handler, modelAndView);
	}

}
