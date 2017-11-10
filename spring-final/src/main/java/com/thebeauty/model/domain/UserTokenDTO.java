package com.thebeauty.model.domain;


/**
 * @author �� ����
 * @������ : 2017-11-10
 * TABLE : USER_TOKEN_TB
 *  - ȸ������ �� ��й�ȣ�� ã�� ���� ��ũ ���̺�
 *  
 * COLUMN : 
 * 	- USER_KEY_PK_FK : ȸ�� ������ȣ
 *  - USER_TOKEN : ȸ�� ���� ��ū
 */
public class UserTokenDTO {

	private int userKeyPkFk; // USER_KEY_PK_FK
	private String userToken; // USER_TOKEN
	
	/* ������ */
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
