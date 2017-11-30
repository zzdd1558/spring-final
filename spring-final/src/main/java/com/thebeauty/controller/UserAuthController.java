package com.thebeauty.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.MailServiceDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.domain.UserTokenDTO;
import com.thebeauty.model.service.UserIdSearchServiceImpl;
import com.thebeauty.model.service.UserJoinServiceImpl;
import com.thebeauty.rating.Constants;
import com.thebeauty.utils.MailService;

/**
 * @author yunjin
 *
 */
@Controller
@RequestMapping(value = "/auth")
public class UserAuthController {

	@Autowired
	private UserJoinServiceImpl userJoinService;

	@Autowired
	private MailService mailService;

	@Autowired
	UserIdSearchServiceImpl userIdSearchService;
	
	/* alert 페이지 */
	private String url = "redirect:/static/handler/HandlerPage.jsp?Message=";

	/* 회원가입 페이지 이동 */
	@RequestMapping(value = "/userJoin.do", method = RequestMethod.POST)
	public String userJoinAuth(UserDTO user, HttpServletRequest request) throws UnsupportedEncodingException {
		/* Base64기반의 encoder객체 생성 */
		Encoder encoder = Base64.getEncoder();

		/* Mail관련 DTO 생성 */
		MailServiceDTO mail = new MailServiceDTO();

		/*
		 * ID와 가입한 시간기준으로 생성될 개인 토큰키 ID security
		 */
		String code = "http://localhost:" + request.getServerPort() + "/final/auth/permissionSuccess.do?tokenKey=";
		String token = user.getUserId() + ":" + System.currentTimeMillis();
		byte[] userToken = token.getBytes("UTF-8");
		String encodeToken = encoder.encodeToString(userToken);
		String msg = "";
		user.setRatingType(Constants.NAN);
		/** 회원 가입 */
		int createToken = userJoinService.userJoin(user, encodeToken);

		if (createToken == 2) {
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

			msg = "회원가입 승인에 대한 주소를 이메일로 보내드렸습니다";
			
			threadToSendMail(mail);
			
		}else {
			msg = "회원가입 실패하였습니다.";
		}
		return "redirect:/static/handler/redirectHandlerPage.jsp?Message=" + encodeMsg(msg);
	}
	
	/** 사용자 이메일 인증시 권한 생성. */
	@RequestMapping(value = "/permissionSuccess.do", method = RequestMethod.GET)
	public String permission(@RequestParam String tokenKey) throws UnsupportedEncodingException {
		int result = 0;
		Decoder decode = Base64.getDecoder();

		byte[] Token = decode.decode(tokenKey.getBytes("UTF-8"));
		String decodeToken = new String(Token);

		/* 출력된 정보를 :를 기준으로 split */
		String[] splitToken = decodeToken.split(":");

		UserDTO user = userJoinService.getUserInfo(splitToken[0]);
		if (user != null) {
			result++;
		}
		/* id 인증 */
		result += userJoinService.userPermissionUpdate(splitToken[0]);
		/* email 인증시 removeTokenKey */
		result += userJoinService.removeUserTokenByUserKey(new UserTokenDTO(user.getUserKey(), tokenKey));

		/** 회원가입 성공했다고 보여주는 페이지와 or 만료된 페이지 필요 */
		/* return result==3?"redirect:/index.jsp" : "redirect:/error.jsp"; */
		return  "redirect:/static/handler/redirectHandlerPage.jsp?Message=" + encodeMsg("회원승인이 완료되었습니다.");
	}

	/* 아이디찾기 페이지 이동 */
	@RequestMapping(value = "/userIdSearch.do", method = RequestMethod.POST)
	public String userIdSearchAuth(UserDTO user, HttpServletRequest request) throws UnsupportedEncodingException {
		/* Base64기반의 encoder객체 생성 */
		Encoder encoder = Base64.getEncoder();

		/* Mail관련 DTO 생성 */
		MailServiceDTO mail = new MailServiceDTO();

		/* 입력한 값으로 ID가져오기 */

		user = userIdSearchService.getUserId(user);
		String msg = "";
		url = "redirect:/static/handler/redirectHandlerPage.jsp?Message=";
		if (user != null) {

			/* ID와 현재시간기준으로 생성될 개인 토큰키 */
			String code = "http://localhost:" + request.getServerPort() + "/final/auth/userIdLogin.do?tokenKey=";
			String token = user.getUserId() + ":" + System.currentTimeMillis();
			byte[] userToken = token.getBytes("UTF-8");
			String encodeToken = encoder.encodeToString(userToken);

			int createToken = userJoinService.createUserToken(user.getUserKey(), encodeToken);

			if (createToken == 1) {
				/* 생성될 개인 링크 코드 */
				StringBuilder mailSb = new StringBuilder();
				mailSb.append("<h3>아이디찾기 인증 코드입니다.</h3><br><a href='");
				mailSb.append(code);
				mailSb.append(encodeToken);
				mailSb.append("'> 아이디 확인하기! </a>");

				/* 메일 보내기 설정 */
				mail.setSubject(" [the Beauty] 아이디찾기 인증 관련 이메일입니다. ");
				mail.setText(mailSb.toString());
				mail.setTo(user.getUserEmail());
				mail.setFrom("zzdd1558@gmail.com");

				
				
				msg = "회원님의 아이디를 이메일로 보내드렸습니다.";
				
				threadToSendMail(mail);
			}
		} else {
			msg = "존재하지 않는 아이디 입니다.";
		}
		return url + encodeMsg(msg);
	}

