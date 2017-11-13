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
public class DeliveryStatusDTO {
	private int deliStatusCode; // DELI_STATUS_CODE
	private String deliStatusName; // DELI_STATUS_NAME
	
	/* 생성자 */
	public DeliveryStatusDTO() {}

	public DeliveryStatusDTO(int deliStatusCode, String deliStatusName) {
		super();
		this.deliStatusCode = deliStatusCode;
		this.deliStatusName = deliStatusName;
	}

	/*getter / setter */
	public int getDeliStatusCode() {
		return deliStatusCode;
	}

	public void setDeliStatusCode(int deliStatusCode) {
		this.deliStatusCode = deliStatusCode;
	}

	public String getDeliStatusName() {
		return deliStatusName;
	}

	public void setDeliStatusName(String deliStatusName) {
		this.deliStatusName = deliStatusName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DeliveryStatusDTO [deliStatusCode=");
		builder.append(deliStatusCode);
		builder.append(", deliStatusName=");
		builder.append(deliStatusName);
		builder.append("]");
		return builder.toString();
	}
	
}
