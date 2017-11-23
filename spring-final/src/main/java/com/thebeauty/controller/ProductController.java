package com.thebeauty.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONWrappedObject;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
import com.thebeauty.model.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController{

	@Autowired
	private ProductService service;
	
	@RequestMapping(value = "test.do", method = RequestMethod.GET)
	public ModelAndView boardWriteForm() { /*int productNum*/
		
		ObjectMapper mapper=new ObjectMapper();
		
		ModelAndView mv=new  ModelAndView("test");
		CosmeticProductDTO dto=service.SelectAllByProdIdx(1);
		List<KindsOfProductTypeDTO> list=dto.getOptionlist();
		String price=list.get(0).getProdPrice();
		
		mv.addObject("price", price);
		mv.addObject("prd", dto);
		mv.addObject("list", list);
		try {
			String listOfString=mapper.writeValueAsString(list);
			mv.addObject("listOfString", listOfString);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping(value = "test1.do", method = RequestMethod.GET)
	public String test(
			@RequestParam List<Integer> codeOfProd,
			@RequestParam int prodIdx,
			@RequestParam int subTypeIdx
			) { /*int productNum*/
		System.out.println(prodIdx);
		System.out.println(subTypeIdx);
		for (int a : codeOfProd) {
			System.out.println(a);
		}
		return "test";
	}
}
