package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.BoardDTO;


public interface MallBoardDAO {

	public List<BoardDTO> selectAllboard();
	public int insertBoard(BoardDTO dto);
	public int boardGetIdx();
	public BoardDTO selectOneBoard(String boardSubject);
}
