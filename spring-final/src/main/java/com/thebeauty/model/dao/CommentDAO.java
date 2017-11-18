package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.CommentDTO;


public interface CommentDAO {
	public int CommentGetIdx();
	public List<CommentDTO> selectAllComment(int BoardIdx);
	public int insertComment(CommentDTO dto);
	public int deleteComment(int commentNum);
}
