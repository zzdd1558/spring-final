package com.thebeauty.model.domain;

/**
 * @author 최 윤진
 * @생성일 : 2017-11-10
 * TABLE : PRODUCT_IMAGE_PATH_TB
 *  - 상품 옵션에대한 각각의 이미지
 *  
 * COLUMN : 
 * 	- NUM_OF_PROD_IDX : 이미지 번호
 *  - CODE_OF_PROD : 상품 옵션 코드
 *  - PATH_OF_IMAGE : 상품 이미지 경로
 */

public class ProductImagePathDTO {

	private int numOfProdIdx;	// NUM_OF_PROD_IDX
	private String codeOfProd;	// CODE_OF_PROD
	private String pathOfImage;	// PATH_OF_IMAGE
	
	/* 생성자 */
	public ProductImagePathDTO() {}

	public ProductImagePathDTO(int numOfProdIdx, String codeOfProd, String pathOfImage) {
		super();
		this.numOfProdIdx = numOfProdIdx;
		this.codeOfProd = codeOfProd;
		this.pathOfImage = pathOfImage;
	}

	/* setter/ getter */
	public int getNumOfProdIdx() {
		return numOfProdIdx;
	}

	public void setNumOfProdIdx(int numOfProdIdx) {
		this.numOfProdIdx = numOfProdIdx;
	}

	public String getCodeOfProd() {
		return codeOfProd;
	}

	public void setCodeOfProd(String codeOfProd) {
		this.codeOfProd = codeOfProd;
	}

	public String getPathOfImage() {
		return pathOfImage;
	}

	public void setPathOfImage(String pathOfImage) {
		this.pathOfImage = pathOfImage;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ProductImagePathDTO [numOfProdIdx=");
		builder.append(numOfProdIdx);
		builder.append(", codeOfProd=");
		builder.append(codeOfProd);
		builder.append(", pathOfImage=");
		builder.append(pathOfImage);
		builder.append("]");
		return builder.toString();
	}
}
