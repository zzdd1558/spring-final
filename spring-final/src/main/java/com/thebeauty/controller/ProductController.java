package com.thebeauty.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.thebeauty.model.domain.CosmeticSubTypeDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
import com.thebeauty.model.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController{

	@Autowired
	private ProductService service;
	
	@RequestMapping(value = "prdDetail", method = RequestMethod.GET)
	public ModelAndView boardWriteForm() { /*int productNum*/
		ModelAndView mv=new  ModelAndView("test");
		ObjectMapper mapper=new ObjectMapper();
		
		CosmeticProductDTO dto=service.selectAllByProdIdx(1);
		System.out.println(dto);
		List<KindsOfProductTypeDTO> optionList=dto.getOptionlist();
		String price=optionList.get(0).getProdPrice();
		
		mv.addObject("price", price);
		mv.addObject("prd", dto);
		mv.addObject("list", optionList);
		try {
			String listOfString=mapper.writeValueAsString(optionList);
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
	@RequestMapping(value = "productView.do", method = RequestMethod.GET)
	public ModelAndView productView(@RequestParam int subTypeIdx) { /*int productNum*/
		ModelAndView mv=new ModelAndView("prdList");
		List<CosmeticProductDTO> prdList=service.sellectAllBySubTypeIdx(subTypeIdx);
		System.out.println(prdList);
		Map<Integer,List<KindsOfProductTypeDTO>> map=new HashMap<>();
		for (CosmeticProductDTO cosmeticProductDTO : prdList) {
			List<KindsOfProductTypeDTO> kprdList=cosmeticProductDTO.getOptionlist();
			System.out.println(cosmeticProductDTO.getProdIdx()+","+kprdList);
			map.put(cosmeticProductDTO.getProdIdx(), kprdList);
		}
		
		mv.addObject("prdList", prdList);
		mv.addObject("map", map);
		
		return mv;
	}
}
