package com.thebeauty.model.service;

import java.util.List;

import com.thebeauty.model.domain.CosmeticBrandDTO;

public interface BrandService {
	/* 모든 브랜드 가져오기 */
	List<CosmeticBrandDTO> getAllBrand();
	
	/* 선택한 브랜드 가져오기 */
	CosmeticBrandDTO getOneBrand(CosmeticBrandDTO brand);
	
	/* 브랜드 추가하기 */
	int addBrand(int brandIdx);

	/* 브랜드 삭제하기 */
	int removeBrand(int brandIdx);
}
