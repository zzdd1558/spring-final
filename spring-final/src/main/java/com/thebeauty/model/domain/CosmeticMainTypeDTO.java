package com.thebeauty.model.domain;


/**
 * @author 임대호
 * @생성일 : 2017-11-10
 * 
 * TABLE : COSMETIC_MAIN_TYPE_TB
 *  - 화장품 대분류 테이블(아이, 페이스, 네일 등등...)
 * 
 * COLUMN : 
 *  - MAIN_TYPE_IDX : 메인타입번호
 *  - MAIN_TYPE_NAME : 메인타입이름
 *  - COL : 서브타입번호
 *
 */
public class CosmeticMainTypeDTO {
	private int mainTypeIdx; // MAIN_TYPE_IDX
	private String mainTypeName; // MAIN_TYPE_NAME
	private int col; // COL
	
	/* 생성자 */
	public CosmeticMainTypeDTO() {}

	public CosmeticMainTypeDTO(int mainTypeIdx, String mainTypeName, int col) {
		super();
		this.mainTypeIdx = mainTypeIdx;
		this.mainTypeName = mainTypeName;
		this.col = col;
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

	public int getCol() {
		return col;
	}

	public void setCol(int col) {
		this.col = col;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CosmeticMainTypeDTO [mainTypeIdx=");
		builder.append(mainTypeIdx);
		builder.append(", mainTypeName=");
		builder.append(mainTypeName);
		builder.append(", col=");
		builder.append(col);
		builder.append("]");
		return builder.toString();
	}
}
