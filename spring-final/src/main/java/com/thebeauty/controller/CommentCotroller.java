package com.thebeauty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thebeauty.model.domain.CommentDTO;
import com.thebeauty.model.service.CommentService;

@Controller
@RequestMapping("/comment/")
public class CommentCotroller {

	@Autowired
	private CommentService service;
	
	
	@RequestMapping("/insertComment.do")
	public String insertComment(CommentDTO dto,@RequestParam String page) {
		service.insertComment(dto);
		
		return "redirect:/board/BoardDetailListform.do?boardIdx="+dto.getCommentBoard()+"&curPage="+page;
	}
	
	@RequestMapping("/delectComment.do")
	public String delectComment(
			@RequestParam String commentBoard,
			@RequestParam String page,
			@RequestParam int commentNum) {
		service.deleteComment(commentNum);
		
		return "redirect:/board/BoardDetailListform.do?boardIdx="+commentBoard+"&curPage="+page;
	}
	
}
