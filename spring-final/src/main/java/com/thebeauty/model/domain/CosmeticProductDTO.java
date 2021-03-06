package com.thebeauty.model.domain;

import java.util.List;

/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * 
 * TABLE : COSMETIC_PRODUCT_TB
 *  - 화장품 상품 테이블
 *  
 * COLUMN : 
 *  - PROD_IDX : 상품의 코드
 *  - BRAND_TYPE_IDX : 브랜드 코드
 *  - SUB_TYPE_IDX : 서브타입 번호
 *  - FACE_TYPE_ID : 피부타입 번호
 *  - COSM_NAME : 화장품 이름
 *  - PA_VALUE : 자외선 A 차단 지수
 *  - SPF_VALUE : 자외선 B 차단 지수
 *  - PROD_INFOTYPE : 상품 설명타입
 *  - PROD_INTRODUCE : 상품 상세설명
 *  - COSM_RELEASE_DATE : 화장품 출시일
 */
public class CosmeticProductDTO {
	private int prodIdx; // PROD_IDX
	private int brandTypeIdx; // BRAND_TYPE_IDX
	private int subTypeIdx; // SUB_TYPE_IDX
	private int faceTypeId; // FACE_TYPE_ID
	private String cosmName; // COSM_NAME
	private int paValue; // PA_VALUE
	private int spfValue; // SPF_VALUE
	private String prodInfoType;	// PROD_INFOTYPE
	private String prodIntroduce; // PROD_INTRODUCE
	private String cosmReleaseDate; // COSM_RELEASE_DATE
	private String brandTypeName; // BRAND_TYPE_NAME
	private String subTypeName;
	private List<KindsOfProductTypeDTO> optionList; //KindsOfProductTypeDTO_List
	
	/* 생성자 */
	public CosmeticProductDTO() {}

	public CosmeticProductDTO(int prodIdx, int brandTypeIdx, int subTypeIdx, int faceTypeId, String cosmName,
			int paValue, int spfValue, String prodIntroduce, String cosmReleaseDate,String prodInfoType,String brandTypeName,String subTypeName, List<KindsOfProductTypeDTO> optionList) {
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
		this.prodInfoType=prodInfoType;
		this.brandTypeName=brandTypeName;
		this.subTypeName=subTypeName;
		this.optionList=optionList;
	}

	/* getter / setter */
	public int getProdIdx() {
		return prodIdx;
	}

	public void setProdIdx(int prodIdx) {
		this.prodIdx = prodIdx;
	}

	public String getSubTypeName() {
		return subTypeName;
	}

	public void setSubTypeName(String subTypeName) {
		this.subTypeName = subTypeName;
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

	public String getBrandTypeName() {
		return brandTypeName;
	}

	public void setBrandTypeName(String brandTypeName) {
		this.brandTypeName = brandTypeName;
	}

	public List<KindsOfProductTypeDTO> getOptionList() {
		return optionList;
	}

	public void setOptionList(List<KindsOfProductTypeDTO> optionList) {
		this.optionList = optionList;
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
	
	public String getProdInfoType() {
		return prodInfoType;
	}

	public void setProdInfoType(String prodInfoType) {
		this.prodInfoType = prodInfoType;
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

	public List<KindsOfProductTypeDTO> getOptionlist() {
		return optionList;
	}

	public void setOptionlist(List<KindsOfProductTypeDTO> optionlist) {
		optionList = optionlist;
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
		builder.append(", prodInfoType=");
		builder.append(prodInfoType);
		builder.append(", cosmReleaseDate=");
		builder.append(cosmReleaseDate);
		builder.append(", brandTypeName=");
		builder.append(brandTypeName);
		builder.append(", subTypeName=");
		builder.append(subTypeName);
		builder.append(", optionList=");
		builder.append(optionList);
		builder.append("]");
		return builder.toString();
	}
}
