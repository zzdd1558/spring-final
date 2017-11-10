package com.thebeauty.model.domain;

/**
 * @author �� ����
 * @������ : 2017-11-10
 * TABLE : ORDER_TB
 *  - ���� �ֹ� ����
 *  
 * COLUMN : 
 * 	- ORDER_NUMBER : �ֹ� ��ȣ
 * 	- ORDER_TOTAL_PRICE : ��ǰ �� ����
 *  - ORDER_DATE : ��ǰ �ֹ� ����
 *  - RES_NAME : �޴� ��� �̸�
 *  - RES_PHONE : �޴� ��� �޴�����ȣ
 *  - RES_ADDR : �޴� ��� ����� ����
 *  - ORDER_REQUEST : ����� ��û����
 *  - USER_KEY : ȸ��������ȣ
 *  - DELI_STATUS_CODE : ���Ÿ��
 */

public class OrderDTO {

	private int orderNumber; // ORDER_NUMBER
	private int orderTotalPrice; // ORDER_TOTAL_PRICE
	private String orderorderDate; // ORDER_DATE
	private String resName; // RES_NAME
	private String resPhone; // RES_PHONE
	private String resAddr; // RES_ADDR
	private String orderRequest; // ORDER_REQUEST
	private int userKey; // USER_KEY
	private int deliStatusCode; // DELI_STATUS_CODE
	
	/* ������ */
	public OrderDTO() {}

	public OrderDTO(int orderNumber, int orderTotalPrice, String orderorderDate, String resName, String resPhone,
			String resAddr, String orderRequest, int userKey, int deliStatusCode) {
		super();
		this.orderNumber = orderNumber;
		this.orderTotalPrice = orderTotalPrice;
		this.orderorderDate = orderorderDate;
		this.resName = resName;
		this.resPhone = resPhone;
		this.resAddr = resAddr;
		this.orderRequest = orderRequest;
		this.userKey = userKey;
		this.deliStatusCode = deliStatusCode;
	}

	/* setter / getter */
	public int getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}

	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

	public String getOrderorderDate() {
		return orderorderDate;
	}

	public void setOrderorderDate(String orderorderDate) {
		this.orderorderDate = orderorderDate;
	}

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getResPhone() {
		return resPhone;
	}

	public void setResPhone(String resPhone) {
		this.resPhone = resPhone;
	}

	public String getResAddr() {
		return resAddr;
	}

	public void setResAddr(String resAddr) {
		this.resAddr = resAddr;
	}

	public String getOrderRequest() {
		return orderRequest;
	}

	public void setOrderRequest(String orderRequest) {
		this.orderRequest = orderRequest;
	}

	public int getUserKey() {
		return userKey;
	}

	public void setUserKey(int userKey) {
		this.userKey = userKey;
	}

	public int getDeliStatusCode() {
		return deliStatusCode;
	}

	public void setDeliStatusCode(int deliStatusCode) {
		this.deliStatusCode = deliStatusCode;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("OrderDTO [orderNumber=");
		builder.append(orderNumber);
		builder.append(", orderTotalPrice=");
		builder.append(orderTotalPrice);
		builder.append(", orderorderDate=");
		builder.append(orderorderDate);
		builder.append(", resName=");
		builder.append(resName);
		builder.append(", resPhone=");
		builder.append(resPhone);
		builder.append(", resAddr=");
		builder.append(resAddr);
		builder.append(", orderRequest=");
		builder.append(orderRequest);
		builder.append(", userKey=");
		builder.append(userKey);
		builder.append(", deliStatusCode=");
		builder.append(deliStatusCode);
		builder.append("]");
		return builder.toString();
	}
}
