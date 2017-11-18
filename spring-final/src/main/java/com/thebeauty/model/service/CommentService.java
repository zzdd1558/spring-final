package com.thebeauty.model.service;

import java.util.List;
import com.thebeauty.model.domain.CommentDTO;

public interface CommentService {
	
	/* 최대치 +1 적용*/
	public abstract int commentMaxIdx();
	/*insertComment*/
	public abstract int insertComment(CommentDTO dto);
	/*CommentList*/
	public abstract List<CommentDTO> commentList(int boardNum);
	/*delectComment*/
	public abstract int deleteComment(int commentNum);
}
