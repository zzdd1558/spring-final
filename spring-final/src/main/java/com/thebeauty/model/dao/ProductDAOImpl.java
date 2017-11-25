package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
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
	public String mainTypeName(int subTypeIdx) {
		return sqlsession.selectOne("cosmeticTypeMapper.mainTypeName", subTypeIdx);
	}


}
