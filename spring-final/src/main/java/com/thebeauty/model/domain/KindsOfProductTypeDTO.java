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
 *  - PRODUCT_NAME: 옵션 이름
 */

public class KindsOfProductTypeDTO {
	
	private int codeOfProd; // CODE_OF_PROD
	private int prodIdx; // PROD_IDX
	private String prodCount; // PROD_COUNT
	private String prodPrice; // PROD_PRICE
	private String prodColor; // PROD_COLOR
	private String prodName; //PRODUCT_NAME
	private ProductImagePathDTO imgDTO; //IMGDTO
	/* 생성자 */
	public KindsOfProductTypeDTO() {}
	
	public KindsOfProductTypeDTO(int codeOfProd, int prodIdx, String prodCount, String prodPrice,
			String prodColor,String prodName,ProductImagePathDTO imgDTO) {
		super();
		this.codeOfProd = codeOfProd;
		this.prodIdx = prodIdx;
		this.prodCount = prodCount;
		this.prodPrice = prodPrice;
		this.prodColor = prodColor;
		this.prodName=prodName;
		this.imgDTO=imgDTO;
	}

	/* setter / getter */
	public int getCodeOfProd() {
		return codeOfProd;
	}

	public void setCodeOfProd(int codeOfProd) {
		this.codeOfProd = codeOfProd;
	}

	public int getProdIdx() {
		return prodIdx;
	}

	public void setProdIdx(int prodIdx) {
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
	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public ProductImagePathDTO getImgDTO() {
		return imgDTO;
	}

	public void setImgDTO(ProductImagePathDTO imgDTO) {
		this.imgDTO = imgDTO;
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
		builder.append(", prodName=");
		builder.append(prodName);
		builder.append(", imgDTO=");
		builder.append(imgDTO);
		builder.append("]");
		return builder.toString();
	}

	
}
