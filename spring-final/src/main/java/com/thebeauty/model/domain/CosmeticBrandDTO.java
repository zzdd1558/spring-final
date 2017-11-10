package com.thebeauty.model.domain;


/**
 * @author �Ӵ�ȣ
 * @������ : 2017-11-10
 * TABLE - COSMETIC_BRAND_TB
 * 	: ȭ��ǰ �귣�� ���̺�
 * 
 * COLUMN :
 *  - BRANDTYPE_IDX : �귣�� �ڵ�
 *  - BRANDTYPE_NAME : �귣���
 *
 */
public class CosmeticBrandDTO {
	private int brandTypeIdx; //BRANDTYPE_IDX
	private String brandTypeName; //BRANDTYPE_NAME
	
	/* ������ */
	public CosmeticBrandDTO() {}

	public CosmeticBrandDTO(int brandTypeIdx, String brandTypeName) {
		super();
		this.brandTypeIdx = brandTypeIdx;
		this.brandTypeName = brandTypeName;
	}

	/* getter setter*/
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
