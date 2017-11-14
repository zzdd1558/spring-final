package com.thebeauty.model.service;

import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.MallBoardDAO;
import com.thebeauty.model.domain.BoardDTO;

@Service
public class MallBoardServiceImpl implements MallBoardService{

	@Autowired
	private MallBoardDAO boardDao;
	
	
	@Override
	public List<BoardDTO> selectAll() {
		// TODO Auto-generated method stub
			
		List<BoardDTO> list=boardDao.selectAllboard();
				list.sort(new Comparator<BoardDTO>() {

			@Override
			public int compare(BoardDTO o1, BoardDTO o2) {
				// TODO Auto-generated method stub
				return o1.getBoardIdx()-o2.getBoardIdx();
			}
		});
		
		return list;
	}


	@Override
	public int insert(BoardDTO dto) {
		// TODO Auto-generated method stub
		return boardDao.insertBoard(dto);
	}


	@Override
	public int boardGetIdx() {
		// TODO Auto-generated method stub
		return boardDao.boardGetIdx();
				
	}


	@Override
	public BoardDTO selectOneBoard(String boardSubject) {
		// TODO Auto-generated method stub
		return boardDao.selectOneBoard(boardSubject);
	}

	
}
