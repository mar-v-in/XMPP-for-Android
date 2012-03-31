package xmpp.client.service.chat.multi;

import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;

public class MultiUserChatParticipantListener implements PacketListener {

	MultiUserChat mChat;

	public MultiUserChatParticipantListener(MultiUserChat multiUserChat) {
		mChat = multiUserChat;
	}

	@Override
	public void processPacket(Packet packet) {
		final Presence presence = (Presence) packet;
		mChat.processParticipantPresence(presence);
	}

}
