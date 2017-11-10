package com.thebeauty.model.domain;

/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : QUESTION_TB
 *  - 회원 등급 테이블
 *  
 *  
 * COLUMN : 
 * 	- RATING_TYPE : 회원타입
 *  - RATING_NAME : 회원등급
 */


public class RatingTypeDTO {
	private String ratingType; // RATING_TYPE
	private String ratingName; // RATING_NAME
	
	/* 생성자 */
	public RatingTypeDTO() {}

	public RatingTypeDTO(String ratingType, String ratingName) {
		super();
		this.ratingType = ratingType;
		this.ratingName = ratingName;
	}

	/* setter / getter  */
	public String getRatingType() {
		return ratingType;
	}

	public void setRatingType(String ratingType) {
		this.ratingType = ratingType;
	}

	public String getRatingName() {
		return ratingName;
	}

	public void setRatingName(String ratingName) {
		this.ratingName = ratingName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RatingTypeDTO [ratingType=");
		builder.append(ratingType);
		builder.append(", ratingName=");
		builder.append(ratingName);
		builder.append("]");
		return builder.toString();
	}
}
