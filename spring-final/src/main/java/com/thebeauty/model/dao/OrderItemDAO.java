package com.thebeauty.model.dao;

import com.thebeauty.model.domain.OrderItemDTO;

public interface OrderItemDAO {

	/** 가장높은 Idx 가져오기 */
	public abstract int selectMaxIdx();

	/** 주문번호에 대한 상품 insert*/
	public abstract int insertOrderItem(OrderItemDTO orderItem);
}
