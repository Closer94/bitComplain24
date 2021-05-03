package com.bitComplain24.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebArgumentResolver;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.bitComplain24.vo.UserVo;

//@AuthUser 파라미터 어노테이션을 검사해서 처리하는 Argument Resolver 작성
public class AuthUserHandlerMethodArgumentResolver implements HandlerMethodArgumentResolver {

	// @AuthUser 검사하는 메서드
	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		
		// 1. 요청한 파라미터에  @AuthUser 달려 있는지 확인하기 
		AuthUser authUser = parameter.getParameterAnnotation(AuthUser.class);
		
		// 2. 요청한 파라미터에  @AuthUser 가 안붙어 있는 경우 패스시켜준다.
		if(authUser == null) {
			return false;
		}
			
		// 파라미터 타입이 UserVo가 아니면 ... 패스시켜준다.
		if(!parameter.getParameterType().equals(UserVo.class)) {
			return false;
		}
			
		return true;
	}
		
	@Override
	public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		
		//UserVo 타입이 아니거나, @AuthUser 파라미터가 아닌 경우 UNRESOLVED 시켜준다.
		if(!supportsParameter(parameter)) {
			return WebArgumentResolver.UNRESOLVED;
		}
		
		//여기서부터는 @AuthUser 파라미터이면서 UserVo 타입이라는 이라는 것
		
		//webRequest 로 파라미터를 받는 이유는 Spring이 톰켓 외 was에도 사용될 수 있기때문에 범위를 넓혀서 매개변수로 보낸것
		//우리는 톰캣임으로 HttpServletRequest로 casting 해서 사용하면 된다.
		HttpServletRequest request = (HttpServletRequest)webRequest.getNativeRequest();
		HttpSession session = request.getSession();
		
		if(session == null) {
			return null;
		}
		
		return session.getAttribute("authUser");
		
	}
	
	

}
