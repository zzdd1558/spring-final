package com.thebeauty.model.service;

import com.thebeauty.model.domain.OrderDTO;

public interface OrderService {

	/** 주문 등록*/
	public abstract int orderService(OrderDTO order  , String[] subKey , String[] quantity);
}
