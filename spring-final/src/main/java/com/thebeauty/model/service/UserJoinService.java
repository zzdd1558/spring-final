package com.thebeauty.model.service;

import com.thebeauty.model.domain.FavoriteCosmeticDTO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.domain.UserTokenDTO;

public interface UserJoinService {
	
	/** 회원가입 */
	public abstract int userJoin(UserDTO user , String encodeToken);
	
	/** 유저 토큰 생성 */
	public abstract int createUserToken(int key,String encodeToken);

	/** user 정보 가져오기 */
	public abstract UserDTO getUserInfo(String userId);
	
	/** user 권한 승인으로 인한 Rating 업데이트 */
	public abstract int userPermissionUpdate(String userId);
	
	/** 권한 승인후 token 삭제 */
	public abstract int removeUserTokenByUserKey(UserTokenDTO userToken);
	
	/** 비밀번호 찾기*/
	public abstract UserDTO findPassword(UserDTO user);
	
	/** 비밀번호 변경 */
	public abstract int userPasswordChange(String id , String password , String tokenKey);
	
	/** 좋아요 기능*/
	public abstract int insertFavorProd(FavoriteCosmeticDTO favorDTO);
	
}
