package com.thebeauty.model.domain;


/**
 * @author �Ӵ�ȣ
 * @������ : 2017-11-10
 * 
 * TABLE : FACE_TYPE_TB
 *  - �Ǻ�Ÿ�� ���̺�
 *  
 * COLUMN : 
 *  - FACE_TYPE_IDX : �Ǻ�Ÿ�� ��ȣ
 *  - FACE_NAME : �Ǻ�Ÿ�� �̸�	
 */

public class FaceTypeDTO {
	private int faceTypeIdx; // FACE_TYPE_IDX
	private String faceName; // FACE_NAME
	
	/* ������ */
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
