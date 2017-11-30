package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.OrderDTO;

@Repository
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	/* 가장높은 Idx 가져오기 */
	public int selectMaxIdx() {
		String value = sqlSession.selectOne("orderMapper.orderMaxIdx") ;
		return value == null ? 0 : Integer.parseInt(value) ;
	}


	@Override
	public int insertOrder(OrderDTO order) {
				
		return sqlSession.insert("orderMapper.insertOrder" , order);
	}
	
	@Override
	public List<OrderDTO> selectOrderListById(int idx){
		return sqlSession.selectList("orderMapper.selectByUserIdx" , idx);
	}
}
