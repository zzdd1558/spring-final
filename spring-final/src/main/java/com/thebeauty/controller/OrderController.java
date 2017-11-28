package com.thebeauty.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/order")
public  class OrderController {
	@RequestMapping(value = "/prodOrder.do", method = RequestMethod.GET)
	public void prodOrder() {
	
		System.out.println("hello");
	}

}
