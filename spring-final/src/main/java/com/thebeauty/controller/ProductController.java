package com.thebeauty.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/product/")
public class ProductController{

	
	
	@RequestMapping(value = "test.do", method = RequestMethod.GET)
	public String boardWriteForm() { /*int productNum*/
//		service.selectByProductNm(productNum);
		
		
		return "test";
	}
}
