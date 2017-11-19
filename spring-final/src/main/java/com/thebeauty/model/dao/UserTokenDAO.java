package com.thebeauty.model.dao;

import com.thebeauty.model.domain.UserTokenDTO;

public interface UserTokenDAO {

	
	/** 회원가입시 토큰 생성 */
	public abstract int createTokenByUserToken(UserTokenDTO userToken);
	
	/** 회원승인시 토큰 삭제 */
	public abstract int removeTokenByIdAndByToken(UserTokenDTO userToken);
	
	
	
}
