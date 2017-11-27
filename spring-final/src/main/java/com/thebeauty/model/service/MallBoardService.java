package com.thebeauty.model.service;

import java.util.List;
import java.util.Map;

import com.thebeauty.model.domain.BoardDTO;

public interface MallBoardService {

	/*board list*/
	public abstract List<BoardDTO> selectAll();
	/*board insertBoard*/
	public abstract int insertBoard(BoardDTO dto);
	/*board insertReply*/
	public abstract int insertReply(BoardDTO dto);
	/*board idx*/
	public abstract  int boardGetIdx();
	/*board detail*/
	public abstract BoardDTO selectOneBoard(int boardIdx);
	/*board list page*/
	public List<BoardDTO> listAll(int start, int end);
	/*board detail delete*/
	public abstract int deleteBoard(BoardDTO dto);
	/*board detail update*/
	public abstract int updateBoard(BoardDTO dto);
	/*board username 가져오기*/
	public abstract String boardUserName(int userKey);
	
}
