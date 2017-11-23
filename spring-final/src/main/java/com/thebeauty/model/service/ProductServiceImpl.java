package com.thebeauty.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.ProductDAO;
import com.thebeauty.model.domain.CosmeticProductDTO;
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO dao;
	
	@Override
	public CosmeticProductDTO SelectAllByProdIdx(int subTypeIdx) {
		// TODO Auto-generated method stub
		return dao.SelectAllByProdIdx(subTypeIdx);
	}

}
