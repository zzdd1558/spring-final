package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.FaceTypeDTO;

@Repository
public class FaceTypeDAOImpl implements FaceTypeDAO{
	
	@Autowired
	private SqlSession sqlSession ;
	
	@Override
	/* 피부타입 모두 가져오기 */
	public List<FaceTypeDTO> allSelectFaceType() {
		System.out.println(1);
		return sqlSession.selectList("faceTypeMapper.faceTypeSelectAll");
	}
	
	/* 가장높은 피부타입Idx 가져오기 */
	public int selectIdx() {
		return sqlSession.selectOne("faceTypeMapper.faceTypeMaxIdx");
	}
	
	/* 피부타입 추가하기 */
	public int insertFaceType(FaceTypeDTO faceType) {
		return sqlSession.insert("faceTypeMapper.faceInsert", faceType);
	}
	
	/* 피부타입 삭제하기 */
	public int deleteFaceType(int idx) {
		return sqlSession.delete("faceTypeMapper.faceDelete", idx);
	}
}
