package com.thebeauty.controller;

import java.util.List;
import java.util.Locale;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.LocalDataSourceJobStore;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticSubTypeDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService service;
	
	/* 메인페이지 시작 */
	@RequestMapping(value = "openmallMain.do", method = RequestMethod.GET)
	public String home(Model model , HttpServletRequest request , Authentication auth) {
		List<CosmeticMainTypeDTO> list=service.categorySelect();
		
		
		HttpSession session = request.getSession();
		
		if(auth != null) {
			session.setAttribute("user", ((UserDTO)auth.getPrincipal()));
		}
		
		ObjectMapper mapper=new ObjectMapper();
		
		try {
			String listOfString=mapper.writeValueAsString(list);
			model.addAttribute("listOfString", listOfString);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "main";
		
	}
	/* 우편주소 찾기위해 사용하는 URL*/
	@RequestMapping(value = "addressSearch.do")
	public String addressSearch() {
		return "addressSearch";
	}
	
	/*==============           게시판 form 단순 경로            ============== */
	/*board Writeform 단순 경로*/
	@RequestMapping(value = "board/BoardWriteForm.do", method = RequestMethod.GET)
	public String boardWriteForm() {
		return "board/boardWrite";
	}

}
