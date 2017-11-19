package com.thebeauty.security.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

/**
 * 스프링 시큐리에서 로그인 실패시 호출되는 EventHandler
 * 
 * springBean 설정문서에서 <security:form-login태그에 authentication-failure-handler-ref
 * 추가하면 로그인 실패시 onAuthenticationFailure 메소드가 자동 호출
 */
@Component // id="memberAuthenticationFailureHandler"
public class UserAuthenticationFailureHandler implements AuthenticationFailureHandler {

	@Override
	public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse res, AuthenticationException auth)
			throws IOException, ServletException {
		System.out.println("error : " + auth.getMessage());

		/*
		 * auth.getMessage() 종류 notFoundUser : id가 존재하지 않을경우 notMatchPassword : 비밀번호
		 * 불일치할경우 permissionDenined : 이메일 인증이 되지 않은경우
		 */

		switch (auth.getMessage()) {
		case "notFoundUser":
			break;
		case "notMatchPassword":
			break;
		case "permissionDenined":
			break;
		}
		
		req.setAttribute("errorMessage", auth.getMessage());

		/*
		 * req.setAttribute("errorMessage", auth.getMessage());
		 * req.getRequestDispatcher("/WEB-INF/views/member/loginForm.jsp").forward(req,
		 * res);
		 */

		/* auth.getMessage()에 따른 error page 설정 필요 */
	}
}
