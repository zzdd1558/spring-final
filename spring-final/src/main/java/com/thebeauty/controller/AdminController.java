package com.thebeauty.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.regexp.internal.recompile;
import com.thebeauty.model.dao.ProductDAO;
import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.CommentDTO;
import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
import com.thebeauty.model.domain.ProductImagePathDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.service.BoardPager;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	@Autowired
	private UserDAO userDao;
	
	@Autowired
	private ProductDAO productDao;
	
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public void test() {
		System.out.println("Hello");
	}
	
	/* 관리자로 모든 고객정보 가져오기*/
	@RequestMapping(value="userListForm.do", method = RequestMethod.GET)
	public ModelAndView userAllSearch(@RequestParam(defaultValue="1") int curPage) {
		ModelAndView mv = new ModelAndView("admin/admin");
		List<UserDTO> list = userDao.userSearchAll();
		int count = list.size();
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
	    int end = boardPager.getPageEnd();
	    
	    list = userDao.listAll(start, end);
	    Map<String, Object> map = new HashMap<String, Object>();
	    
		map.put("list", list); // list
	    map.put("count", count); // 레코드의 갯수
	    map.put("boardPager", boardPager);
		mv.addObject("list", list);
		mv.addObject("map", map);
		
		return mv;
	}
	
	/* USERKEY값으로 회원정보 가져오기*/
	@RequestMapping(value="userInfo.do", method = RequestMethod.GET)
	public ModelAndView userSelectByUserKey(@RequestParam("userKey") String Key) {
		ModelAndView mv = new ModelAndView("admin/userRead");
		int userKey = Integer.parseInt(Key);
		UserDTO user = userDao.getUserDetail(userKey);
		mv.addObject("user", user);
		return mv;
	}
	
	/* USERKEY값으로 회원정보 수정및 삭제하기*/
	@RequestMapping(value="updateAndDelete.do", method= RequestMethod.GET)
	public String userUpdate(@RequestParam("command") String command,  UserDTO user) {
		
		if(command.equals("update")) {
			int result = userDao.updateUser(user);
		} else if(command.equals("delete")){
			int result = userDao.deleteUser(user);
		}
		return "redirect:userListForm.do";
	}
	
	
	/* 관리자 페이지 이동*/
	@RequestMapping("admin.do")
	public String adminView() {
		return "admin/admin";
	}
	
	/* 모든 상품 보여주기*/
	@RequestMapping(value="productList.do", method=RequestMethod.GET)
	public ModelAndView SearchAllProduct(@RequestParam(defaultValue="1") int curPage) {
		ModelAndView mv = new ModelAndView("admin/productList");
		List<CosmeticProductDTO> list = productDao.searchAllProduct();
		int count = list.size();
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
	    int end = boardPager.getPageEnd();
	    list = productDao.mainProductList(start, end);
	    Map<String, Object> map = new HashMap<String, Object>();
	    
		map.put("list", list); // list
	    map.put("count", count); // 레코드의 갯수
	    map.put("boardPager", boardPager);
		mv.addObject("list", list);
		mv.addObject("map", map);
		return mv;
	}
	
	/* 상품 번호로 kindsOfProduct 가져오기*/
	@RequestMapping(value="kindOfProdInfor.do", method=RequestMethod.GET)
	public ModelAndView SearchKindsOfProd(@RequestParam("prodIdx") int prodIdx, @RequestParam(defaultValue="1") int curPage) {
		System.out.println("prodIdx : " + prodIdx);
		ModelAndView mv = new ModelAndView("admin/kindsOfProd");
		List<KindsOfProductTypeDTO> list = productDao.searchKindsOfProd(prodIdx);
		int count = list.size();
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		list = productDao.kindsOfProdList(start, end, prodIdx);
		Map<String, Object> map = new HashMap<String, Object>();
	    
		map.put("list", list); // list
	    map.put("count", count); // 레코드의 갯수
	    map.put("boardPager", boardPager);
		mv.addObject("list", list);
		mv.addObject("map", map);
		return mv;
	}
	
	@RequestMapping(value="kindsOfProdOne.do", method=RequestMethod.GET)
	public ModelAndView selectOneKindsOfProd(@RequestParam("codeOfProd") int code, KindsOfProductTypeDTO kPrd) {
		ModelAndView mv = new ModelAndView("admin/kProdList");
		kPrd = productDao.selectKindsOfProdByCode(code);
		mv.addObject("kPrd", kPrd);
		return mv;
	}

	
	@RequestMapping(value="productUpdateAndDelete.do", method=RequestMethod.GET)
	public String UpdateAndDelete(KindsOfProductTypeDTO kProd) {
		System.out.println(kProd.toString());
		productDao.kindsOfProductUpdate(kProd);
	return "redirect:productList.do";
	}
}










