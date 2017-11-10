package com.thebeauty.model.domain;

/**
 * @author �� ����
 * @������ : 2017-11-10
 * TABLE : KINDS_OF_PRODUCT_TYPE_TB
 *  - ���� ȭ��ǰ�� ���� �� �ɼǿ� ���� ���̺�
 *  
 * COLUMN : 
 * 	- CODE_OF_PROD :  ��ǰ �ɼ� �ڵ�
 *  - PROD_IDX : ��ǰ�� �ڵ�
 *  - PROD_COUNT : ��ǰ ���
 *  - PROD_PRICE : ȭ��ǰ ����
 *  - PROD_COLOR : �ɼ� ����
 */

public class KindsOfProductTypeDTO {
	
	private String codeOfProd; // CODE_OF_PROD
	private String prodIdx; // PROD_IDX
	private String prodCount; // PROD_COUNT
	private String prodPrice; // PROD_PRICE
	private String prodColor; // PROD_COLOR

	/* ������ */
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
