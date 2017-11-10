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
 *  - SUB_TYPE_IDX : ����Ÿ�Թ�ȣ
 *  - SUB_TYPE_NAME : ����Ÿ���̸�
 *
 */
public class CosmeticSubTypeDTO {
	private int mainTypeIdx; // MAIN_TYPE_IDX_PK
	private int subTypeIdx; // SUB_TYPE_IDX
	private String subTypeName; // SUB_TYPE_NAME
	
	/* ������ */
	public CosmeticSubTypeDTO() {}

	public CosmeticSubTypeDTO(int mainTypeIdx, int subTypeIdx, String subTypeName) {
		super();
		this.mainTypeIdx = mainTypeIdx;
		this.subTypeIdx = subTypeIdx;
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
		return subTypeIdx;
	}

	public void setCol(int subTypeIdx) {
		this.subTypeIdx = subTypeIdx;
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
		builder.append(subTypeIdx);
		builder.append(", subTypeName=");
		builder.append(subTypeName);
		builder.append("]");
		return builder.toString();
	}
}
