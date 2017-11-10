package com.thebeauty.model.domain;


/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * 
 * TABLE : DELIVERY_STATUS_TB
 * 	- 배송 정보 테이블
 * 
 * COLUMN : 
 *  - DELI_STATUS_CODE : 배송타입
 *  - DELI_STATUS_NAME : 배송상태
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
