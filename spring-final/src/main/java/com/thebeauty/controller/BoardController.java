package com.thebeauty.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.thebeauty.model.domain.BoardDTO;
import com.thebeauty.model.domain.CommentDTO;
import com.thebeauty.model.service.BoardPager;
import com.thebeauty.model.service.CommentService;
import com.thebeauty.model.service.MallBoardService;
/**
 * 게시판 관련된 핸들러 컨틀리
 * **/
@Controller
@RequestMapping("/board/")
public class BoardController {

	@Autowired
	private MallBoardService boardService;
	
	@Autowired
	private CommentService commentService;
	
	
	//boardform
		@RequestMapping(value = "BoardListform.do", method = RequestMethod.GET)
		public ModelAndView boardList(@RequestParam(defaultValue="1") int curPage) {
			ModelAndView mv=new ModelAndView("board/boardList1");
			List<BoardDTO> list=boardService.selectAll();
			int count=list.size();
			BoardPager boardPager = new BoardPager(count, curPage);
		    int start = boardPager.getPageBegin();
		    int end = boardPager.getPageEnd();
		    list=boardService.listAll(start,end);
		    System.out.println(list);
		    
		    
			Map<String, Object> map = new HashMap<String, Object>();
		    map.put("list", list); // list
		    map.put("count", count); // 레코드의 갯수
		    map.put("boardPager", boardPager);
			mv.addObject("list", list);
			mv.addObject("map", map);
			return mv;
		}
		
		@RequestMapping(value="BoardDetailListform.do", method = RequestMethod.GET)
		public ModelAndView boardDetail(@RequestParam int boardIdx,@RequestParam int curPage) {
			ModelAndView mv=new ModelAndView("board/boardDetail");
			System.out.println(boardIdx);
			BoardDTO dto=boardService.selectOneBoard(boardIdx);
			List<CommentDTO> list=commentService.commentList(boardIdx);
			mv.addObject("boardDTO", dto);
			mv.addObject("pageNum", curPage);
			mv.addObject("list",list);
			return mv;
		}
		
		
		@RequestMapping(value = "BoardWrite.do", method = RequestMethod.GET)
		public String boardWrite(@ModelAttribute("board")BoardDTO dto) {
			System.out.println("boardWrite:"+dto);
			boardService.insertBoard(dto);
			return "redirect:BoardListform.do";
		}
		
		@RequestMapping(value = "BoardReplyForm.do", method = RequestMethod.GET)
		public ModelAndView BoardReplyForm(@RequestParam int num,@RequestParam int page) {
			ModelAndView mv=new ModelAndView("board/boardReply");
			BoardDTO dto=boardService.selectOneBoard(num);
			mv.addObject("board", dto);
			mv.addObject("page", page);
			return mv;
		}
	
		@RequestMapping(value = "boardReply.do", method = RequestMethod.GET)
		public String boardReply(@RequestParam int page,@ModelAttribute("boardForm") BoardDTO dto) {
			int curpage=page;
			System.out.println("boardReply:"+dto);
			//답글 경우 ref-부모글의 grp,Seq-부모글의Seq+1,Lev-부모글의+1 
			boardService.insertReply(dto);

			return "redirect:BoardListform.do?page="+curpage;
		}
		
}
