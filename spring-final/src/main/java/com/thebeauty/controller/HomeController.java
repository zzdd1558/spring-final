package com.thebeauty.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

<<<<<<< HEAD
import com.thebeauty.model.dao.FaceTypeDAO;
import com.thebeauty.model.domain.BoardDTO;
import com.thebeauty.model.domain.FaceTypeDTO;
=======
>>>>>>> branch 'master' of https://github.com/zzdd1558/spring-final


@Controller
public class HomeController {
	
	
	/* main page start*/
	@RequestMapping(value = "openmallMain.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "main";
	}


	/* 회원가입 페이지 이동 */
	@RequestMapping(value = "userJoin.do", method = RequestMethod.GET)
	public String userJoin() {
		return "userJoin";
	}

	/*board Write 단순 경로*/
	@RequestMapping(value = "board/BoardWriteForm.do", method = RequestMethod.GET)
	public String boardWriteForm() {

		return "board/boardWrite";
	}
	
	/* 우편주소 찾기위해 사용하는 URL*/
	@RequestMapping(value = "addressSearch.do")
	public String addressSearch() {
		return "addressSearch";
	}

	/* 회원로그인 페이지 이동*/
	@RequestMapping(value = "userLogin.do" , method = RequestMethod.GET)
	public String userLogin() {
		return "userLogin";
	}
	
	
}
