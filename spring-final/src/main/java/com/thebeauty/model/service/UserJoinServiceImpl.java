package com.thebeauty.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.UserDTO;

/* 회원가입 Service */
@Service
public class UserJoinServiceImpl implements UserJoinService{
	
	@Autowired
	private UserDAO userDao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public int userJoin(UserDTO user) {
		
		int key = userDao.getUserMaxIdx();
		user.setUserKey( (key==0 ? 1 : key + 1));
		
		 /* 비밀번호 암호화 */ 
		user.setUserPassword(passwordEncoder.encode(user.getUserPassword()));
		return userDao.userJoin(user);
		
	}

	/* 회원 ID중복 여부 확인*/
	@Override
	public int validateUserId(String userId) {
		return userDao.validateUserId(userId);
	}
	
	/* 해당 ID의 회원 정보 가져오기*/
	@Override
	public UserDTO getUserInfo(String userId) {
		return userDao.getUserInfo(userId);
	}
}
















