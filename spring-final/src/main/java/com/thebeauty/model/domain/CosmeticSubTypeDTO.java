package com.thebeauty.model.domain;


/**
 * @author �Ӵ�ȣ
 * @������ : 2017-11-10
 * 
 * TABLE : COSMETIC_SUB_TYPE_TB
 * 	- ȭ��ǰ �ߺз� ���̺�
 * 
 * COLUMN : 
 *  - MAIN_TYPE_IDX : ����Ÿ�Թ�ȣ
 *  - COL : ����Ÿ�Թ�ȣ
 *  - SUB_TYPE_NAME : ����Ÿ���̸�
 *
 */
public class CosmeticSubTypeDTO {
	private int mainTypeIdx; // MAIN_TYPE_IDX_PK
	private int col; // COL
	private String subTypeName; // SUB_TYPE_NAME
	
	/* ������ */
	public CosmeticSubTypeDTO() {}

	public CosmeticSubTypeDTO(int mainTypeIdx, int col, String subTypeName) {
		super();
		this.mainTypeIdx = mainTypeIdx;
		this.col = col;
		this.subTypeName = subTypeName;
	}

	/* getter setter*/
	public int mainTypeIdx() {
		return mainTypeIdx;
	}

	public void mainTypeIdx(int mainTypeIdx) {
		this.mainTypeIdx = mainTypeIdx;
	}

	public int getCol() {
		return col;
	}

	public void setCol(int col) {
		this.col = col;
	}

	public String getSubTypeName() {
		return subTypeName;
	}

	public void setSubTypeName(String subTypeName) {
		this.subTypeName = subTypeName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CosmeticSubTypeDTO [mainTypeIdx=");
		builder.append(mainTypeIdx);
		builder.append(", col=");
		builder.append(col);
		builder.append(", subTypeName=");
		builder.append(subTypeName);
		builder.append("]");
		return builder.toString();
	}
}
