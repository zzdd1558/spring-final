package com.thebeauty.model.dao;

import com.thebeauty.model.domain.FavoriteCosmeticDTO;
import java.util.List;

import com.thebeauty.model.domain.UserDTO;

public interface UserDAO {
	
	/** 회원 가입*/
	public abstract int userJoin(UserDTO user);
	
	/** 모든 회원 가져오기*/
	public abstract List<UserDTO> userSearchAll();
	
	/** maxIdx 가져오기 */
	public abstract int getUserMaxIdx();
	
	/** 회원 ID로 회원정보 가저오기*/
	public abstract UserDTO getUserInfo(String userId);
	
	/** 회원 번호로 회원정보 가저오기*/
	public abstract UserDTO getUserDetail(int userKey);
	
	/** 회원승인으로 인한 Rating 업데이트*/
	public abstract int userPermissionUpdate(String userId);
	
	/** 아이디 가져오기 */
	public abstract UserDTO getUserId(UserDTO user);
	
	/** 비밀번호를 찾고자 하는 user가 존재하는지 */
	public abstract UserDTO findPassword(UserDTO user);
	
	/** 비밀번호 변경 */
	public abstract int changePassword(UserDTO user);
	
	/** 이름 알아오기*/
	public abstract String userNameSelect(int userKey);
	
	/** 좋아요 관련 기능*/
	public abstract int insertFavorProd(FavoriteCosmeticDTO favorDTO);
	
	public abstract int searchFavProd(FavoriteCosmeticDTO favorDTO);
	
	/** 페이징 처리하여 고객정보 가져오기*/
	public abstract List<UserDTO> listAll(int start, int end);
	
	/** 회원번호로 고객정보 수정하기*/
	public abstract int updateUser(UserDTO user);
	
	public abstract int deleteUser(UserDTO user);
}
