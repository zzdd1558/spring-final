package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.CommentDTO;

@Repository
public class CommentDAOImpl implements CommentDAO {

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public int CommentGetIdx() {
		int idx;
		if(sqlsession.selectOne("commentMapper.commentMaxIdx")==null) {
				idx=0;
		}else {
			idx=sqlsession.selectOne("commentMapper.commentMaxIdx");
		}
		return idx;
		
	}

	@Override
	public List<CommentDTO> selectAllComment(int BoardIdx) {
		return sqlsession.selectList("commentMapper.commentSelectAll", BoardIdx);
	}

	@Override
	public int insertComment(CommentDTO dto) {
		System.out.println(CommentGetIdx());
		dto.setCommentNum(CommentGetIdx()+1);
		return sqlsession.insert("commentMapper.commentInsert", dto);
	}

	@Override
	public int deleteComment(int commentNum) {
		System.out.println(commentNum);
		return sqlsession.delete("commentMapper.commentDelete", commentNum);
	}

	@Override
	public int updateComment(CommentDTO dto) {
		// TODO Auto-generated method stub
		return sqlsession.update("commentMapper.commentUpdate", dto);
	}

}
