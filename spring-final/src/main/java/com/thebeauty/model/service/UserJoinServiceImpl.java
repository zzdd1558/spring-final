package com.thebeauty.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.dao.UserTokenDAO;
import com.thebeauty.model.domain.UserDTO;
import com.thebeauty.model.domain.UserTokenDTO;

/* 회원가입 Service */
@Service
public class UserJoinServiceImpl implements UserJoinService {

	@Autowired
	private UserDAO userDao;

	@Autowired
	private UserTokenDAO userTokenDao;

	/** spring-security 비밀번호 암호화 */
	@Autowired
	private PasswordEncoder passwordEncoder;

	/** 회원가입 */
	@Override
	public int userJoin(UserDTO user, String encodeToken) {

		int key = userDao.getUserMaxIdx();
		key = (key == 0 ? 1 : key + 1);
		user.setUserKey(key);

		/* 비밀번호 암호화 */
		user.setUserPassword(passwordEncoder.encode(user.getUserPassword()));
		return userDao.userJoin(user) + createUserToken(key, encodeToken);
	}

	/** 회원 승인에 필요한 토큰 생성 */
	@Override
	public int createUserToken(int key, String encodeToken) {
		return userTokenDao.createTokenByUserToken(new UserTokenDTO(key, encodeToken));
	}

	/** 해당 ID의 회원 정보 가져오기 */
	@Override
	public UserDTO getUserInfo(String userId) {
		return userDao.getUserInfo(userId);
	}

	/** user 권한 승인으로 인한 Rating 업데이트 */
	@Override
	public int userPermissionUpdate(String userId) {
		return userDao.userPermissionUpdate(userId);
	}

	@Override
	public int removeUserTokenByUserKey(UserTokenDTO userToken) {
		return userTokenDao.removeTokenByIdAndByToken(userToken);
	}

	/** user가 있나 확인 */
	@Override
	public UserDTO findPassword(UserDTO user) {
		return userDao.findPassword(user);
	}

	/** 비밀번호 변경 */
	@Override
	public int userPasswordChange(String id, String password, String tokenKey) {

		UserDTO user = userDao.getUserInfo(id);
		user.setUserPassword(passwordEncoder.encode(password));

		if(userTokenDao.removeTokenByIdAndByToken(new UserTokenDTO(user.getUserKey(), tokenKey)) == 0) {
			return 0;
		}else {
			return userDao.changePassword(user);	
		}
	}
}
