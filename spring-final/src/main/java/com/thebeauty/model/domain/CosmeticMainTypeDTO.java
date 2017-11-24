package com.thebeauty.model.domain;

import java.util.List;

/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * 
 * TABLE : COSMETIC_MAIN_TYPE_TB
 *  - 화장품 대분류 테이블(아이, 페이스, 네일 등등...)
 * 
 * COLUMN : 
 *  - MAIN_TYPE_IDX : 메인타입번호
 *  - MAIN_NAME : 메인타입이름
 *
 */
public class CosmeticMainTypeDTO {
	private int mainTypeIdx; // MAIN_TYPE_IDX
	private String mainTypeName; // MAIN_NAME
	private List<CosmeticSubTypeDTO> subTypeList;
	
	
	/* 생성자 */
	public CosmeticMainTypeDTO() {}

	public CosmeticMainTypeDTO(int mainTypeIdx, String mainTypeName, int col,List<CosmeticSubTypeDTO> subTypeList) {
		super();
		this.mainTypeIdx = mainTypeIdx;
		this.mainTypeName = mainTypeName;
		this.subTypeList=subTypeList;
	}

	/* getter / setter */
	public int getMainTypeIdx() {
		return mainTypeIdx;
	}

	public void setMainTypeIdx(int mainTypeIdx) {
		this.mainTypeIdx = mainTypeIdx;
	}

	public String getMainTypeName() {
		return mainTypeName;
	}

	public void setMainTypeName(String mainTypeName) {
		this.mainTypeName = mainTypeName;
	}

	public List<CosmeticSubTypeDTO> getSubTypeList() {
		return subTypeList;
	}

	public void setSubTypeList(List<CosmeticSubTypeDTO> subTypeList) {
		this.subTypeList = subTypeList;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CosmeticMainTypeDTO [mainTypeIdx=");
		builder.append(mainTypeIdx);
		builder.append(", mainTypeName=");
		builder.append(mainTypeName);
		builder.append(", subTypeList=");
		builder.append(subTypeList);
		builder.append("]");
		return builder.toString();
	}
	
}
