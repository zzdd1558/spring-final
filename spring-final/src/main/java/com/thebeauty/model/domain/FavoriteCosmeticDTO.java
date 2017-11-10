package com.thebeauty.model.domain;

/**
 * @author �� ����
 * @������ : 2017-11-10
 * TABLE : FAVORITE_COSMETIC_TB
 *  - ���ã�� �� ���ƿ� ī��Ʈ�� ���� ���̺�
 *  
 * COLUMN : 
 * 	- PROD_IDX : ���ã�� ��ǰ�� �ڵ�
 *  - USER_KEY : ���ã�� ȸ�� ���� ��ȣ
 */
public class FavoriteCosmeticDTO {

	private int prodIdx; // PROD_IDX
	private int userKeyPkFk; // USER_KEY
	
	/* ������ */
	public FavoriteCosmeticDTO() {}
	
	public FavoriteCosmeticDTO(int prodIdx, int userKeyPkFk) {
		super();
		this.prodIdx = prodIdx;
		this.userKeyPkFk = userKeyPkFk;
	}
	
	/* setter / getter */

	public int getProdIdx() {
		return prodIdx;
	}

	public void setProdIdx(int prodIdx) {
		this.prodIdx = prodIdx;
	}

	public int getUserKeyPkFk() {
		return userKeyPkFk;
	}

	public void setUserKeyPkFk(int userKeyPkFk) {
		this.userKeyPkFk = userKeyPkFk;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FavoriteCosmeticDTO [prodIdx=");
		builder.append(prodIdx);
		builder.append(", userKeyPkFk=");
		builder.append(userKeyPkFk);
		builder.append("]");
		return builder.toString();
	}
}
