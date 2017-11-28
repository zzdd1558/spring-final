package com.thebeauty.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thebeauty.model.domain.CommentDTO;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public void test() {
		System.out.println("Hello");
	}

}
