package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.FaceTypeDTO;

@Repository
public class Test {
	
	@Autowired
	private SqlSession sqlSession ;
	
	
	public List<FaceTypeDTO> test() {
		System.out.println(sqlSession);
		System.out.println(sqlSession.selectList("testMapper.testSelect"));
		String aa = sqlSession.selectOne("userMapper.userMaxIdx");
		System.out.println(aa == null);
		System.out.println(11);
		return sqlSession.selectList("testMapper.testSelect");
	}
	
	
}
