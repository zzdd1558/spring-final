package com.thebeauty.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.ProductDAO;
import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
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
	public String mainTypeName(int subTypeIdx) {
		return dao.mainTypeName(subTypeIdx);
	}

	@Override
	public List<ProductImagePathDTO> idxImgSelect(int codeOfProd) {
		return dao.idxImgSelect(codeOfProd);
	}
	


}
