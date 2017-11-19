package com.thebeauty.model.service;

import com.thebeauty.model.domain.MailServiceDTO;

public interface MailService {
	public abstract boolean send(MailServiceDTO mailService);
}