	/* 메일인증 후 토큰 삭제 및 아이디 보여주는 창으로 이동 */
	@RequestMapping(value = "/userIdLogin.do", method = RequestMethod.GET)
	public String userIdLogin(@RequestParam String tokenKey, Model model) throws UnsupportedEncodingException {
		int result = 0;
		Decoder decode = Base64.getDecoder();

		byte[] Token = decode.decode(tokenKey.getBytes("UTF-8"));
		String decodeToken = new String(Token);

		/* 출력된 정보를 :를 기준으로 split */
		String[] splitToken = decodeToken.split(":");

		UserDTO user = userJoinService.getUserInfo(splitToken[0]);
		if (user != null) {
			result++;
		}

		result += userJoinService.removeUserTokenByUserKey(new UserTokenDTO(user.getUserKey(), tokenKey));

		model.addAttribute("id", user.getUserId());

		/** 아이디찾기 성공했다고 보여주는 페이지와 or 만료된 페이지 필요 */
		/* return result==3?"redirect:/index.jsp" : "redirect:/error.jsp"; */
		return "idView";
	}

	/** 일단 보류 */
	@RequestMapping(value = "/searchIdLogin.do", method = RequestMethod.GET)
	public String searchIdLogin(@RequestParam("userId") String id, Model model) {
		model.addAttribute("id", id);
		return "userLogin";
	}

	/**
	 * 비밀번호 찾기
	 * 
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "/userPasswordSearch.do", method = RequestMethod.POST)
	public String userPasswordSearchAuth(UserDTO findUser, HttpServletRequest request)
			throws UnsupportedEncodingException {

		UserDTO user = userJoinService.findPassword(findUser);
		String msg = "";

		/* Base64기반의 encoder객체 생성 */
		Encoder encoder = Base64.getEncoder();

		/* Mail관련 DTO 생성 */
		MailServiceDTO mail = new MailServiceDTO();

		if (user != null) {
			/* ID와 현재시간기준으로 생성될 개인 토큰키 */
			String code = "http://localhost:" + request.getServerPort() + "/final/auth/findUserPassword.do?tokenKey=";
			String token = user.getUserId() + ":" + System.currentTimeMillis();
			byte[] userToken = token.getBytes("UTF-8");
			String encodeToken = encoder.encodeToString(userToken);

			int createToken = userJoinService.createUserToken(user.getUserKey(), encodeToken);

			if (createToken == 1) {
				/* 생성될 개인 링크 코드 */
				StringBuilder mailSb = new StringBuilder();
				mailSb.append("<h3>비밀번호 찾기 URL 입니다.</h3><br><a href='");
				mailSb.append(code);
				mailSb.append(encodeToken);
				mailSb.append("'> 비밀번호 변경하기 </a>");

				/* 메일 보내기 설정 */
				mail.setSubject(" [the Beauty] 비밀번호 찾기 인증 관련 이메일입니다. ");
				mail.setText(mailSb.toString());
				mail.setTo(user.getUserEmail());
				mail.setFrom("zzdd1558@gmail.com");

				msg = "등록하신 이메일로 임시 비밀번호 변경페이지를 보내드렸습니다.";

				threadToSendMail(mail);
			}
		} else {
			msg = "존재하지 않는 사용자 정보입니다";
		}

		return url + encodeMsg(msg);
	}

	/** 메일인증 후 토큰 삭제 및 아이디 보여주는 창으로 이동 */
	@RequestMapping(value = "/findUserPassword.do", method = RequestMethod.GET)
	public String findUserPassword(@RequestParam String tokenKey, HttpServletRequest req) throws IOException {
		req.setAttribute("token", tokenKey);
		return "changePassword";
	}

	/** 비밀번호 변경하는 부분. */
	@RequestMapping(value = "/changePassword.do", method = RequestMethod.POST)
	public String changePassword(@RequestParam("token") String tokenKey, @RequestParam String changePassword)
			throws ServletException, IOException {

		Decoder decode = Base64.getDecoder();
		String returnUrl = "redirect:/static/handler/redirectHandlerPage.jsp?Message=";
		byte[] token = decode.decode(tokenKey.getBytes("UTF-8"));
		String decodeToken = new String(token);

		/* 출력된 정보를 :를 기준으로 split */
		String[] splitToken = decodeToken.split(":");

		int result = userJoinService.userPasswordChange(splitToken[0], changePassword, tokenKey);

		if (result == 1) {
			returnUrl = returnUrl + encodeMsg("비밀번호가 변경되었습니다"); 
			/*returnUrl = "main";*/
		} else {
			returnUrl = returnUrl + encodeMsg("만료된 토큰입니다.");
		}
		return returnUrl;
	}

	@RequestMapping(value="/logout.do", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		System.out.println(1);
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/";
	}


	/* get방식 쿼리스트잉의 한글 처리 */
	public String encodeMsg(String msg) throws UnsupportedEncodingException {
		String encodeMsg = URLEncoder.encode(msg, "UTF-8");
		encodeMsg = encodeMsg.replaceAll("\\+", "%20");

		return encodeMsg;
	}

	

	/* mail보내기 인증시 backhand단으로 Thread 설정*/
	public void threadToSendMail ( MailServiceDTO mail) {
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				mailService.send(mail);
			}
		}).start();
	}
	
}
