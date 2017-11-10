package com.thebeauty.model.domain;

/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : FAVORITE_COSMETIC_TB
 *  - 즐겨찾기 및 좋아요 카운트를 위한 테이블
 *  
 * COLUMN : 
 * 	- PROD_IDX : 즐겨찾기 상품의 코드
 *  - USER_KEY : 즐겨찾기 회원 고유 번호
 */
public class FavoriteCosmeticDTO {

	private int prodIdx; // PROD_IDX
	private int userKeyPkFk; // USER_KEY
	
	/* 생성자 */
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
