package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
import com.thebeauty.model.domain.ProductImagePathDTO;

public interface ProductDAO {
	public abstract CosmeticProductDTO selectAllByProdIdx(int prodIdx);
	public abstract List<CosmeticProductDTO> sellectAllBySubTypeIdx(int subTypeIdx);
	public abstract List<CosmeticMainTypeDTO> categorySelect();
	public abstract CosmeticMainTypeDTO mainTypeIdx(int subTypeIdx);
	public abstract List<ProductImagePathDTO> codeImgSelect(int codeOfProd);
	/* 전체 product 갯수 구하기*/
	public abstract List<CosmeticProductDTO> searchAllProduct();
	/* 페이징 처리해서 전체 product데이터 가져오기*/
	public abstract List<CosmeticProductDTO> mainProductList(int start, int end);
	/* 상품번호로 kindsOfProd 가져오기*/
	public abstract List<KindsOfProductTypeDTO> searchKindsOfProd(int prodIdx);
	/* 페이징 상품번호별 kindsOfProd 내용 보여주기 */
	public abstract List<KindsOfProductTypeDTO> kindsOfProdList(int start, int end, int prodIdx);
	/* kindsOfProduct 업데이트 */
	public abstract int kindsOfProductUpdate(KindsOfProductTypeDTO kProd);
	/* kindsOfProduct 삭제*/
	public abstract int kindsOfProductDelete(int code);
	public abstract List<String> searchPrdName(String inputText);
	/* codeOfProd값으로 상품옵션정보 상세보기*/
	public abstract KindsOfProductTypeDTO selectKindsOfProdByCode(int code);
	/* codeOfProd값으로 상품옵션정보 삭제하기*/
	public abstract int ProductDelete(int code);
}
