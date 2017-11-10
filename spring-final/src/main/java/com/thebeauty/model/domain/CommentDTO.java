package com.thebeauty.model.domain;


/**
 * @author ÀÓ´ëÈ£
 * @»ý¼ºÀÏ : 2017-11-10
 * 
 * TABLE : COMMENT_TB
 *  - ´ñ±Û °Ô½ÃÆÇ
 *  
 * COLUMN : 
 *  - COMMENT_NUM : ´ñ±Û ±Û¹øÈ£
 *  - COMMENT_BOARD : °Ô½Ã±Û ¹øÈ£
 *  - COMMENT_ID : ´ñ±Û ÀÛ¼ºÀÚ
 *  - COMMENT_DATE : ´ñ±Û ÀÛ¼ºÀÏ
 *  - COMMENT_PARENT : ºÎ¸ð ´ñ±Û ¹øÈ£
 *  - COMMENT_CONTENT : ´ñ±Û ³»¿ë
 *  - COMMENT_LEV : ´ñ±Û ±íÀÌ
 *  - COMMENT_RE_SEQ : ´ñ±Û ¼ø¼­
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
	
	/* »ý¼ºÀú */
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

	/* getter / setter*/
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
