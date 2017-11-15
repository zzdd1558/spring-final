package com.thebeauty.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thebeauty.model.dao.FaceTypeDAO;
import com.thebeauty.model.domain.FaceTypeDTO;


@Controller
public class HomeController {
	
	@Autowired
	private FaceTypeDAO faceTypeDAO;
	
	/* main page start*/
	@RequestMapping(value = "openmallMain.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "main";
	}


	/* 회원가입 페이지 이동 */
	@RequestMapping(value = "userJoin1.do", method = RequestMethod.GET)
	public String userJoin() {
		System.out.println("회원가입 페이지  호출");
		return "userJoin";
	}

	/*board Write 단순 경로*/
	@RequestMapping(value = "board/BoardWriteForm.do", method = RequestMethod.GET)
	public String boardWriteForm() {
		System.out.println("회원가입 페이지  호출");
		return "board/boardWrite";
	}
	
	/* 우편주소 찾기위해 사용하는 URL*/
	@RequestMapping(value = "addressSearch.do")
	public String addressSearch() {
		System.out.println("addressSearch 호출");
		return "addressSearch";
	}

	/* 회원로그인 페이지 이동*/
	@RequestMapping(value = "userLogin.do" , method = RequestMethod.GET)
	public String userLogin() {
		System.out.println("회원로그인 페이지 호출");
		return "userLogin";
	}
	
	/* 피부타입 모두 가져오기 */
	@RequestMapping("test1.do")
	public String SearchAll() {
		List<FaceTypeDTO> list = null;
		list = faceTypeDAO.allSelectFaceType();
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		return "test/test";
	}
}
