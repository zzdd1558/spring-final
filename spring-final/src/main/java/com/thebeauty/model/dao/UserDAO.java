package com.thebeauty.model.dao;

import com.thebeauty.model.domain.UserDTO;

public interface UserDAO {
	
	/* 회원 가입*/
	public abstract int userJoin(UserDTO user);
	
	/* maxIdx 가져오기 */
	public abstract int getUserMaxIdx();
	
	/* 회원 id로 회원정보 가저오기*/
	public abstract UserDTO getUserInfo(String userId);
	
	/* 회원승인으로 인한 Rating 업데이트*/
	public abstract int userPermissionUpdate(String userId);
	
	/* 아이디 가져오기 */
	public abstract UserDTO getUserId(UserDTO user);
}
