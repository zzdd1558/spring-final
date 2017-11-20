package com.thebeauty.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.CommentDAO;
import com.thebeauty.model.domain.CommentDTO;


@Service
public class CommentServiceImpl implements CommentService {
	

	@Autowired
	private CommentDAO dao;
	
	
	@Override
	public int commentMaxIdx() {
		return dao.CommentGetIdx();
	}

	@Override
	public int insertComment(CommentDTO dto) {
		return dao.insertComment(dto);
	}

	@Override
	public int updateComment(CommentDTO dto) {
		return dao.updateComment(dto);
	}
	
	
	@Override
	public List<CommentDTO> commentList(int boardNum) {
		return dao.selectAllComment(boardNum);
	}

	@Override
	public int deleteComment(int commentNum) {
		return dao.deleteComment(commentNum);
	}


}
