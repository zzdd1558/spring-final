package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.CosmeticBrandDTO;

public interface BrandDAO {
	public abstract List<CosmeticBrandDTO> allSelectBrand();

	/* 브랜드 Idx로 브랜드명 가져오기 */
	public abstract CosmeticBrandDTO oneSelectBrand(CosmeticBrandDTO brand);

	/* 가장높은 Idx값으로 브랜드 추가하기 */
	public abstract int insertBrand(int brandIdx);

	/* Idx값으로 브랜드 삭제하기 */
	public abstract int deleteBrand(int brandIdx);
}
