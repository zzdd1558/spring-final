package com.thebeauty.controller;

import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.Base64.Encoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.thebeauty.model.domain.MailServiceDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.service.UserJoinServiceImpl;
import com.thebeauty.utils.MailService;

@Controller
@RequestMapping(value = "/auth")
public class UserAuthController {

	@Autowired
	private UserJoinServiceImpl userJoinService;

	@Autowired
	private MailService mailService;

	/* 회원가입 페이지 이동 */
	@RequestMapping(value = "/userJoin.do", method = RequestMethod.POST)
	@Transactional
	public String userJoinAuth(UserDTO user) throws UnsupportedEncodingException {
		
		/** 회원 가입 */
		userJoinService.userJoin(user);

		/* Base64기반의 encoder객체 생성*/
		Encoder encoder = Base64.getEncoder();
		
		/* Mail관련 DTO 생성 */
		MailServiceDTO mail = new MailServiceDTO();
		
		/* ID와 가입한 시간기준으로 생성될 개인 토큰키 */
		String code = "http://localhost:8181/final/auth/permissionSuccess.do?tokenKey=";
		String token = user.getUserId() + ":" + System.currentTimeMillis();
		byte[] userToken = token.getBytes("UTF-8");

		
		/* 생성될 개인 링크 코드 */
		StringBuilder mailSb = new StringBuilder();
		mailSb.append("<h3>회원가입 인증 코드입니다.</h3><br><a href='");
		mailSb.append(code);
		mailSb.append(encoder.encodeToString(userToken));
		mailSb.append("'> 회원가입을 원하시면 클릭해주세요. </a>");
		
		mail.setSubject(" [the Beauty] 회원가입 인증 관련 이메일입니다. ");
		mail.setText(mailSb.toString());
		mail.setTo(user.getUserEmail());
		mail.setFrom("zzdd1558@gmail.com");
		if (!mailService.send(mail)) {

		}

		return "redirect:/index.jsp";
	}

	@RequestMapping(value = "/permissionSuccess.do", method = RequestMethod.GET)
	public String permission(@RequestParam String tokenKey) {
		System.out.println(tokenKey);
		return null;
	}

}
