package com.thebeauty.security.handler;

import java.io.IOException;
import java.net.URLEncoder;

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

		/*
		 * auth.getMessage() 종류 notFoundUser : id가 존재하지 않을경우 notMatchPassword : 비밀번호
		 * 불일치할경우 permissionDenined : 이메일 인증이 되지 않은경우
		 */

		String msg = "";
		String url = "/final/static/handler/HandlerPage.jsp?Message=";

		switch (auth.getMessage()) {
		case "notFoundUser":
			msg = "존재하지 않는 ID입니다";
			break;
		case "notMatchPassword":
			msg = "아이디 또는 비밀번호가 일치하지 않습니다";
			break;
		case "permissionDenined":
			msg = "회원 승인이 되지않았습니다. 메일을 확인해주세요.";
			break;
		}

		msg = URLEncoder.encode(msg,"UTF-8");
		msg = msg.replaceAll("\\+", "%20");
		
		res.sendRedirect(url + msg);
	}
}
