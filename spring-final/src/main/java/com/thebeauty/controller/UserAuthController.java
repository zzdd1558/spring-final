package com.thebeauty.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.service.UserJoinServiceImpl;

@Controller
@RequestMapping(value = "/auth")
public class UserAuthController {

	@Autowired
	UserJoinServiceImpl userJoinService;

	/* 회원가입 페이지 이동 */
	@RequestMapping(value = "/userJoin.do", method = RequestMethod.GET)
	public String userJoinAuth(UserDTO user) {

		userJoinService.userJoin(user);
		return "redirect:/index.jsp";
	}

	
}
