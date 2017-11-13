package com.thebeauty.model.domain;


/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * TABLE - COSMETIC_BRAND_TB
 *    : 화장품 브랜드 테이블
 * 
 * COLUMN :
 *  - BRANDTYPE_IDX : 브랜드 코드
 *  - BRANDTYPE_NAME : 브랜드명
 *
 */
public class CosmeticBrandDTO {
	private int brandTypeIdx; //BRANDTYPE_IDX
	private String brandTypeName; //BRANDTYPE_NAME
	
	/* 생성자 */
	public CosmeticBrandDTO() {}

	public CosmeticBrandDTO(int brandTypeIdx, String brandTypeName) {
		super();
		this.brandTypeIdx = brandTypeIdx;
		this.brandTypeName = brandTypeName;
	}

	/* getter / setter */
	public int brandTypeIdx() {
		return brandTypeIdx;
	}

	public void brandTypeIdx(int brandTypeIdx) {
		this.brandTypeIdx = brandTypeIdx;
	}

	public String getBrandTypeName() {
		return brandTypeName;
	}

	public void setBrandTypeName(String brandTypeName) {
		this.brandTypeName = brandTypeName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CosmeticBrandDTO [brandTypeIdx=");
		builder.append(brandTypeIdx);
		builder.append(", brandTypeName=");
		builder.append(brandTypeName);
		builder.append("]");
		return builder.toString();
	}
}
