package com.thebeauty.model.domain;

/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * 
 * TABLE : COMMENT_TB
 *  - 댓글 게시판
 *  
 * COLUMN : 
 *  - COMMENT_NUM : 댓글 글번호
 *  - COMMENT_BOARD : 게시글 번호
 *  - COMMENT_ID : 댓글 작성자
 *  - COMMENT_DATE : 댓글 작성일
 *  - COMMENT_PARENT : 부모 댓글 번호
 *  - COMMENT_CONTENT : 댓글 내용
 *  - COMMENT_LEV : 댓글 깊이
 *  - COMMENT_RE_SEQ : 댓글 순서
 */
public class CommentDTO {
	private int commentNum; // COMMENT_NUM
	private int commentBoard; // COMMENT_BOARD
	private String commentId; // COMMENT_ID
	private String commentDate; // COMMENT_DATE
	private int commentParent; // COMMENT_PARENT
	private String commentContent; // COMMENT_CONTENT
	private int commentLev; // COMMENT_LEV
	private int commentReSeq; // COMMENT_RE_SEQ
	
	/* 생성자 */
	public CommentDTO() {}

	public CommentDTO(int commentNum, int commentBoard, String commentId, String commentDate, int commentParent,
			String commentContent, int commentLev, int commentReSeq) {
		super();
		this.commentNum = commentNum;
		this.commentBoard = commentBoard;
		this.commentId = commentId;
		this.commentDate = commentDate;
		this.commentParent = commentParent;
		this.commentContent = commentContent;
		this.commentLev = commentLev;
		this.commentReSeq = commentReSeq;
	}

	/* getter / setter */
	public int getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}

	public int getCommentBoard() {
		return commentBoard;
	}

	public void setCommentBoard(int commentBoard) {
		this.commentBoard = commentBoard;
	}

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public int getCommentParent() {
		return commentParent;
	}

	public void setCommentParent(int commentParent) {
		this.commentParent = commentParent;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public int getCommentLev() {
		return commentLev;
	}

	public void setCommentLev(int commentLev) {
		this.commentLev = commentLev;
	}

	public int getCommentReSeq() {
		return commentReSeq;
	}

	public void setCommentReSeq(int commentReSeq) {
		this.commentReSeq = commentReSeq;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CommentDTO [commentNum=");
		builder.append(commentNum);
		builder.append(", commentBoard=");
		builder.append(commentBoard);
		builder.append(", commentId=");
		builder.append(commentId);
		builder.append(", commentDate=");
		builder.append(commentDate);
		builder.append(", commentParent=");
		builder.append(commentParent);
		builder.append(", commentContent=");
		builder.append(commentContent);
		builder.append(", commentLev=");
		builder.append(commentLev);
		builder.append(", commentReSeq=");
		builder.append(commentReSeq);
		builder.append("]");
		return builder.toString();
	}
}
