package xmpp.client.service.chat.multi;

import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;

public class MultiChatParticipantListener implements PacketListener {

	MultiChat mChat;

	public MultiChatParticipantListener(MultiChat multiChat) {
		mChat = multiChat;
	}

	@Override
	public void processPacket(Packet packet) {
		final Presence presence = (Presence) packet;
		mChat.processParticipantPresence(presence);
	}

}
