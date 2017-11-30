package com.thebeauty.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.LocalDataSourceJobStore;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.thebeauty.model.dao.FavoriteCosmeticDAO;
import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticSubTypeDTO;
import com.thebeauty.model.domain.FavoriteCosmeticDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService service;
	
	@Autowired
	private FavoriteCosmeticDAO favoriteCosmeticDao;
	
	/* 메인페이지 시작 */
	@RequestMapping(value = "openmallMain.do", method = RequestMethod.GET)
	public String home(Model model , HttpServletRequest request , Authentication auth) {
		List<CosmeticMainTypeDTO> list=service.categorySelect();

		/* 좋아요 순으로 상품불러오기*/
//		List<FavoriteCosmeticDTO> fList = favoriteCosmeticDao.favoriteSearchAll();
//		
//		int a[] = new int[450];
//		System.out.println(a.length);
//		for (int i = 0; i < fList.size(); i++) {
//			int num = fList.get(i).getProdIdx();
//			a[num] = a[num] + 1;
//		}
//		
//		for (int i = 0; i < a.length; i++) {
//		i~5 범위중 최대값 찾아서 i <-> 최대값위치
//		int maxIndex = i; // 원소의 첫번째 방번호
//		for (int j = i; j < a.length; j++) {
//			if (a[maxIndex]<a[j]) {
//				maxIndex = j; // 최대값의 인덱스만 저장
//			}
//		}
//		i방의 값과 <-> 최소값위치방의 값
//		int temp = a[maxIndex];
//		a[maxIndex] = a[i];
//		a[i] = temp;
//	}
		
//	System.out.println(Arrays.toString(a));
//	
//	int bestProd[] = new int[10];
//	for (int i = 0; i < 10; i++) {
//		System.out.println(a[i]);
//		bestProd[i] = a[i];
//	}	
	
	/* 전체 product 값 가져와서 위에서 구한 favoriteCosmetic 높은 값들과 비교하여 일치하면 리스트에 담아 넘겨주기 */
	
		
		HttpSession session = request.getSession();
		
		if(auth != null) {
			session.setAttribute("user", ((UserDTO)auth.getPrincipal()));
		}
		
		ObjectMapper mapper=new ObjectMapper();
		
		try {
			String listOfString=mapper.writeValueAsString(list);
			model.addAttribute("listOfString", listOfString);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "main";
		
	}
	/* 우편주소 찾기위해 사용하는 URL*/
	@RequestMapping(value = "addressSearch.do")
	public String addressSearch() {
		return "addressSearch";
	}
	
	/*==============           게시판 form 단순 경로            ============== */
	/*board Writeform 단순 경로*/
	@RequestMapping(value = "board/BoardWriteForm.do", method = RequestMethod.GET)
	public String boardWriteForm() {
		return "board/boardWrite";
	}
	
	@RequestMapping(value = "user/myPage.do")
	public String myPage() {
		return "user/myPage";
	}

}
