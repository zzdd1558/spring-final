package com.thebeauty.model.dao;

import com.thebeauty.model.domain.UserDTO;

public interface UserDAO {
	
	/* 회원 가입*/
	public abstract int userJoin(UserDTO user);
	
	/* 회원아이디 존재 유무 */
	public abstract int validateUserId(String userId);
	
	/* maxIdx 가져오기 */
	public abstract int getUserMaxIdx();
	
	public abstract UserDTO getUserInfo(String userId);
}
