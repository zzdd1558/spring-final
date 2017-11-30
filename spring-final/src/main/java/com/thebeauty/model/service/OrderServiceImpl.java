package com.thebeauty.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thebeauty.model.dao.OrderDAO;
import com.thebeauty.model.dao.OrderItemDAO;
import com.thebeauty.model.domain.OrderDTO;
import com.thebeauty.model.domain.OrderItemDTO;

@Service
public class OrderServiceImpl implements OrderService{

	
	@Autowired
	private OrderDAO orderDao;
	
	@Autowired
	private OrderItemDAO  orderItemDao;
	
	
	
	@Override
	public int orderService(OrderDTO order , String[] subKey , String[] quantity) {
		int result = 0;
		int orderIdx = orderDao.selectMaxIdx()+1;
		order.setOrderNumber(orderIdx);
		
		int cnt = orderDao.insertOrder(order);                                                                                                                                                       
		System.out.println(order);
		
		OrderItemDTO orderItem = new OrderItemDTO();
		orderItem.setOrderNum(orderIdx);
		for (int i = 0; i < subKey.length; i++) {
			orderItem.setOrderItemNum(orderItemDao.selectMaxIdx() +1);
			orderItem.setCodeOfProd(Integer.parseInt(subKey[i].split("_")[1]));
			orderItem.setOrderItemCount(Integer.parseInt(quantity[i]));
			result += orderItemDao.insertOrderItem(orderItem);
			
		}
		
		
		return result;
	}

}
