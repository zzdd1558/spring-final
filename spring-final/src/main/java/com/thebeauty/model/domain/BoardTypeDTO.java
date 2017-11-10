package com.thebeauty.model.domain;


/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * 
 * TABLE : BOARD_TYPE_TB
 * 	- 게시판 타입 테이블
 * 
 * COLUMN : 
 *  - BOARD_TYPE : 게시글 타입
 *  - BOARD_NAME : 게시판 이름
 */
public class BoardTypeDTO {
	private String boardType; // BOARD_TYPE
	private String boardName; // BOARD_NAME
	
	/* 생성자 */
	public BoardTypeDTO() {}

	public BoardTypeDTO(String boardType, String boardName) {
		super();
		this.boardType = boardType;
		this.boardName = boardName;
	}

	/* getter setter*/
	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BoardTypeDTO [boardType=");
		builder.append(boardType);
		builder.append(", boardName=");
		builder.append(boardName);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
