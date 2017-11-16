package com.thebeauty.model.service;

import java.util.List;

import com.thebeauty.model.domain.BoardDTO;

public interface MallBoardService {

	/*board list*/
	public abstract List<BoardDTO> selectAll();
	/*board insert*/
	public abstract int insert(BoardDTO dto);
	/*board idx*/
	public abstract  int boardGetIdx();
	/*board detail*/
	public abstract BoardDTO selectOneBoard(int boardIdx);
	public List<BoardDTO> listAll(int start, int end);
	
}
