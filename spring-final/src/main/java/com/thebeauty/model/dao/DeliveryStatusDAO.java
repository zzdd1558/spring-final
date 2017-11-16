package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.DeliveryStatusDTO;

public interface DeliveryStatusDAO {
	public List<DeliveryStatusDTO> deliveryStatusSelectAll();
	
	public int deliveryStatusInsert(DeliveryStatusDTO deliveryStatus);
	
	public int deliveryStautsMaxCode();
	
	public int deliveryStatusDelete(int code);
}
