package com.thebeauty.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.BrandDAOImpl;
import com.thebeauty.model.domain.CosmeticBrandDTO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private BrandDAOImpl brandDAO;
	
	@Override
	/* 모든 브랜드 가져오기 */
	public List<CosmeticBrandDTO> getAllBrand() {
		return brandDAO.allSelectBrand();
	}
	
	@Override
	/* 선택한 브랜드 가져오기 */
	public CosmeticBrandDTO getOneBrand(CosmeticBrandDTO brand) {
		return brandDAO.oneSelectBrand(brand);
	}
	
	@Override
	/* 브랜드 추가하기 */
	public int addBrand(int brandIdx) {
		return brandDAO.insertBrand(brandIdx);
	}
	
	@Override
	/* 브랜드 삭제하기 */
	public int removeBrand(int brandIdx) {
		return brandDAO.deleteBrand(brandIdx);
	}
}
