package com.thebeauty.model.domain;


/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * TABLE : BOARD_TB
 *    - 게시판 테이블
 * 
 * COLUMN :
 *  - BOARD_IDX : 게시글 번호
 *  - BOARD_SUBJECT : 글 제목
 *  - BOARD_CONTENT : 글 내용
 *  - BOARD_FILE : 첨부파일 이름
 *  - BOARD_RE_REF : 글 그룹 번호
 *  - BOARD_LEV : 답변글 깊이
 *  - BOARD_RE_SEQ : 답변글 순서
 *  - BOARD_COUNT : 글 조회수
 *  - BOARD_DATE : 작성시간
 *  - BOARD_TYPE : 게시글 타입
 *  - BOARD_COSMETIC_NUM : 상품번호
 *  - BOARD_PARENT : 부모글 번호
 *  - BOARD_USE_SCORE : 사용 평점
 *  - USER_KEY : 회원고유번호
 */
public class BoardDTO {
	private int boardIdx; // BOARD_IDX
	private String boardSubject; // BOARD_SUBJECT
	private String boardContent; // BOARD_CONTENT
	private String boardFile; // BOARD_FILE
	private int boardReRef; // BOARD_RE_REF
	private int boardLev; // BOARD_LEV
	private int boardReSeq; // BOARD_RE_SEQ
	private int boardCount; // BOARD_COUNT
	private String boardDate; // BOARD_DATE
	private String boardType; // BOARD_TYPE
	private int boardCosmeticNum; // BOARD_COSMETIC_NUM
	private int boardParent; // BOARD_PARENT
	private int boardUseScore; // BOARD_USE_SCORE
	private int boardUserKey; // USER_KEY
	
	/* 생성자 */
	public BoardDTO() {}

	public BoardDTO(int boardIdx, String boardSubject, String boardContent, String boardFile, int boardReRef,
			int boardLev, int boardReSeq, int boardCount, String boardDate, String boardType, int boardCosmeticNum,
			int boardParent, int boardUseScore, int boardUserKey) {
		super();
		this.boardIdx = boardIdx;
		this.boardSubject = boardSubject;
		this.boardContent = boardContent;
		this.boardFile = boardFile;
		this.boardReRef = boardReRef;
		this.boardLev = boardLev;
		this.boardReSeq = boardReSeq;
		this.boardCount = boardCount;
		this.boardDate = boardDate;
		this.boardType = boardType;
		this.boardCosmeticNum = boardCosmeticNum;
		this.boardParent = boardParent;
		this.boardUseScore = boardUseScore;
		this.boardUserKey = boardUserKey;
	}

	/*getter / setter */
	public int getBoardIdx() {
		return boardIdx;
	}

	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}

	public String getBoardSubject() {
		return boardSubject;
	}

	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardFile() {
		return boardFile;
	}

	public void setBoardFile(String boardFile) {
		this.boardFile = boardFile;
	}

	public int getBoardReRef() {
		return boardReRef;
	}

	public void setBoardReRef(int boardReRef) {
		this.boardReRef = boardReRef;
	}

	public int getBoardLev() {
		return boardLev;
	}

	public void setBoardLev(int boardLev) {
		this.boardLev = boardLev;
	}

	public int getBoardReSeq() {
		return boardReSeq;
	}

	public void setBoardReSeq(int boardReSeq) {
		this.boardReSeq = boardReSeq;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public int getBoardCosmeticNum() {
		return boardCosmeticNum;
	}

	public void setBoardCosmeticNum(int boardCosmeticNum) {
		this.boardCosmeticNum = boardCosmeticNum;
	}

	public int getBoardParent() {
		return boardParent;
	}

	public void setBoardParent(int boardParent) {
		this.boardParent = boardParent;
	}

	public int getBoardUseScore() {
		return boardUseScore;
	}

	public void setBoardUseScore(int boardUseScore) {
		this.boardUseScore = boardUseScore;
	}

	public int getBoardUserKey() {
		return boardUserKey;
	}

	public void setBoardUserKey(int boardUserKey) {
		this.boardUserKey = boardUserKey;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BoardDTO [boardIdx=");
		builder.append(boardIdx);
		builder.append(", boardSubject=");
		builder.append(boardSubject);
		builder.append(", boardContent=");
		builder.append(boardContent);
		builder.append(", boardFile=");
		builder.append(boardFile);
		builder.append(", boardReRef=");
		builder.append(boardReRef);
		builder.append(", boardLev=");
		builder.append(boardLev);
		builder.append(", boardReSeq=");
		builder.append(boardReSeq);
		builder.append(", boardCount=");
		builder.append(boardCount);
		builder.append(", boardDate=");
		builder.append(boardDate);
		builder.append(", boardType=");
		builder.append(boardType);
		builder.append(", boardCosmeticNum=");
		builder.append(boardCosmeticNum);
		builder.append(", boardParent=");
		builder.append(boardParent);
		builder.append(", boardUseScore=");
		builder.append(boardUseScore);
		builder.append(", boardUserKey=");
		builder.append(boardUserKey);
		builder.append("]");
		return builder.toString();
	}
}
