package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.CosmeticBrandDTO;

@Repository
public class BrandDAOImpl implements BrandDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	/* 브랜드명 모두 가져오기 */
	public List<CosmeticBrandDTO> allSelectBrand() {
		return sqlSession.selectList("brandMapper.brandAllSelect");
	}
	
	/* 브랜드 Idx로 브랜드명 가져오기 */
	public CosmeticBrandDTO oneSelectBrand(CosmeticBrandDTO brand) {
		return sqlSession.selectOne("brandMapper.brandOneSelect", brand);
	}
	
	/* 가장높은 Idx값으로 브랜드 추가하기 */
	public int insertBrand(int brandIdx) {
		return sqlSession.insert("brandMapper.brandInsert", brandIdx);
	}
	
	/* Idx값으로 브랜드 삭제하기 */
	public int deleteBrand(int brandIdx) {
		return sqlSession.delete("brandMapper.brandDelete", brandIdx);
	}
}
