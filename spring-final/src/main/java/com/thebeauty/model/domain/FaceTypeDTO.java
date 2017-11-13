package com.thebeauty.model.domain;


/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * 
 * TABLE : FACE_TYPE_TB
 *  - 피부타입 테이블
 *  
 * COLUMN : 
 *  - FACE_TYPE_IDX : 피부타입 번호
 *  - FACE_NAME : 피부타입 이름   
 */

public class FaceTypeDTO {
	private int faceTypeIdx; // FACE_TYPE_IDX
	private String faceName; // FACE_NAME
	
	/* 생성자 */
	public FaceTypeDTO() {}

	public FaceTypeDTO(int faceTypeIdx, String faceName) {
		super();
		this.faceTypeIdx = faceTypeIdx;
		this.faceName = faceName;
	}

	/*getter / setter  */
	public int getFaceTypeIdx() {
		return faceTypeIdx;
	}

	public void setFaceTypeIdx(int faceTypeIdx) {
		this.faceTypeIdx = faceTypeIdx;
	}

	public String getFaceName() {
		return faceName;
	}

	public void setFaceName(String faceName) {
		this.faceName = faceName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FaceTypeDTO [faceTypeIdx=");
		builder.append(faceTypeIdx);
		builder.append(", faceName=");
		builder.append(faceName);
		builder.append("]");
		return builder.toString();
	}
	
}
