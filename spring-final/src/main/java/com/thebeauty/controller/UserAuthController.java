package com.thebeauty.controller;

import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.thebeauty.model.domain.MailServiceDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.domain.UserTokenDTO;
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
	public String userJoinAuth(UserDTO user) throws UnsupportedEncodingException {
		/* Base64기반의 encoder객체 생성*/
		Encoder encoder = Base64.getEncoder();
		
		/* Mail관련 DTO 생성 */
		MailServiceDTO mail = new MailServiceDTO();
		
		/* ID와 가입한 시간기준으로 생성될 개인 토큰키 
		 * ID security */
		String code = "http://localhost:7664/final/auth/permissionSuccess.do?tokenKey=";
		String token = user.getUserId() + ":" + System.currentTimeMillis();
		byte[] userToken = token.getBytes("UTF-8");
		String encodeToken = encoder.encodeToString(userToken);
		
		
		/** 회원 가입 */
		int result = userJoinService.userJoin(user,encodeToken);
		
		if(result == 2) {
			/* 생성될 개인 링크 코드 */
			StringBuilder mailSb = new StringBuilder();
			mailSb.append("<h3>회원가입 인증 코드입니다.</h3><br><a href='");
			mailSb.append(code);
			mailSb.append(encodeToken);
			mailSb.append("'> 회원가입을 원하시면 클릭해주세요. </a>");
			
			/* 메일 보내기 설정 */
			mail.setSubject(" [the Beauty] 회원가입 인증 관련 이메일입니다. ");
			mail.setText(mailSb.toString());
			mail.setTo(user.getUserEmail());
			mail.setFrom("zzdd1558@gmail.com");
			
			if (!mailService.send(mail)) {
				System.out.println("메일전송 실패");
			}else {
				System.out.println("메일전송 성공");
			}

		}
		
		return "redirect:/index.jsp";
	}

	@RequestMapping(value = "/permissionSuccess.do", method = RequestMethod.GET)
	public String permission(@RequestParam String tokenKey) throws UnsupportedEncodingException {
		System.out.println(tokenKey);
		int result = 0;
		Decoder decode = Base64.getDecoder();
		
		byte[] Token = decode.decode(tokenKey.getBytes("UTF-8"));
		String decodeToken = new String(Token);
		
		/* 출력된 정보를 :를 기준으로 split */
		String[] splitToken = decodeToken.split(":");
		
		UserDTO user = userJoinService.getUserInfo(splitToken[0]);
		if(user !=null) {
			result++;
		}
		/*id 인증 */
		result += userJoinService.userPermissionUpdate(splitToken[0]);
		/*email 인증시 removeTokenKey*/
		result += userJoinService.removeUserTokenByUserKey(new UserTokenDTO(user.getUserKey() , tokenKey));
		
		/** 회원가입 성공했다고 보여주는 페이지와 or 만료된 페이지 필요 */
		/*return result==3?"redirect:/index.jsp" : "redirect:/error.jsp";*/
		return "test";
	}

}
