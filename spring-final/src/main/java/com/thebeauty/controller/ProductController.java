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
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
import com.thebeauty.model.domain.ProductImagePathDTO;
import com.thebeauty.model.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController{

	@Autowired
	private ProductService service;
	
	@RequestMapping(value = "prdDetail", method = RequestMethod.GET)
	public ModelAndView boardWriteForm(@RequestParam int prodIdx) { /*int productNum*/
		ModelAndView mv=new  ModelAndView("test");
		ObjectMapper mapper=new ObjectMapper();
		
		CosmeticProductDTO dto=service.selectAllByProdIdx(prodIdx);
		List<KindsOfProductTypeDTO> optionList=dto.getOptionlist();
		String price=optionList.get(0).getProdPrice();
		
		mv.addObject("price", price);
		mv.addObject("prd", dto);
		mv.addObject("list", optionList);
		
		try {
			String listOfString=mapper.writeValueAsString(optionList);
			mv.addObject("listOfString", listOfString);
		} catch (JsonProcessingException e) {
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
	public ModelAndView productView(
			@RequestParam int subTypeIdx,
			@RequestParam int mainTypeIdx
		){ 
		ModelAndView mv=new ModelAndView("prdList");
		List<CosmeticProductDTO> prdList=service.sellectAllBySubTypeIdx(subTypeIdx);
		Map<Integer,List<KindsOfProductTypeDTO>> map=new HashMap<>();
		Map<Integer,ProductImagePathDTO> imgMap=new HashMap<>();
		for (CosmeticProductDTO cosmeticProductDTO : prdList) {
			List<KindsOfProductTypeDTO> kprdList=cosmeticProductDTO.getOptionlist();
			if(kprdList.get(0).getCodeOfProd()==0) {
				continue;
			}else {
				map.put(cosmeticProductDTO.getProdIdx(), kprdList);
				List<ProductImagePathDTO> imgList=service.idxImgSelect(kprdList.get(0).getCodeOfProd());
				imgMap.put(kprdList.get(0).getCodeOfProd(), imgList.get(0));
			}
		}
		System.out.println(imgMap);
		mv.addObject("prdList", prdList);
		mv.addObject("map", map);
		mv.addObject("mainTypeIdx",mainTypeIdx);
		mv.addObject("imgMap", imgMap);
		
		return mv;
	}
}
