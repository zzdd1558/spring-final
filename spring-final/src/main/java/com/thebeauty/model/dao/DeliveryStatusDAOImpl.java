package com.thebeauty.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.DeliveryStatusDTO;

@Repository
public class DeliveryStatusDAOImpl implements DeliveryStatusDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<DeliveryStatusDTO> deliveryStatusSelectAll() {
		return sqlsession.selectList("deliveryStatusMapper.deliveryStatusSelectAll");
	}
	
	public int deliveryStautsMaxCode() {
		return sqlsession.selectOne("deliveryStatusMapper.deliveryStatusMaxCode");
	}
	
	public int deliveryStatusInsert(DeliveryStatusDTO deliveryStatus) {
		return sqlsession.insert("deliveryStatusMapper.deliveryStatusInsert", deliveryStatus);
	}
	
	public int deliveryStatusDelete(int code) {
		return sqlsession.delete("deliveryStatusMapper.deliveryStatusDelete", code);
	}
}
