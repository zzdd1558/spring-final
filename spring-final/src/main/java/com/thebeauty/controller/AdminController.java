package com.thebeauty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.CommentDTO;
import com.thebeauty.model.domain.UserDTO;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	@Autowired
	private UserDAO userDao;
	
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public void test() {
		System.out.println("Hello");
	}
	
	/* 관리자 권한으로 모든 고객정보 가져오기*/
	@RequestMapping("userList.do")
	public String userAllSearch() {
		ModelAndView mv = new ModelAndView("admin/userCon");
		List<UserDTO> list = userDao.userSearchAll();
		
		return "userCon";
	}

}
