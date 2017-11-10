package com.thebeauty.model.domain;


/**
 * @author �Ӵ�ȣ
 * @������ : 2017-11-10
 * 
 * TABLE : BOARD_TYPE_TB
 * 	- �Խ��� Ÿ�� ���̺�
 * 
 * COLUMN : 
 *  - BOARD_TYPE : �Խñ� Ÿ��
 *  - BOARD_NAME : �Խ��� �̸�
 */
public class BoardTypeDTO {
	private String boardType; // BOARD_TYPE
	private String boardName; // BOARD_NAME
	
	/* ������ */
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
