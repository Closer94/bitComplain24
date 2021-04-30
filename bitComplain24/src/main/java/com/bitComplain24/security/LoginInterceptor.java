package com.bitComplain24.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bitComplain24.service.UserService;
import com.bitComplain24.vo.UserVo;



public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private UserService userService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		//login.jsp 페이지에서 입력한 이메일과 패스워드를 전달한 것을 request로 받는다.
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		UserVo userVo = new UserVo();
		userVo.setId(id);
		userVo.setPassword(password);
	
		

		UserVo authUser = userService.getUser(userVo);
		System.out.println(authUser);
		//로그인 인증 실패한경우
		if(authUser == null) {
			response.sendRedirect(request.getContextPath() + "/user/login?result=fail");
			return false;
		}
		
		//로그인 인증 성공한 경우
		//session 처리
		HttpSession session = request.getSession(true);
		session.setAttribute("authUser", authUser);
		response.sendRedirect(request.getContextPath());
		
		return false;
	}
	
}
