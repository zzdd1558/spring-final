package com.thebeauty.model.domain;

/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : SHOPPING_BASKET_TB
 *  - 회원 장바구니 테이블
 *  
 *  
 * COLUMN : 
 * 	- BASKET_IDX : 장바구니 인덱스
 *  - USER_KEY : 회원 고유 번호
 *  - KINDS_OF_PROD : 상품 옵션 코드
 *  - TOTAL_COUNT : 상품수량
 *  - BASKET_DATE : 상품 담은 날짜
 */

public class ShoppingBasketDTO {
	
	private int basketIdx;		 // BASKET_IDX
	private int userKey;		 // USER_KEY
	private String kindsOfProd;  // KINDS_OF_PROD
	private String totalCount; 	 // TOTAL_COUNT
	private String basketDate; 	 // BASKET_DATE
	
	/* 생성자 */
	public ShoppingBasketDTO() {}

	public ShoppingBasketDTO(int basketIdx, int userKey, String kindsOfProd, String totalCount, String basketDate) {
		super();
		this.basketIdx = basketIdx;
		this.userKey = userKey;
		this.kindsOfProd = kindsOfProd;
		this.totalCount = totalCount;
		this.basketDate = basketDate;
	}

	/* setter / getter */
	public int getBasketIdx() {
		return basketIdx;
	}

	public void setBasketIdx(int basketIdx) {
		this.basketIdx = basketIdx;
	}

	public int getUserKey() {
		return userKey;
	}

	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}

	public String getKindsOfProd() {
		return kindsOfProd;
	}

	public void setKindsOfProd(String kindsOfProd) {
		this.kindsOfProd = kindsOfProd;
	}

	public String getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(String totalCount) {
		this.totalCount = totalCount;
	}

	public String getBasketDate() {
		return basketDate;
	}

	public void setBasketDate(String basketDate) {
		this.basketDate = basketDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ShoppingBasketDTO [basketIdx=");
		builder.append(basketIdx);
		builder.append(", userKey=");
		builder.append(userKey);
		builder.append(", kindsOfProd=");
		builder.append(kindsOfProd);
		builder.append(", totalCount=");
		builder.append(totalCount);
		builder.append(", basketDate=");
		builder.append(basketDate);
		builder.append("]");
		return builder.toString();
	}
}
