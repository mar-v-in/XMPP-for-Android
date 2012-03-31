package xmpp.client.service.chat.multi;

import org.jivesoftware.smackx.muc.ParticipantStatusListener;

public class MultiUserChatParticipantStatusListener implements
		ParticipantStatusListener {

	private final MultiUserChat mChat;

	public MultiUserChatParticipantStatusListener(MultiUserChat multiUserChat) {
		mChat = multiUserChat;
	}

	@Override
	public void adminGranted(String participant) {

	}

	@Override
	public void adminRevoked(String participant) {

	}

	@Override
	public void banned(String participant, String actor, String reason) {
	}

	@Override
	public void joined(String participant) {
		mChat.processParticipantJoined(participant);
	}

	@Override
	public void kicked(String participant, String actor, String reason) {

	}

	@Override
	public void left(String participant) {
		mChat.processParticipantLeft(participant);

	}

	@Override
	public void membershipGranted(String participant) {

	}

	@Override
	public void membershipRevoked(String participant) {

	}

	@Override
	public void moderatorGranted(String participant) {

	}

	@Override
	public void moderatorRevoked(String participant) {

	}

	@Override
	public void nicknameChanged(String participant, String newNickname) {

	}

	@Override
	public void ownershipGranted(String participant) {

	}

	@Override
	public void ownershipRevoked(String participant) {

	}

	@Override
	public void voiceGranted(String participant) {
	}

	@Override
	public void voiceRevoked(String participant) {

	}

}
