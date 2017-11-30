package com.thebeauty.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.FavoriteCosmeticDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
import com.thebeauty.model.domain.ProductImagePathDTO;
import com.thebeauty.model.domain.SearchDocDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController{

	@Autowired
	private ProductService service;
	
	@Autowired
	private UserDAO userDAO;
	
	
	@RequestMapping(value = "prdDetail", method = RequestMethod.GET)
	public ModelAndView boardWriteForm(@RequestParam int prodIdx,HttpServletRequest request ) { /*int productNum*/
		ModelAndView mv=new  ModelAndView("detailView");
		ObjectMapper mapper=new ObjectMapper(); 
		int flag=0;
		CosmeticProductDTO dto=service.selectAllByProdIdx(prodIdx);
		CosmeticMainTypeDTO mainTypeDTO=service.mainTypeIdx(dto.getSubTypeIdx());
		List<KindsOfProductTypeDTO> optionList=dto.getOptionlist();
		String price=optionList.get(0).getProdPrice();
		
		HttpSession session = request.getSession();
		if(session.getAttribute("user")!=null) {
			UserDTO user=(UserDTO) session.getAttribute("user");
			System.out.println(user.getUserKey()+","+prodIdx);
			FavoriteCosmeticDTO favorDTO=new FavoriteCosmeticDTO();
			favorDTO.setProdIdx(prodIdx);
			favorDTO.setUserKeyPkFk(user.getUserKey());
			flag=userDAO.searchFavProd(favorDTO);
			System.out.println(flag);
			if(flag==1) {
				System.out.println("좋아요 함");
			}else if(flag==0) {
				System.out.println("좋아요 안함");
			}
		}
			
		mv.addObject("flag",flag);
		mv.addObject("price", price);
		mv.addObject("prd", dto);
		mv.addObject("list", optionList);
		mv.addObject("mainType",mainTypeDTO.getMainTypeIdx());
		
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
		for (int a : codeOfProd) {
		}
		return "detailView";
	}
	
	 
	@RequestMapping(value = "productView.do", method = RequestMethod.GET)
	public ModelAndView productView(
			@RequestParam int subTypeIdx,
			@RequestParam int mainTypeIdx
		){ 
		ModelAndView mv=new ModelAndView("prdList");
		
		/** 선언부*/
		List<CosmeticProductDTO> prdList=service.sellectAllBySubTypeIdx(subTypeIdx);
		Map<Integer,List<KindsOfProductTypeDTO>> map=new HashMap<>();
		Map<Integer,ProductImagePathDTO> imgMap=new HashMap<>();
		
		/** 실제 로직 */
		for (CosmeticProductDTO cosmeticProductDTO : prdList) {
			List<KindsOfProductTypeDTO> kprdList=cosmeticProductDTO.getOptionlist();
			if(kprdList.get(0).getCodeOfProd()==0) {
				continue;
			}else {
				map.put(cosmeticProductDTO.getProdIdx(), kprdList);
				List<ProductImagePathDTO> imgList=service.codeImgSelect(kprdList.get(0).getCodeOfProd());
				imgMap.put(kprdList.get(0).getCodeOfProd(), imgList.get(0));
			}
		}
		
		/** 아이템 추가 */
		mv.addObject("prdList", prdList);
		mv.addObject("listSize", prdList.size());
		mv.addObject("map", map);
		mv.addObject("mainTypeIdx",mainTypeIdx);
		mv.addObject("imgMap", imgMap);
		
		
		
		return mv;
	}
	
	@RequestMapping(value="searchprdName.do",method=RequestMethod.POST)
	public @ResponseBody List<SearchDocDTO> searchName(@RequestParam String inputText){
		List<String> list= service.searchPrdName(inputText);
/**
 * 1.mainTypeIdx
 * 2.subTypeIdx
 * 3.subTypeName
 * 4.prdIdx
 * 5.prdName
 * 6.prdIntroduce
 * 7.prd_infoType
 * 8.codeOfProd
 * 9.codeOfProd_name
 * 10.numOfProdIdx
 * 11.pathOfImage
 */
		List<SearchDocDTO> searchList=new ArrayList<>();
		for (String prdName : list) {
			String[] str=prdName.split("\\)");
			searchList.add(new SearchDocDTO(str[0],str[1], str[2],str[3], str[4], str[5], str[6],str[7], str[8],str[9], str[10]));
		}
		return searchList;
	}
	
	@RequestMapping("searchIdx.do")
	public String searchIdx(@RequestParam String name){
		System.out.println(name);
		
		
		return "";
	}
	
	
	
	
}
