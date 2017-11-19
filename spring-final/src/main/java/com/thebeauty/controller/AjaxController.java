package com.thebeauty.controller;

import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thebeauty.model.dao.CommentDAO;
import com.thebeauty.model.dao.FaceTypeDAO;
import com.thebeauty.model.dao.QuestionDAO;
import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.CommentDTO;
import com.thebeauty.model.domain.CosmeticBrandDTO;
import com.thebeauty.model.domain.FaceTypeDTO;
import com.thebeauty.model.domain.QuestionDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.service.AdminService;
import com.thebeauty.model.service.UserJoinServiceImpl;

@Controller
@RequestMapping(value="/ajax")
public class AjaxController {
	
	@Autowired
	private UserDAO userDAO;

	@Autowired
	private QuestionDAO questionDAO;
	
	@Autowired
	private CommentDAO commentDAO;
	
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
