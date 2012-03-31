package xmpp.client.service.chat.multi;

import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Packet;

public class MultiUserChatMessageListener implements PacketListener {

	MultiUserChat mChat;

	public MultiUserChatMessageListener(MultiUserChat multiUserChat) {
		mChat = multiUserChat;
	}

	@Override
	public void processPacket(Packet packet) {
		final Message msg = (Message) packet;
		mChat.processMessage(mChat, msg);
	}

}
