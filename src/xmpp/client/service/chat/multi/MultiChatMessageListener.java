package xmpp.client.service.chat.multi;

import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Packet;

public class MultiChatMessageListener implements PacketListener {

	MultiChat mChat;

	public MultiChatMessageListener(MultiChat multiChat) {
		mChat = multiChat;
	}

	@Override
	public void processPacket(Packet packet) {
		final Message msg = (Message) packet;
		mChat.processMessage(mChat, msg);
	}

}
