package com.thebeauty.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SqlSession sqlSession;
	
	/* 회원가입 */
	@Override
	public int userJoin() {
		
		return 0;
	}
	
	/* maxIdx 가져오기 */
	@Override
	public String getUserMaxIdx() {
		String idx = sqlSession.selectOne("userMapper.userMaxIdx") ;
		return idx == null ? "0" : idx;
	}

	@Override
	public int validateUserId(String userId) {
		String idx = sqlSession.selectOne("userMapper.validateCheckById" , userId);
		System.out.println("id check 유무: " + idx);
		return idx == null ? 0 : 1;
	}
	
	

	
}
