package com.thebeauty.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thebeauty.model.dao.CommentDAO;
import com.thebeauty.model.dao.ProductDAO;
import com.thebeauty.model.dao.QuestionDAO;
import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.CommentDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.FavoriteCosmeticDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
import com.thebeauty.model.domain.ProductImagePathDTO;
import com.thebeauty.model.domain.QuestionDTO;
import com.thebeauty.model.domain.UserDTO;

@Controller
@RequestMapping(value="/ajax")
public class AjaxController {
	
	@Autowired
	private UserDAO userDAO;

	@Autowired
	private QuestionDAO questionDAO;
	
	@Autowired
	private CommentDAO commentDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	/*
	@Autowired
	private BrandDAO brandDAO;
	*/
	
	/*
	@Autowired
	private FaceTypeDAO faceTypeDAO;
	*/
	
	/*
	@Autowired
	private DeliveryStatusDAO deliveryStatusDAO;
	*/
	
	 /* 회원가입에 사용할 질문 비동기로 가져오는 URL */ 
	@RequestMapping(value = "/question.do", method = RequestMethod.GET)
	public @ResponseBody List<QuestionDTO> getAllQuestion()  {
		List<QuestionDTO> list = questionDAO.selectAll();
		return list;
	}
	
	/* 회원 ID 중복 비동기 처리하는 URL */
	@RequestMapping(value = "/validateUserId.do", method = RequestMethod.GET)
	public @ResponseBody int validateUserId(@RequestParam("id") String userId) throws IOException {
		UserDTO user = userDAO.getUserInfo(userId);
		return user==null ? 0 : 1;
	}
	
	@RequestMapping(value="/commentLsit.do", method = RequestMethod.GET)
	public @ResponseBody String  commentList(CommentDTO dto,Model model) {
		List<CommentDTO> list=commentDAO.selectAllComment(dto.getCommentBoard());
		model.addAttribute("list1", list);
		
		return "sucess";
	}
	
	/*prdList page Modal에 Ajax 적용*/
	@RequestMapping(value="/prdModal.do",method=RequestMethod.GET)
	public @ResponseBody Map<String,Object> prdModal(@RequestParam int prodIdx){
		Map<String,Object> map=new HashMap<>();
		CosmeticProductDTO dto=productDAO.selectAllByProdIdx(prodIdx);
		map.put("prd", dto);
		List<ProductImagePathDTO> imgList=productDAO.codeImgSelect(dto.getOptionlist().get(0).getCodeOfProd()); 
		map.put("imgIdx",imgList.get(0));
		
		return map;
	}
	
	/*좋아요 기능 구현*/
	@RequestMapping(value="/prdFavorite.do",method=RequestMethod.GET, produces="application/json; charset=utf8")
	public @ResponseBody String prdFavoriteChk(FavoriteCosmeticDTO favorDTO) {
		int a=userDAO.insertFavorProd(favorDTO);
		System.out.println(a);
		return "+좋아요+ 체크하셨습니다";
	}
	@RequestMapping(value="/prdFavoriteUnChk.do",method=RequestMethod.GET, produces="application/json; charset=utf8")
	public @ResponseBody String prdFavoriteUnChk(FavoriteCosmeticDTO favorDTO) {
		int a=userDAO.deleteFavorProd(favorDTO);
		System.out.println(a);
		return "+좋아요+ 해제되었습니다.";
	}
	
	
	
	
	/* 완성본 비동기 사용해서 처리할때 주석 풀어서 사용하면됨.*/
/*
	 모든 브랜드 가져오기 
	@RequestMapping(value = "brandList.do", method = RequestMethod.GET)
	public @ResponseBody List<CosmeticBrandDTO> searchAll() {
		List<CosmeticBrandDTO> list = brandDAO.allSelectBrand();
		return list;
	}*/
	
	/* 피부타입 모두 가져오기 
	@RequestMapping("faceTypeList.do")
	public @ResponseBody List<FaceTypeDTO> SearchAll() {
		List<FaceTypeDTO> list = faceTypeDAO.allSelectFaceType();
		return list;
	}*/
	
	/* 배송상태 가져오기 
	@RequestMapping(value="deliveryList.do")
	public @ResponseBody List<DeliveryStatusDTO> selectAll() {
		List<DeliveryStatusDTO> list = deliveryStatusDAO.deliveryStatusSelectAll();
		return list;
	}*/
	
}
