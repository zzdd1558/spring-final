package com.thebeauty.model.service;

import com.thebeauty.model.domain.UserDTO;

public interface UserIdSearchService {

	/** userID 가져오기 */
	public abstract UserDTO getUserId(UserDTO user);
}
