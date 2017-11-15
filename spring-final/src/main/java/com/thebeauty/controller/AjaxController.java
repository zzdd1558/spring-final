package com.thebeauty.controller;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thebeauty.model.dao.FaceTypeDAO;
import com.thebeauty.model.dao.QuestionDAO;
import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.CosmeticBrandDTO;
import com.thebeauty.model.domain.FaceTypeDTO;
import com.thebeauty.model.domain.QuestionDTO;
import com.thebeauty.model.service.AdminService;
import com.thebeauty.model.service.UserJoinServiceImpl;

@Controller
@RequestMapping(value="/ajax")
public class AjaxController {
	
	@Autowired
	private UserDAO userDAO;

	@Autowired
	private QuestionDAO questionDAO;
	
	/*
	@Autowired
	private BrandService brandService;
	*/
	
	/*
	@Autowired
	private FaceTypeDAO faceTypeDAO;
	*/
	
	 /* 회원가입에 사용할 질문 비동기로 가져오는 URL */ 
	@RequestMapping(value = "/question.do", method = RequestMethod.GET)
	public @ResponseBody List<QuestionDTO> getAllQuestion()  {
		List<QuestionDTO> list = questionDAO.selectAll();
		return list;
	}
	
	/* 회원 ID 중복 비동기 처리하는 URL */
	@RequestMapping(value = "/validateUserId.do", method = RequestMethod.GET)
	public @ResponseBody int validateUserId(@RequestParam("id") String userId) throws IOException {
		int cnt = userDAO.validateUserId(userId);
		return cnt;
	}
	
	
	/* 완성본 비동기 사용해서 처리할때 주석 풀어서 사용하면됨.*/
/*
	 모든 브랜드 가져오기 
	@RequestMapping(value = "test1.do", method = RequestMethod.GET)
	public String searchAll() {
		List<CosmeticBrandDTO> list = null;
		list = brandService.getAllBrand();
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		return "test/test";
	}*/
	
	/* 피부타입 모두 가져오기 
	@RequestMapping("test1.do")
	public String SearchAll() {
		List<FaceTypeDTO> list = null;
		list = faceTypeDAO.allSelectFaceType();
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		return "test/test";
	}*/
	
	
	
}
