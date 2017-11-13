package com.thebeauty.model.domain;

/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : ORDER_ITEM_TB
 *  - 주문한 상품에 대한 정보
 *  
 * COLUMN : 
 *    - ORDER_ITEM_NUM : 주문 상품 번호
 *  - ORDER_NUM : 주문 번호
 *  - CODE_OF_PROD : 상품 옵션 코드
 *  - ORDER_ITEM_COUNT : 주문 수량
 */
public class OrderItemDTO {
	
	private int orderItemNum; // ORDER_ITEM_NUM
	private int orderNum; // ORDER_NUM
	private int codeOfProd; // CODE_OF_PROD
	private int orderItemCount; // ORDER_ITEM_COUNT
	
	
	/* 생성자 */
	public OrderItemDTO() {}
	
	public OrderItemDTO(int orderItemNum, int orderNum, int codeOfProd, int orderItemCount) {
		super();
		this.orderItemNum = orderItemNum;
		this.orderNum = orderNum;
		this.codeOfProd = codeOfProd;
		this.orderItemCount = orderItemCount;
	}

	/* setter / getter */
	public int getOrderItemNum() {
		return orderItemNum;
	}

	public void setOrderItemNum(int orderItemNum) {
		this.orderItemNum = orderItemNum;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public int getCodeOfProd() {
		return codeOfProd;
	}

	public void setCodeOfProd(int codeOfProd) {
		this.codeOfProd = codeOfProd;
	}

	public int getOrderItemCount() {
		return orderItemCount;
	}

	public void setOrderItemCount(int orderItemCount) {
		this.orderItemCount = orderItemCount;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("OrderItemDTO [orderItemNum=");
		builder.append(orderItemNum);
		builder.append(", orderNum=");
		builder.append(orderNum);
		builder.append(", codeOfProd=");
		builder.append(codeOfProd);
		builder.append(", orderItemCount=");
		builder.append(orderItemCount);
		builder.append("]");
		return builder.toString();
	}
}
