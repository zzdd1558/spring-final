package com.thebeauty.model.service;

import java.util.List;

import com.thebeauty.model.domain.OrderDTO;

public interface OrderService {

	/** 주문 등록*/
	public abstract int orderService(OrderDTO order  , String[] subKey , String[] quantity);

	/** 배송정보 조회 */
	public abstract List<OrderDTO> orderList(int idx);

}
