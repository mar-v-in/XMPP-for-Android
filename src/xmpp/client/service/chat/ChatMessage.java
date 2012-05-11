package xmpp.client.service.chat;

import java.util.Date;

public interface ChatMessage {

	public Date getDate();

	public String getFrom();

	public String getText();

	public MessageType getType();

}