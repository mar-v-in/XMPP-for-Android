package xmpp.client.service.chat.multi;

import org.jivesoftware.smackx.muc.ParticipantStatusListener;

public class MultiChatParticipantStatusListener implements
		ParticipantStatusListener {

	private final MultiChat mChat;

	public MultiChatParticipantStatusListener(MultiChat multiChat) {
		mChat = multiChat;
	}

	@Override
	public void adminGranted(String participant) {
		mChat.processParticipantAdminGranted(participant);
	}

	@Override
	public void adminRevoked(String participant) {
		mChat.processParticipantAdminRevoked(participant);
	}

	@Override
	public void banned(String participant, String actor, String reason) {
		mChat.processParticipantBanned(participant, actor, reason);
	}

	@Override
	public void joined(String participant) {
		mChat.processParticipantJoined(participant);
	}

	@Override
	public void kicked(String participant, String actor, String reason) {
		mChat.processParticipantKicked(participant, actor, reason);
	}

	@Override
	public void left(String participant) {
		mChat.processParticipantLeft(participant);

	}

	@Override
	public void membershipGranted(String participant) {
		mChat.processParticipantMembershipGranted(participant);
	}

	@Override
	public void membershipRevoked(String participant) {
		mChat.processParticipantMembershipRevoked(participant);
	}

	@Override
	public void moderatorGranted(String participant) {
		mChat.processParticipantModeratorGranted(participant);
	}

	@Override
	public void moderatorRevoked(String participant) {
		mChat.processParticipantModeratorRevoked(participant);
	}

	@Override
	public void nicknameChanged(String participant, String newNickname) {
		mChat.processParticipantNicknameChanged(participant, newNickname);
	}

	@Override
	public void ownershipGranted(String participant) {
		mChat.processParticipantOwnershipGranted(participant);
	}

	@Override
	public void ownershipRevoked(String participant) {
		mChat.processParticipantOwnershipRevoked(participant);
	}

	@Override
	public void voiceGranted(String participant) {
		mChat.processParticipantVoiceGranted(participant);
	}

	@Override
	public void voiceRevoked(String participant) {
		mChat.processParticipantVoiceRevoked(participant);

	}

}
