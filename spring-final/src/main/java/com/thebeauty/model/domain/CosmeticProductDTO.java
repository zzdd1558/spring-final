package com.thebeauty.model.domain;


/**
 * @author �Ӵ�ȣ
 * @������ : 2017-11-10
 * 
 * TABLE : COSMETIC_PRODUCT_TB
 *  - ȭ��ǰ ��ǰ ���̺�
 *  
 * COLUMN : 
 *  - PROD_IDX : ��ǰ�� �ڵ�
 *  - BRAND_TYPE_IDX : �귣�� �ڵ�
 *  - SUB_TYPE_IDX : ����Ÿ�� ��ȣ
 *  - FACE_TYPE_ID : �Ǻ�Ÿ�� ��ȣ
 *  - COSM_NAME : ȭ��ǰ �̸�
 *  - PA_VALUE : �ڿܼ� A ���� ����
 *  - SPF_VALUE : �ڿܼ� B ���� ����
 *  - PROD_INTRODUCE : ��ǰ �󼼼���
 *  - COSM_RELEASE_DATE : ȭ��ǰ �����
 */
public class CosmeticProductDTO {
	private int prodIdx; // PROD_IDX
	private int brandTypeIdx; // BRAND_TYPE_IDX
	private int subTypeIdx; // SUB_TYPE_IDX
	private int faceTypeId; // FACE_TYPE_ID
	private String cosmName; // COSM_NAME
	private int paValue; // PA_VALUE
	private int spfValue; // SPF_VALUE
	private String prodIntroduce; // PROD_INTRODUCE
	private String cosmReleaseDate; // COSM_RELEASE_DATE
	
	/* ������ */
	public CosmeticProductDTO() {}

	public CosmeticProductDTO(int prodIdx, int brandTypeIdx, int subTypeIdx, int faceTypeId, String cosmName,
			int paValue, int spfValue, String prodIntroduce, String cosmReleaseDate) {
		super();
		this.prodIdx = prodIdx;
		this.brandTypeIdx = brandTypeIdx;
		this.subTypeIdx = subTypeIdx;
		this.faceTypeId = faceTypeId;
		this.cosmName = cosmName;
		this.paValue = paValue;
		this.spfValue = spfValue;
		this.prodIntroduce = prodIntroduce;
		this.cosmReleaseDate = cosmReleaseDate;
	}

	/* getter setter*/
	public int getProdIdx() {
		return prodIdx;
	}

	public void setProdIdx(int prodIdx) {
		this.prodIdx = prodIdx;
	}

	public int getBrandTypeIdx() {
		return brandTypeIdx;
	}

	public void setBrandTypeIdx(int brandTypeIdx) {
		this.brandTypeIdx = brandTypeIdx;
	}

	public int getSubTypeIdx() {
		return subTypeIdx;
	}

	public void setSubTypeIdx(int subTypeIdx) {
		this.subTypeIdx = subTypeIdx;
	}

	public int getFaceTypeId() {
		return faceTypeId;
	}

	public void setFaceTypeId(int faceTypeId) {
		this.faceTypeId = faceTypeId;
	}

	public String getCosmName() {
		return cosmName;
	}

	public void setCosmName(String cosmName) {
		this.cosmName = cosmName;
	}

	public int getPaValue() {
		return paValue;
	}

	public void setPaValue(int paValue) {
		this.paValue = paValue;
	}

	public int getSpfValue() {
		return spfValue;
	}

	public void setSpfValue(int spfValue) {
		this.spfValue = spfValue;
	}

	public String getProdIntroduce() {
		return prodIntroduce;
	}

	public void setProdIntroduce(String prodIntroduce) {
		this.prodIntroduce = prodIntroduce;
	}

	public String getCosmReleaseDate() {
		return cosmReleaseDate;
	}

	public void setCosmReleaseDate(String cosmReleaseDate) {
		this.cosmReleaseDate = cosmReleaseDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CosmeticProductDTO [prodIdx=");
		builder.append(prodIdx);
		builder.append(", brandTypeIdx=");
		builder.append(brandTypeIdx);
		builder.append(", subTypeIdx=");
		builder.append(subTypeIdx);
		builder.append(", faceTypeId=");
		builder.append(faceTypeId);
		builder.append(", cosmName=");
		builder.append(cosmName);
		builder.append(", paValue=");
		builder.append(paValue);
		builder.append(", spfValue=");
		builder.append(spfValue);
		builder.append(", prodIntroduce=");
		builder.append(prodIntroduce);
		builder.append(", cosmReleaseDate=");
		builder.append(cosmReleaseDate);
		builder.append("]");
		return builder.toString();
	}
}
