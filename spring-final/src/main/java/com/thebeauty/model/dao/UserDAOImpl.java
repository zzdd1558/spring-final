package com.thebeauty.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SqlSession sqlSession;
	
	/* 회원가입 */
	@Override
	public int userJoin(UserDTO user) {
		return sqlSession.insert("userMapper.insertUser", user);
	}
	
	/* maxIdx 가져오기 */
	@Override
	public int getUserMaxIdx() {
		String idx = sqlSession.selectOne("userMapper.userMaxIdx") ;
		return idx == null ? 0 : Integer.parseInt(idx);
	}

	@Override
	public int validateUserId(String userId) {
		UserDTO user  = sqlSession.selectOne("userMapper.selectUserById" , userId);
		return user == null ? 0 : 1;
	}
	
	@Override
	public UserDTO getUserInfo(String userId) {
		return sqlSession.selectOne("userMapper.selectUserById", userId);
	}
	
	

	
}
