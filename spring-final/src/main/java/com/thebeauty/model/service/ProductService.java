package com.thebeauty.model.service;

import java.util.List;
import java.util.Map;

import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.ProductImagePathDTO;

public interface ProductService {
	public abstract CosmeticProductDTO selectAllByProdIdx(int prodIdx);
	public abstract List<CosmeticProductDTO> sellectAllBySubTypeIdx(int subTypeIdx);
	public abstract List<CosmeticMainTypeDTO> categorySelect();
	public abstract CosmeticMainTypeDTO mainTypeIdx(int subTypeIdx);
	public abstract List<ProductImagePathDTO> codeImgSelect(int codeOfProd);
}
