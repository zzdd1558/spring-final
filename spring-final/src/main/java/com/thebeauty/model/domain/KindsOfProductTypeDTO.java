package com.thebeauty.model.domain;

/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : KINDS_OF_PRODUCT_TYPE_TB
 *  - 동일 화장품의 색상 및 옵션에 대한 테이블
 *  
 * COLUMN : 
 *    - CODE_OF_PROD :  상품 옵션 코드
 *  - PROD_IDX : 상품의 코드
 *  - PROD_COUNT : 상품 재고
 *  - PROD_PRICE : 화장품 가격
 *  - PROD_COLOR : 옵션 색상
 */

public class KindsOfProductTypeDTO {
	
	private String codeOfProd; // CODE_OF_PROD
	private String prodIdx; // PROD_IDX
	private String prodCount; // PROD_COUNT
	private String prodPrice; // PROD_PRICE
	private String prodColor; // PROD_COLOR

	/* 생성자 */
	public KindsOfProductTypeDTO() {}
	
	public KindsOfProductTypeDTO(String codeOfProd, String prodIdx, String prodCount, String prodPrice,
			String prodColor) {
		super();
		this.codeOfProd = codeOfProd;
		this.prodIdx = prodIdx;
		this.prodCount = prodCount;
		this.prodPrice = prodPrice;
		this.prodColor = prodColor;
	}

	/* setter / getter */
	public String getCodeOfProd() {
		return codeOfProd;
	}

	public void setCodeOfProd(String codeOfProd) {
		this.codeOfProd = codeOfProd;
	}

	public String getProdIdx() {
		return prodIdx;
	}

	public void setProdIdx(String prodIdx) {
		this.prodIdx = prodIdx;
	}

	public String getProdCount() {
		return prodCount;
	}

	public void setProdCount(String prodCount) {
		this.prodCount = prodCount;
	}

	public String getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(String prodPrice) {
		this.prodPrice = prodPrice;
	}

	public String getProdColor() {
		return prodColor;
	}

	public void setProdColor(String prodColor) {
		this.prodColor = prodColor;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("KindsOfProductTypeDTO [codeOfProd=");
		builder.append(codeOfProd);
		builder.append(", prodIdx=");
		builder.append(prodIdx);
		builder.append(", prodCount=");
		builder.append(prodCount);
		builder.append(", prodPrice=");
		builder.append(prodPrice);
		builder.append(", prodColor=");
		builder.append(prodColor);
		builder.append("]");
		return builder.toString();
	}
}
