package com.thebeauty.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.CosmeticMainTypeDTO;
import com.thebeauty.model.domain.CosmeticProductDTO;
import com.thebeauty.model.domain.KindsOfProductTypeDTO;
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

	/* 전체 product 갯수 구하기*/
	public List<CosmeticProductDTO> searchAllProduct() {
		return sqlsession.selectList("productMapper.productAll");
	}

	/* 페이징 처리해서 product 가져오기*/
	@Override
	public List<CosmeticProductDTO> mainProductList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
	    // BETWEEN #{start}, #{end}에 입력될 값을 맵에 
		System.out.println(start+","+end);
	    map.put("start", start);
	    map.put("end", end);
	    List<CosmeticProductDTO> list= sqlsession.selectList("productMapper.mainProductList",map);
	    return list;
	} 

	/* 상품번호별 kindsOfProd 가져오기*/
	@Override
	public List<KindsOfProductTypeDTO> searchKindsOfProd(int prodIdx) {
		return sqlsession.selectList("productMapper.kindsOfProdSelectAll", prodIdx);
	}
	
	/* 페이징 처리해서 kindsOfProduct 가져오기*/
	@Override
	public List<KindsOfProductTypeDTO> kindsOfProdList(int start, int end, int prodIdx) {
		System.out.println("여기까지 옴");
		Map<String, Object> map = new HashMap<String, Object>();
	    // BETWEEN #{start}, #{end}에 입력될 값을 맵에 
		map.put("prodIdx", prodIdx);
	    map.put("start", start);
	    map.put("end", end);
	    List<KindsOfProductTypeDTO> list = sqlsession.selectList("productMapper.kindOfProdSelectByProdIdx",map);
	    for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getCodeOfProd());
		}
		return sqlsession.selectList("productMapper.kindOfProdSelectByProdIdx",map);
	}

	/* kindsOfProduct 업데이트 */
	@Override
	public int kindsOfProductUpdate(KindsOfProductTypeDTO kProd) {
		return sqlsession.update("productMapper.kindOfProductUpdateBycodeOfProd", kProd);
	}
	
	/* kindsOfProduct 삭제 */
	@Override
	public int kindsOfProductDelete(int code) {
		return sqlsession.delete("productMapper.kindOfProductDeleteBycodeOfProd", code);
	}
	@Override
	public List<String> searchPrdName(String inputText) {
		return sqlsession.selectList("productMapper.searchPrdName",inputText);
	}
	
	/* 상품옵션번호로 상품 가져오기*/
	@Override
	public KindsOfProductTypeDTO selectKindsOfProdByCode(int code) {
		return sqlsession.selectOne("productMapper.searchKindsOfProductByCode", code);
	}


	/* 상품옵션번호로 상품삭제*/
	@Override
	public int ProductDelete(int code) {
		return sqlsession.delete("productMapper.kindOfProductDeleteBycodeOfProd", code);
	}
	
	


}
