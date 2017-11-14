package com.thebeauty.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thebeauty.model.dao.QuestionDAO;
import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.QuestionDTO;
import com.thebeauty.model.service.UserJoinServiceImpl;

@Controller
@RequestMapping(value="/ajax")
public class AjaxController {
	
	@Autowired
	UserDAO userDAO;

	@Autowired
	QuestionDAO questionDAO;
	
	
	 /* 회원가입에 사용할 질문 비동기로 가져오는 URL */ 
	@RequestMapping(value = "/question.do", method = RequestMethod.GET)
	public @ResponseBody List<QuestionDTO> getAllQuestion()  {
		List<QuestionDTO> list = questionDAO.selectAll();
		
		System.out.println(list.toString());
		
		return list;
	}
	
	/* 회원 ID 중복 비동기 처리하는 URL */
	@RequestMapping(value = "/validateUserId.do", method = RequestMethod.POST)
	public @ResponseBody int validateUserId(@RequestParam("id") String userId) throws IOException {
		int cnt = userDAO.validateUserId(userId);
		return cnt;
	}
}
