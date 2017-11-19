package com.thebeauty.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.UserTokenDTO;

@Repository
public class UserTokenDAOImpl implements UserTokenDAO{

	@Autowired
	private SqlSession sqlSession;

	/* User_Token_TB에 Token값 추가*/
	@Override
	public int createTokenByUserToken(UserTokenDTO userToken) {
		return sqlSession.insert("userTokenMapper.createTokenByUserToken" , userToken);
	}

	@Override
	public int removeTokenByIdAndByToken(UserTokenDTO userToken) {

		return sqlSession.delete("userTokenMapper.removeTokenByUserToken" , userToken);
	}

	
}
