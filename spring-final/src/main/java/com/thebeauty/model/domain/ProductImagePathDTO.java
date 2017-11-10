package com.thebeauty.model.domain;

/**
 * @author �� ����
 * @������ : 2017-11-10
 * TABLE : PRODUCT_IMAGE_PATH_TB
 *  - ��ǰ �ɼǿ����� ������ �̹���
 *  
 * COLUMN : 
 * 	- NUM_OF_PROD_IDX : �̹��� ��ȣ
 *  - CODE_OF_PROD : ��ǰ �ɼ� �ڵ�
 *  - PATH_OF_IMAGE : ��ǰ �̹��� ���
 */

public class ProductImagePathDTO {

	private int numOfProdIdx;	// NUM_OF_PROD_IDX
	private String codeOfProd;	// CODE_OF_PROD
	private String pathOfImage;	// PATH_OF_IMAGE
	
	/* ������ */
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
