package com.thebeauty.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thebeauty.model.dao.Test;
import com.thebeauty.model.domain.CosmeticBrandDTO;
import com.thebeauty.model.domain.FaceTypeDTO;
import com.thebeauty.model.service.BrandService;

@Controller
public class HomeController {

	@Autowired
	private Test test;
	
	@Autowired
	private BrandService brandService;

	// main start
	@RequestMapping(value = "openmallMain.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "main";
	}
	//test
	@RequestMapping(value = "test.do", method = RequestMethod.GET)
	public String test() {
		return "test";
	}

	/* 회원가입 페이지 이동 */
	@RequestMapping(value = "userJoin1.do", method = RequestMethod.GET)
	public String userJoin() {
		System.out.println("회원가입 페이지  호출");
		test.test();
		return "userJoin";
	}

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
	
}
