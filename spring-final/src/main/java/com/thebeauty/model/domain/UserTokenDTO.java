package com.thebeauty.model.domain;


/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : USER_TOKEN_TB
 *  - 회원가입 및 비밀번호를 찾기 위한 링크 테이블
 *  
 * COLUMN : 
 *    - USER_KEY_PK_FK : 회원 고유번호
 *  - USER_TOKEN : 회원 승인 토큰
 */
public class UserTokenDTO {

	private int userKeyPkFk; // USER_KEY_PK_FK
	private String userToken; // USER_TOKEN
	
	/* 생성자 */
	public UserTokenDTO() {	}

	public UserTokenDTO(int userKeyPkFk, String userToken) {
		super();
		this.userKeyPkFk = userKeyPkFk;
		this.userToken = userToken;
	}

	/* getter / setter */
	public int getUserKeyPkFk() {
		return userKeyPkFk;
	}

	public void setUserKeyPkFk(int userKeyPkFk) {
		this.userKeyPkFk = userKeyPkFk;
	}

	public String getUserToken() {
		return userToken;
	}

	public void setUserToken(String userToken) {
		this.userToken = userToken;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UserTokenDTO [userKeyPkFk=");
		builder.append(userKeyPkFk);
		builder.append(", userToken=");
		builder.append(userToken);
		builder.append("]");
		return builder.toString();
	}
}
