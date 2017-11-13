package com.thebeauty.model.domain;

/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : SHOPPING_BASKET_TB
 *  - 회원 장바구니 테이블
 *  
 *  
 * COLUMN : 
 * - USER_KEY : 회원고유번호
 * - USER_ID : 회원아이디
 * - USER_PASSWORD : 회원 비밀번호
 * - USER_NAME : 회원 이름
 * - USER_GENDER : 회원 성별
 * - USER_BIRTH : 회원 생년월일
 * - USER_PHONE : 회원 전화번호
 * - USER_EMAIL : 회원 이메일
 * - USER_ADDR : 회원 주소
 * - USER_ANSWER : 회원 답 
 * - USER_POINT : 회원 포인트
 * - USER_TOTAL_POINT : 회원 누적 포인트
 * - USER_JOIN_DATE : 가입일자
 * - RATING_TYPE : 회원타입
 * - QUESTION_KEY : 질문타입
 */
public class UserDTO {
	private int userKey; // USER_KEY
	private String userId; // USER_ID
	private String userPassword; // USER_PASSWORD
	private String userName; // USER_NAME
	private String userGender; // USER_GENDER
	private String userBirth; // USER_BIRTH
	private String userPhone; // USER_PHONE
	private String userEmail; // USER_EMAIL
	private String userAddr; // USER_ADDR
	private String userAnswer; // USER_ANSWER
	private int userPoint; // USER_POINT
	private int userTotalPoint; // USER_TOTAL_POINT
	private String userJoinDate; // USER_JOIN_DATE
	private String ratingType; // RATING_TYPE
	private int questionKey; // QUESTION_KEY
	
	/* 생성자 */
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserDTO(int userKey, String userId, String userPassword, String userName, String userGender,
			String userBirth, String userPhone, String userEmail, String userAddr, String userAnswer, int userPoint,
			int userTotalPoint, String userJoinDate, String ratingType, int questionKey) {
		super();
		this.userKey = userKey;
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userGender = userGender;
		this.userBirth = userBirth;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userAnswer = userAnswer;
		this.userPoint = userPoint;
		this.userTotalPoint = userTotalPoint;
		this.userJoinDate = userJoinDate;
		this.ratingType = ratingType;
		this.questionKey = questionKey;
	}

	public int getUserKey() {
		return userKey;
	}

	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getUserAnswer() {
		return userAnswer;
	}

	public void setUserAnswer(String userAnswer) {
		this.userAnswer = userAnswer;
	}

	public int getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}

	public int getUserTotalPoint() {
		return userTotalPoint;
	}

	public void setUserTotalPoint(int userTotalPoint) {
		this.userTotalPoint = userTotalPoint;
	}

	public String getUserJoinDate() {
		return userJoinDate;
	}

	public void setUserJoinDate(String userJoinDate) {
		this.userJoinDate = userJoinDate;
	}

	public String getRatingType() {
		return ratingType;
	}

	public void setRatingType(String ratingType) {
		this.ratingType = ratingType;
	}

	public int getQuestionKey() {
		return questionKey;
	}

	public void setQuestionKey(int questionKey) {
		this.questionKey = questionKey;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UserDTO [userKey=");
		builder.append(userKey);
		builder.append(", userId=");
		builder.append(userId);
		builder.append(", userPassword=");
		builder.append(userPassword);
		builder.append(", userName=");
		builder.append(userName);
		builder.append(", userGender=");
		builder.append(userGender);
		builder.append(", userBirth=");
		builder.append(userBirth);
		builder.append(", userPhone=");
		builder.append(userPhone);
		builder.append(", userEmail=");
		builder.append(userEmail);
		builder.append(", userAddr=");
		builder.append(userAddr);
		builder.append(", userAnswer=");
		builder.append(userAnswer);
		builder.append(", userPoint=");
		builder.append(userPoint);
		builder.append(", userTotalPoint=");
		builder.append(userTotalPoint);
		builder.append(", userJoinDate=");
		builder.append(userJoinDate);
		builder.append(", ratingType=");
		builder.append(ratingType);
		builder.append(", questionKey=");
		builder.append(questionKey);
		builder.append("]");
		return builder.toString();
	}
}
