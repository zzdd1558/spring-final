package com.thebeauty.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.UserDTO;

@Service
public class UserIdSearchServiceImpl implements UserIdSearchService {
	
	@Autowired
	private UserDAO userDao;
	
	/* user(Key,Id) 가져오기 */
	@Override
	public UserDTO getUserId(UserDTO user) {
		return userDao.getUserId(user);
	}
}
