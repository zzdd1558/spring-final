package com.thebeauty.model.dao;

import java.util.Iterator;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSession sqlsession;
	
	
	@Override
	public CosmeticProductDTO SelectAllByProdIdx(int prodIdx) {
		CosmeticProductDTO dto=sqlsession.selectOne("productMapper.productSelectAllByProdIdx", prodIdx);
		return dto;
	}

}
