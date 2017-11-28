package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.BoardDTO;


public interface MallBoardDAO {

	public int selectAllCount(int prodIdx);
	public int insertBoard(BoardDTO dto);
	public int boardGetIdx();
	public BoardDTO selectOneBoard(int boardIdx);
	public int updateCount(int idx);
	public List<BoardDTO> listAll(int start, int end,int prodIdx);
	public int updateReSeq(BoardDTO dto);
	public int deleteBoard(BoardDTO dto);
	public int updateBoard(BoardDTO dto);
	

}
