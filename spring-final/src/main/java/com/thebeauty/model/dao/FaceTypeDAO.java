package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.FaceTypeDTO;

public interface FaceTypeDAO {
	/* 피부타입 모두 가져오기 */
	public List<FaceTypeDTO> allSelectFaceType();
	
	/* 가장높은 피부타입Idx 가져오기 */
	public int selectMaxIdx();
	
	/* 피부타입 추가하기 */
	public int insertFaceType(FaceTypeDTO faceType);
	
	/* 피부타입 삭제하기 */
	public int deleteFaceType(int idx);
}
