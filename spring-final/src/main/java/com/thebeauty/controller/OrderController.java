package com.thebeauty.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thebeauty.model.domain.OrderDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.service.OrderService;

@Controller
@RequestMapping(value = "/order")
public  class OrderController {
	
	@Autowired
	private OrderService service;
	
	@RequestMapping(value = "/orderList.do", method = RequestMethod.GET)
	public @ResponseBody ModelAndView searchOrder(Authentication authentication) {
		
		ModelAndView mv = new ModelAndView("order/orderList");
		UserDTO user = (UserDTO)authentication.getPrincipal();
		
		List<OrderDTO> list = service.orderList(user.getUserKey());
		mv.addObject("list", list);
		
		return mv;
	}
	
	
	@RequestMapping(value = "/prodOrder.do", method = RequestMethod.POST)
	public String prodOrder(HttpServletRequest request) {
		/** 보내는사람의 고유키 */
		int userKey = Integer.parseInt(request.getParameter("userKey"));
		
		/** 받는분의 성함 */
		String resName = request.getParameter("resName");
		
		/** 받는분의 휴대폰번호 */
		String resPhone = request.getParameter("resPhone");
		
		/** 받는분의 주소 */
		String resAddr = request.getParameter("partAddr") + request.getParameter("detailAddr");
		
		/** 배송시 요청사항*/
		String orderRequest =request.getParameter("orderRequest"); 
		
		/** 상품의 서브타입_상품의코드  */
		String[] keys = request.getParameterValues("key"); 
		
		/** 상품의 옵션 코드*/
		String[] subKeys = request.getParameterValues("subKey");
		
		/** index별 상품의 갯수 */
		String[] prod_cnt = request.getParameterValues("quantity");
		
		/** 전체 가격*/
		int totalPrice = Integer.parseInt(request.getParameter("orderTotalPrice"));
		
		OrderDTO order = new OrderDTO();
		order.setOrderTotalPrice(totalPrice);
		order.setUserKey(userKey);
		order.setResName(resName);
		order.setResPhone(resPhone);
		order.setResAddr(resAddr);
		order.setOrderRequest(orderRequest);
	
		service.orderService(order , subKeys , prod_cnt);
		
		return "redirect:/";
	}

}
