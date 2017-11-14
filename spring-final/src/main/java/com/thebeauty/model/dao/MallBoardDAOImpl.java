package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.BoardDTO;
@Repository
public class MallBoardDAOImpl implements MallBoardDAO {

	@Autowired
	private SqlSession sqlsesson;
	
	@Override
	public List<BoardDTO> selectAllboard() {
		// TODO Auto-generated method stub
		return sqlsesson.selectList("boardMapper.boardSelectAll");
	}

	@Override
	public int insertBoard(BoardDTO dto) {
		return sqlsesson.insert("boardMapper.boardInsert",dto);
	}

	@Override
	public int boardGetIdx() {
		// TODO Auto-generated method stub
		return sqlsesson.selectOne("boardMapper.boardMaxIdx");
	}

	@Override
	public BoardDTO selectOneBoard(String boardSubject) {
		// TODO Auto-generated method stub
		return sqlsesson.selectOne("boardMapper.boardSearch", boardSubject);
	}

}
