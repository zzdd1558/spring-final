package com.thebeauty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.thebeauty.model.domain.BoardDTO;
import com.thebeauty.model.service.MallBoardService;
/**
 * 게시판 관련된 핸들러 컨틀리
 * **/
@Controller
@RequestMapping("/board/")
public class BoardController {

	@Autowired
	private MallBoardService service;
	
	
	//boardform
		@RequestMapping(value = "BoardListform.do", method = RequestMethod.GET)
		public ModelAndView boardList() {
			ModelAndView mv=new ModelAndView("board/boardList");
			List<BoardDTO> list=service.selectAll();
			mv.addObject("list", list);
			return mv;
		}
		
		@RequestMapping(value="BoardDetailListform.do", method = RequestMethod.GET)
		public ModelAndView boardDetail(@RequestParam String boardSubject) {
			ModelAndView mv=new ModelAndView("board/boardDetail");
			System.out.println(boardSubject);
			BoardDTO dto=service.selectOneBoard(boardSubject);
			System.out.println(dto);
			mv.addObject("boardDTO", dto);
			return mv;
		}
		
		
		@RequestMapping(value = "BoardWrite.do", method = RequestMethod.GET)
		public String boardWrite(@ModelAttribute("board")BoardDTO dto) {
			dto.setBoardCosmeticNum(1);
			dto.setBoardCount(1);
			dto.setBoardIdx(service.boardGetIDX()+1);
			dto.setBoardLev(1);
			dto.setBoardParent(1);
			dto.setBoardReRef(1);
			dto.setBoardReSeq(1);
			dto.setBoardType("1");
			dto.setBoardUserKey(1);
			dto.setBoardUseScore(5);
			service.insert(dto);

			return "redirect:BoardListform.do";
		}
	
}
