package com.thebeauty.model.service;

import com.thebeauty.model.domain.UserDTO;

public interface UserJoinService {
	
	/** 회원가입 */
	public abstract int userJoin(UserDTO user);
	
	/** userID 유무 확인 */
	public abstract int validateUserId(String userId);
}
