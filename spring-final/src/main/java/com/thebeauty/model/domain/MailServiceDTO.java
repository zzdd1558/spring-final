package com.thebeauty.model.domain;

public class MailServiceDTO {
	/** 메일의 제목 */
	private String subject;
	private String text;
	private String from;
	private String to;
		
	/** 생성자 */
	public MailServiceDTO() {}
	public MailServiceDTO(String subject, String text, String from, String to) {
		super();
		this.subject = subject;
		this.text = text;
		this.from = from;
		this.to = to;
	}

	/** getter / setter */
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MailServiceDTO [subject=");
		builder.append(subject);
		builder.append(", text=");
		builder.append(text);
		builder.append(", from=");
		builder.append(from);
		builder.append(", to=");
		builder.append(to);
		builder.append("]");
		return builder.toString();
	}
}
