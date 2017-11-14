package com.thebeauty.model.dao;

import java.util.List;

import com.thebeauty.model.domain.QuestionDTO;

public interface QuestionDAO{
	
	public abstract List<QuestionDTO> selectAll();
}
