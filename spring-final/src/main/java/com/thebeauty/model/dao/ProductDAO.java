package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.CosmeticProductDTO;

public interface ProductDAO {
	public abstract CosmeticProductDTO SelectAllByProdIdx(int subTypeIdx);
}
