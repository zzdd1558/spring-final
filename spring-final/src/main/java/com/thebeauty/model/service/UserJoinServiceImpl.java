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
		
		
		int key = Integer.parseInt(userDao.getUserMaxIdx());
		System.out.println(key);
		user.setUserKey( (key==0 ? 1 : key + 1));
		
		 /* 비밀번호 암호화 */ 
		user.setUserPassword(passwordEncoder.encode(user.getUserPassword()));
		
		return userDao.userJoin();
	}

	@Override
	public int validateUserId(String userId) {
		
		return userDao.validateUserId(userId);
	}
}
