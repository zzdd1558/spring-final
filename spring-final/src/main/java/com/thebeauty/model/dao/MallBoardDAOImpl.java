package com.thebeauty.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.BoardDTO;
@Repository
public class MallBoardDAOImpl implements MallBoardDAO {

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<BoardDTO> selectAllboard() {
		// TODO Auto-generated method stub
		return sqlsession.selectList("boardMapper.boardSelectAll");
	}

	@Override
	public int insertBoard(BoardDTO dto) {
		System.out.println(dto);
		return sqlsession.insert("boardMapper.boardInsert",dto);
	}
		
	@Override
	public int boardGetIdx() {
		// TODO Auto-generated method stub
		int idx;
		if(sqlsession.selectOne("boardMapper.boardMaxIdx")==null) {
				idx=0;
		}else {
			idx=sqlsession.selectOne("boardMapper.boardMaxIdx");
		}
		return idx;
	}

	@Override
	public BoardDTO selectOneBoard(int boardIdx) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne("boardMapper.boardSearch", boardIdx);
	}

	@Override
	public int updateCount(int idx) {
		return sqlsession.update("boardMapper.updateCount",idx);
	}

	@Override
	public List<BoardDTO> listAll(int start, int end) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
	    // BETWEEN #{start}, #{end}에 입력될 값을 맵에 
	    map.put("start", start);
	    map.put("end", end);
	    return sqlsession.selectList("boardMapper.listAll", map);
	}

	@Override
	public int updateReSeq(BoardDTO dto) {
		return sqlsession.update("boardMapper.updateReSeq",dto);
	}

	@Override
	public int deleteBoard(BoardDTO dto) {
		return sqlsession.delete("boardMapper.boardDelete", dto);
	}

	@Override
	public int updateBoard(BoardDTO dto) {
		return sqlsession.update("boardMapper.boardUpdate", dto);
	}

}
