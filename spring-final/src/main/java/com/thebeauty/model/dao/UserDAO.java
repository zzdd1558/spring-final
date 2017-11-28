package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.UserDTO;

public interface UserDAO {
	
	/** 회원 가입*/
	public abstract int userJoin(UserDTO user);
	
	/** 모든 회원 가져오기*/
	public abstract List<UserDTO> userSearchAll();
	
	/** maxIdx 가져오기 */
	public abstract int getUserMaxIdx();
	
	/** 회원 id로 회원정보 가저오기*/
	public abstract UserDTO getUserInfo(String userId);
	
	/** 회원승인으로 인한 Rating 업데이트*/
	public abstract int userPermissionUpdate(String userId);
	
	/** 아이디 가져오기 */
	public abstract UserDTO getUserId(UserDTO user);
	
	/** 비밀번호를 찾고자 하는 user가 존재하는지 */
	public abstract UserDTO findPassword(UserDTO user);
	
	/** 비밀번호 변경 */
	public abstract int changePassword(UserDTO user);
}
