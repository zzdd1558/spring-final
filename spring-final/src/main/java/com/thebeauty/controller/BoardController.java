package com.thebeauty.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.thebeauty.model.domain.BoardDTO;
import com.thebeauty.model.domain.CommentDTO;
import com.thebeauty.model.domain.UserDTO;
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
	
	
	//boardList form 구현
		@RequestMapping(value = "BoardListform.do", method = RequestMethod.GET)
		public @ResponseBody Map boardList(@RequestParam(defaultValue="1") int curPage,
										   @RequestParam int prodIdx) {
			
			int count=boardService.boardSelectCnt(prodIdx);
			BoardPager.PAGE_SCALE= 3; 
			BoardPager boardPager = new BoardPager(count, curPage);
		    int start = boardPager.getPageBegin();
		    int end = boardPager.getPageEnd();
		    List<BoardDTO> list=boardService.listAll(start,end,prodIdx);
		    Map<String, Object> map = new HashMap<String, Object>();
		    for (BoardDTO boardDTO : list) {
		    	map.put("userKey"+boardDTO.getBoardUserKey(),boardService.boardUserName(boardDTO.getBoardUserKey()));
		    }
		    map.put("list", list); // list
		    map.put("count", count); // 레코드의 갯수
		    map.put("boardPager", boardPager);
//			mv.addObject("list", list);
//			mv.addObject("map", map);
			return map;
		}
		
		//boardDetailList form 구현
		@RequestMapping(value="BoardDetailListform.do", method = RequestMethod.GET)
		public ModelAndView boardDetail(@RequestParam int boardIdx,@RequestParam int curPage) {
			ModelAndView mv=new ModelAndView("board/boardDetail");
			BoardDTO dto=boardService.selectOneBoard(boardIdx);
			List<CommentDTO> list=commentService.commentList(boardIdx);
			System.out.println("comment순서: "+list);
			mv.addObject("boardDTO", dto);
			mv.addObject("pageNum", curPage);
			mv.addObject("list",list);
			return mv;
		}
		
		//boardWrite 글쓰기 구현
		@RequestMapping(value = "BoardWrite.do", method = RequestMethod.POST, produces="application/json; charset=utf8")
		public @ResponseBody String boardWrite(BoardDTO dto) {
			boardService.insertBoard(dto);
			String msg="리뷰가 달렸습니다.";
			return msg;
		}
		
		//boardDelete 게시글 삭제 구현
		@RequestMapping(value = "BoardDelete.do", method = RequestMethod.GET)
		public String boardDelete(BoardDTO dto) {
			System.out.println("delete:"+dto);
			boardService.deleteBoard(dto);
			
			return "성공";
		}
		
		//boardUpdateform 게시글 수정form 구현
		@RequestMapping(value = "BoardUpdateform.do", method = RequestMethod.GET)
		public String BoardUpdateform(@RequestParam int boardIdx,Model model) {
			BoardDTO dto=boardService.selectOneBoard(boardIdx);
			model.addAttribute("boardDTO", dto);
			return "board/boardUpdate";
		}
		//boardUpdate 게시글 수정 구현
		@RequestMapping(value = "BoardUpdate.do", method = RequestMethod.GET)
		public String BoardUpdate(@ModelAttribute("boardForm")BoardDTO dto) {
		boardService.updateBoard(dto);
			
		return "redirect:BoardListform.do";
		}
		
		
		
		//board 답글 form 구현
		@RequestMapping(value = "BoardReplyForm.do", method = RequestMethod.GET)
		public ModelAndView BoardReplyForm(@RequestParam int num,@RequestParam int page) {
			ModelAndView mv=new ModelAndView("board/boardReply");
			BoardDTO dto=boardService.selectOneBoard(num);
			mv.addObject("board", dto);
			mv.addObject("page", page);
			return mv;
		}
		
		//board 답글 달기 구현
		@RequestMapping(value = "boardReply.do", method = RequestMethod.GET)
		public String boardReply(@RequestParam int page,@ModelAttribute("boardForm") BoardDTO dto) {
			int curpage=page;
			System.out.println("boardReply:"+dto);
			//답글 경우 ref-부모글의 grp,Seq-부모글의Seq+1,Lev-부모글의+1 
			boardService.insertReply(dto);

			return "redirect:BoardListform.do?page="+curpage;
		}
		
}
