package com.thebeauty.model.domain;

/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : QUESTION_TB
 *  - 질문 테이블
 *  
 * COLUMN : 
 *    - QUESTION_KEY : 질문타입
 *  - QUESTION_CONTENT : 질문내용
 */
public class QuestionDTO {
	
	private int questionKey; // QUESTION_KEY
	private String questionContent; // QUESTION_CONTENT
	
	/* 생성자 */
	public QuestionDTO() {	}

	public QuestionDTO(int questionKey, String questionContent) {
		super();
		this.questionKey = questionKey;
		this.questionContent = questionContent;
	}

	/* setter / getter */
	public int getQuestionKey() {
		return questionKey;
	}

	public void setQuestionKey(int questionKey) {
		this.questionKey = questionKey;
	}

	public String getQuestionContent() {
		return questionContent;
	}

	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("QuestionDTO [questionKey=");
		builder.append(questionKey);
		builder.append(", questionContent=");
		builder.append(questionContent);
		builder.append("]");
		return builder.toString();
	}
}
