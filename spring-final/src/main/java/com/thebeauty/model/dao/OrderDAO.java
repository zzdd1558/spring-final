package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.OrderDTO;

public interface OrderDAO {


	/** 가장높은 Idx 가져오기 */
	public abstract int selectMaxIdx();
	
	
	/** 주문번호 생성 */
	public abstract int insertOrder(OrderDTO order);
	
	/** 배송정보 가져오기 */
	public List<OrderDTO> selectOrderListById(int idx);
}
