package com.thebeauty.model.domain;


/**
 * @author �Ӵ�ȣ
 * @������ : 2017-11-10
 * 
 * TABLE : DELIVERY_STATUS_TB
 * 	- ��� ���� ���̺�
 * 
 * COLUMN : 
 *  - DELI_STATUS_CODE : ���Ÿ��
 *  - DELI_STATUS_NAME : ��ۻ���
 */

public class DeliveryStatusDTO {
	private int deliStatusCode; // DELI_STATUS_CODE
	private String deliStatusName; // DELI_STATUS_NAME
	
	/* ������ */
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
