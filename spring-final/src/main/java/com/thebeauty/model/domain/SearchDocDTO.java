package com.thebeauty.model.domain;

public class SearchDocDTO {

	 private String mainTypeIdx;
	 private String subTypeIdx;
	 private String subTypeName;
	 private String prdIdx;
	 private String prdName;
	 private String prdIntroduce;
	 private String prd_infoType;
	 private String codeOfProd;
	 private String codeOfProd_name;
	 private String numOfProdIdx;
	 private String pathOfImage;
	
	 
	 
	 
	 
	 public SearchDocDTO(String mainTypeIdx, String subTypeIdx, String subTypeName, String prdIdx, String prdName,
			String prdIntroduce, String prd_infoType, String codeOfProd, String codeOfProd_name, String numOfProdIdx,
			String pathOfImage) {
		super();
		this.mainTypeIdx = mainTypeIdx;
		this.subTypeIdx = subTypeIdx;
		this.subTypeName = subTypeName;
		this.prdIdx = prdIdx;
		this.prdName = prdName;
		this.prdIntroduce = prdIntroduce;
		this.prd_infoType = prd_infoType;
		this.codeOfProd = codeOfProd;
		this.codeOfProd_name = codeOfProd_name;
		this.numOfProdIdx = numOfProdIdx;
		this.pathOfImage = pathOfImage;
	}
	public String getMainTypeIdx() {
		return mainTypeIdx;
	}
	public void setMainTypeIdx(String mainTypeIdx) {
		this.mainTypeIdx = mainTypeIdx;
	}
	public String getSubTypeIdx() {
		return subTypeIdx;
	}
	public void setSubTypeIdx(String subTypeIdx) {
		this.subTypeIdx = subTypeIdx;
	}
	public String getSubTypeName() {
		return subTypeName;
	}
	public void setSubTypeName(String subTypeName) {
		this.subTypeName = subTypeName;
	}
	public String getPrdIdx() {
		return prdIdx;
	}
	public void setPrdIdx(String prdIdx) {
		this.prdIdx = prdIdx;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public String getPrdIntroduce() {
		return prdIntroduce;
	}
	public void setPrdIntroduce(String prdIntroduce) {
		this.prdIntroduce = prdIntroduce;
	}
	public String getPrd_infoType() {
		return prd_infoType;
	}
	public void setPrd_infoType(String prd_infoType) {
		this.prd_infoType = prd_infoType;
	}
	public String getCodeOfProd() {
		return codeOfProd;
	}
	public void setCodeOfProd(String codeOfProd) {
		this.codeOfProd = codeOfProd;
	}
	public String getCodeOfProd_name() {
		return codeOfProd_name;
	}
	public void setCodeOfProd_name(String codeOfProd_name) {
		this.codeOfProd_name = codeOfProd_name;
	}
	public String getNumOfProdIdx() {
		return numOfProdIdx;
	}
	public void setNumOfProdIdx(String numOfProdIdx) {
		this.numOfProdIdx = numOfProdIdx;
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
		builder.append("SearchDocDTO [mainTypeIdx=");
		builder.append(mainTypeIdx);
		builder.append(", subTypeIdx=");
		builder.append(subTypeIdx);
		builder.append(", subTypeName=");
		builder.append(subTypeName);
		builder.append(", prdIdx=");
		builder.append(prdIdx);
		builder.append(", prdName=");
		builder.append(prdName);
		builder.append(", prdIntroduce=");
		builder.append(prdIntroduce);
		builder.append(", prd_infoType=");
		builder.append(prd_infoType);
		builder.append(", codeOfProd=");
		builder.append(codeOfProd);
		builder.append(", codeOfProd_name=");
		builder.append(codeOfProd_name);
		builder.append(", numOfProdIdx=");
		builder.append(numOfProdIdx);
		builder.append(", pathOfImage=");
		builder.append(pathOfImage);
		builder.append("]");
		return builder.toString();
	}
	

	 
	 
	 
}
