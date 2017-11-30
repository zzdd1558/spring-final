package com.thebeauty.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.ProductDAO;
import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
import com.thebeauty.model.domain.ProductImagePathDTO;
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO dao;
	
	@Override
	public CosmeticProductDTO selectAllByProdIdx(int prodIdx) {
		return dao.selectAllByProdIdx(prodIdx);
	}

	@Override
	public List<CosmeticProductDTO> sellectAllBySubTypeIdx(int subTypeIdx) {
		List<CosmeticProductDTO> list=dao.sellectAllBySubTypeIdx(subTypeIdx);
		return list;
		
	}

	@Override
	public List<CosmeticMainTypeDTO> categorySelect() {
		return dao.categorySelect();
	}

	

	@Override
	public List<ProductImagePathDTO> codeImgSelect(int codeOfProd) {
		return dao.codeImgSelect(codeOfProd);
	}

	
	@Override
	public CosmeticMainTypeDTO mainTypeIdx(int subTypeIdx) {
		return dao.mainTypeIdx(subTypeIdx);
	}

	@Override
	public List<String> searchPrdName(String inputText) {
		return dao.searchPrdName(inputText);
	}
	


}
