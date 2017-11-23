package com.thebeauty.model.service;

import com.thebeauty.model.domain.CosmeticProductDTO;

public interface ProductService {
	public abstract CosmeticProductDTO SelectAllByProdIdx(int subTypeIdx);
}
