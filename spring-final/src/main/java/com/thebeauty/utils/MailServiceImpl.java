package com.thebeauty.utils;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.thebeauty.model.domain.MailServiceDTO;

@Service
public class MailServiceImpl implements MailService {
	
	private final JavaMailSender javaMailSender;

	@Autowired
	public MailServiceImpl(JavaMailSender javaMailSender) {
		// TODO Auto-generated constructor stub
		this.javaMailSender = javaMailSender;
	}

	@Override
	public boolean send(MailServiceDTO mailService) {
		/** 메일서비스를 이용하기 위한 인터페이스 */
		MimeMessage message = null;
		MimeMessageHelper helper = null;
		boolean check = false;
		
		try {
			message = javaMailSender.createMimeMessage();
			helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setSubject(mailService.getSubject());
			helper.setText(mailService.getText(), true);
			helper.setFrom(mailService.getFrom());
			helper.setTo(mailService.getTo());

			javaMailSender.send(message);
			check = true;
		} catch (MessagingException e) {

		}finally {
			if(helper != null) { 
				helper = null;
			}
			if(message != null) {
				message = null;
			}
		}
		return check;
	}
}
