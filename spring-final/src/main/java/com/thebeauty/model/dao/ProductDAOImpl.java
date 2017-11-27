package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.ProductImagePathDTO;
@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSession sqlsession;
	
	
	@Override
	public CosmeticProductDTO selectAllByProdIdx(int prodIdx) {
		CosmeticProductDTO dto=sqlsession.selectOne("productMapper.productSelectAllByProdIdx", prodIdx);
		return dto;
	}


	@Override
	public List<CosmeticProductDTO> sellectAllBySubTypeIdx(int subTypeIdx) {
		return sqlsession.selectList("productMapper.productSelectAllBySubIdx", subTypeIdx);
	}


	@Override
	public List<CosmeticMainTypeDTO> categorySelect() {
		List<CosmeticMainTypeDTO> list=sqlsession.selectList("cosmeticTypeMapper.categorySelect");
		return list;
	}


	@Override
	public  CosmeticMainTypeDTO mainTypeIdx(int subTypeIdx) {
		return sqlsession.selectOne("cosmeticTypeMapper.mainTypeSelect", subTypeIdx);
	}

	
	@Override
	public List<ProductImagePathDTO> codeImgSelect(int codeOfProd) {
		return sqlsession.selectList("productMapper.codeImgSelect", codeOfProd);
	}


}
