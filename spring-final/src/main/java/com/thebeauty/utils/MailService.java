package com.thebeauty.utils;

import com.thebeauty.model.domain.MailServiceDTO;

public interface MailService {
	public abstract boolean send(MailServiceDTO mailService);
}
