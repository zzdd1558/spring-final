package com.thebeauty.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thebeauty.model.dao.MallBoardDAO;
import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.BoardDTO;

@Service
public class MallBoardServiceImpl implements MallBoardService{

	@Autowired
	private MallBoardDAO boardDao;
	
	@Autowired
	private UserDAO userDao;
	
	


	@Override
	public int insertBoard(BoardDTO dto) {
		dto.setBoardIdx(boardGetIdx()+1);
		dto.setBoardReRef(dto.getBoardIdx());
		return boardDao.insertBoard(dto);
	}
	
	@Override
	public int insertReply(BoardDTO dto) {
		dto.setBoardParent(dto.getBoardIdx());
//		dto.setBoardReRef(dto.getBoardIdx());
		dto.setBoardLev(dto.getBoardLev()+1);
		dto.setBoardReSeq(dto.getBoardReSeq()+1);
		dto.setBoardIdx(boardGetIdx()+1);
		return boardDao.insertBoard(dto);
	}

	

	@Override
	public int boardGetIdx() {
		// TODO Auto-generated method stub
		return boardDao.boardGetIdx();
				
	}


	@Override
	@Transactional
	public BoardDTO selectOneBoard(int boardIdx) {
		// TODO Auto-generated method stub
		 BoardDTO dto=boardDao.selectOneBoard(boardIdx);
		 boardDao.updateCount(dto.getBoardIdx());
		 return dto;
	}


	@Override
	public List<BoardDTO> listAll(int start, int end,int prodIdx){
			return boardDao.listAll(start, end,prodIdx);
	}


	@Override
	public int deleteBoard(BoardDTO dto) {
		return boardDao.deleteBoard(dto);
	}


	@Override
	public int updateBoard(BoardDTO dto) {
		return boardDao.updateBoard(dto);
	}


	@Override
	public String boardUserName(int userKey) {
		return userDao.userNameSelect(userKey);
	}

	@Override
	public int boardSelectCnt(int prodIdx) {
		// TODO Auto-generated method stub
		return boardDao.selectAllCount(prodIdx);
	}



}
