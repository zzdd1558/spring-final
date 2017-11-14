package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.QuestionDTO;

@Repository
public class QuestionDAOImpl implements QuestionDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<QuestionDTO> selectAll() {
		return sqlSession.selectList("questionMapper.selectAll");
	}

}
