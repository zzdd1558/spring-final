package com.thebeauty.model.dao;


public interface UserDAO {
	
	/* 회원 가입*/
	public abstract int userJoin();
	
	/* 회원아이디 존재 유무 */
	public abstract int validateUserId(String userId);
	
	/* maxIdx 가져오기 */
	public abstract String getUserMaxIdx();
}
