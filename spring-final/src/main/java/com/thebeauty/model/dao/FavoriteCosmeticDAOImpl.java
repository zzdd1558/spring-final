package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.FavoriteCosmeticDTO;

@Repository
public class FavoriteCosmeticDAOImpl implements FavoriteCosmeticDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public List<FavoriteCosmeticDTO> favoriteSearchAll(){
		return sqlSession.selectList("favoriteMapper.favoriteSelectAll");
	}
}
