package xmpp.client.service.chat;

public interface ChatListener {

	void chatCreated(Chat chat, boolean createdLocally);

	void chatStateChanged(Chat chat);

	void chatUpdated(Chat chat);

	void processMessage(Chat chat, ChatMessage chatMessage);

}
