package com.thebeauty.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.OrderItemDTO;

@Repository
public class OrderItemDAOImpl implements OrderItemDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	/* 가장높은 Idx 가져오기 */
	public int selectMaxIdx() {
		String value = sqlSession.selectOne("orderItemMapper.orderItemMaxIdx") ;
		return value == null ? 0 : Integer.parseInt(value) ;
	}

	@Override
	public int insertOrderItem(OrderItemDTO orderItem) {
		return sqlSession.insert("orderItemMapper.insertOrderItem", orderItem);
	}

	
	

}
