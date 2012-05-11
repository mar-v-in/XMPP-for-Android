package xmpp.client.service.chat;

import java.util.Date;

public abstract class BasicMessage implements ChatMessage {

	protected Date date;
	protected String text;
	protected String from;

	public BasicMessage(Date date, String text, String from) {
		this.date = date;
		this.text = text;
		this.from = from;
	}

	@Override
	public Date getDate() {
		return date;
	}

	@Override
	public String getFrom() {
		return from;
	}

	@Override
	public String getText() {
		return text;
	}

}
