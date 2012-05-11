/*
 * History: Message subitem:
 * <x xmlns='jabber:x:delay' stamp='20120331T22:25:46' />
 */

package xmpp.client.service.chat.multi;

import java.util.ArrayList;
import java.util.Iterator;

import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.util.StringUtils;
import org.jivesoftware.smackx.muc.Occupant;
import org.jivesoftware.smackx.muc.SubjectUpdatedListener;

import xmpp.client.service.ConnectionProvider;
import xmpp.client.service.chat.Chat;
import xmpp.client.service.chat.InternalChatManager;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserService;
import xmpp.client.service.user.UserServiceProvider;
import android.util.Log;

public class MultiChat extends Chat implements SubjectUpdatedListener,
		UserServiceProvider, ConnectionProvider {
	private static final String TAG = MultiChat.class.getName();

	private org.jivesoftware.smackx.muc.MultiUserChat mMUC;
	private final MultiChatMessageListener mMessageListener;
	private final MultiChatParticipantListener mParticipantListener;
	private final InternalChatManager mInternalChatManager;
	private final MultiChatParticipantStatusListener mParticipantStatusListener;
	private final UserServiceProvider mUserServiceProvider;
	private final MultiChatInfo mMUCInfo;
	private final ConnectionProvider mConnectionProvider;
	private boolean mInitDone;

	public MultiChat(ConnectionProvider connectionProvider,
			MultiChatInfo mucinfo, InternalChatManager internalChatManager,
			UserServiceProvider userServiceProvider) {
		mConnectionProvider = connectionProvider;
		mMUCInfo = mucinfo;
		mUserServiceProvider = userServiceProvider;
		mInternalChatManager = internalChatManager;
		mMessageListener = new MultiChatMessageListener(this);
		mParticipantListener = new MultiChatParticipantListener(this);
		mParticipantStatusListener = new MultiChatParticipantStatusListener(
				this);
		mInitDone = false;
	}

	@Override
	public void close() {
		if (mMUC != null) {
			mMUC.leave();
			mMUC.removeMessageListener(mMessageListener);
			mMUC = null;
		}
	}

	@Override
	public int getChatType() {
		return CHAT_MULTI;
	}

	@Override
	public XMPPConnection getConnection() {
		return mConnectionProvider.getConnection();
	}

	@Override
	public String getIdentifier() {
		if (mMUC != null) {
			return mMUC.getRoom();
		} else {
			return mMUCInfo.getJid();
		}
	}

	@Override
	public String getSubject() {
		if (mMUC != null) {
			return mMUC.getSubject();
		} else {
			return null;
		}
	}

	@Override
	public String getThreadID() {
		return getIdentifier();
	}

	public ArrayList<String> getUsers() {
		final ArrayList<String> list = new ArrayList<String>();
		if (mMUC != null) {
			for (final Iterator<String> iterator = mMUC.getOccupants(); iterator
					.hasNext();) {
				list.add(iterator.next());
			}
		}
		return list;
	}

	@Override
	public UserService getUserService() {
		return mUserServiceProvider.getUserService();
	}

	@Override
	public boolean init() {
		if (mInitDone) {
			return true;
		}
		mMUC = new org.jivesoftware.smackx.muc.MultiUserChat(getConnection(),
				mMUCInfo.getJid());
		mMUC.addMessageListener(mMessageListener);
		mMUC.addParticipantListener(mParticipantListener);
		mMUC.addParticipantStatusListener(mParticipantStatusListener);
		mMUC.addSubjectUpdatedListener(this);
		try {
			if (mMUCInfo.getPassword() != null
					&& !mMUCInfo.getPassword().isEmpty()) {
				mMUC.join(mMUCInfo.getNickname(), mMUCInfo.getPassword());
			} else {
				mMUC.join(mMUCInfo.getNickname());
			}
			mInitDone = true;
			return true;
		} catch (final XMPPException e) {
			return false;
		}
	}

	@Override
	public boolean isMe(String from) {
		if (StringUtils.parseResource(from).equalsIgnoreCase(
				mMUCInfo.getNickname())) {
			return true;
		}
		return false;
	}

	public void processMessage(MultiChat mChat, Message msg) {
		try {
			setupUser(msg.getFrom(), null);
		} catch (final Exception e) {
			Log.d(TAG, "setupUser", e);
		}
		mInternalChatManager.processMessage(mChat, msg);
	}

	public void processParticipantAdminGranted(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " got Admin.");
	}

	public void processParticipantAdminRevoked(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " lost Admin.");
	}

	public void processParticipantBanned(String participant, String actor,
			String reason) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " banned "
				+ StringUtils.parseResource(participant)
				+ ((reason != null && !reason.isEmpty()) ? (" (Reason: "
						+ reason + ")") : "") + ".");
	}

	public void processParticipantJoined(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " joined.");
		final Presence presence = new Presence(Presence.Type.available, null,
				0, null);
		presence.setFrom(getIdentifier() + "/" + participant);
		processParticipantPresence(presence);
	}

	public void processParticipantKicked(String participant, String actor,
			String reason) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " kicked "
				+ StringUtils.parseResource(participant)
				+ ((reason != null && !reason.isEmpty()) ? (" (Reason: "
						+ reason + ")") : "") + ".");
	}

	public void processParticipantLeft(String participant) {
		processStatusMessage(StringUtils.parseResource(participant) + " left.");
		final Presence presence = new Presence(Presence.Type.unavailable, null,
				0, null);
		presence.setFrom(getIdentifier() + "/" + participant);
		processParticipantPresence(presence);
	}

	public void processParticipantMembershipGranted(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " got Membership.");
	}

	public void processParticipantMembershipRevoked(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " lost Membership.");
	}

	public void processParticipantModeratorGranted(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " got Moderator.");
	}

	public void processParticipantModeratorRevoked(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " lost Moderator.");
	}

	public void processParticipantNicknameChanged(String participant,
			String newNickname) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " changed Nickname to " + newNickname + ".");
	}

	public void processParticipantOwnershipGranted(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " got Ownership.");
	}

	public void processParticipantOwnershipRevoked(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " lost Ownership.");
	}

	public void processParticipantPresence(Presence presence) {
		if (getUserService().getUserByFullUserLogin(presence.getFrom()) == null) {
			setupUser(presence.getFrom(), presence);
		} else {
			getUserService().presenceChanged(presence);
		}
	}

	public void processParticipantVoiceGranted(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " got Voice.");
	}

	public void processParticipantVoiceRevoked(String participant) {
		processStatusMessage(StringUtils.parseResource(participant)
				+ " lost Voice.");
	}

	private void processStatusMessage(String msg) {
		final Message message = new Message();
		message.setFrom(getIdentifier());
		message.setBody(msg);
		processMessage(this, message);
	}

	@Override
	public void sendMessage(String participant, String text) {
		if (participant.equals(getIdentifier())) {
			try {
				mMUC.sendMessage(text);
			} catch (final XMPPException e) {
				throw new RuntimeException(e);
			}
		}
	}

	private User setupUser(String participant, Presence presence) {
		try {
			if (isMe(participant)) {
				return getUserService().getUserMe();
			}
			participant = StringUtils.parseResource(participant);
			if (presence == null) {
				presence = mMUC.getOccupantPresence(participant);
			}
			final Occupant occupant = mMUC.getOccupant(participant);
			final ArrayList<String> info = new ArrayList<String>();
			if (occupant != null) {
				info.add(0, occupant.getJid());
				info.add(1, occupant.getAffiliation());
				info.add(2, occupant.getRole());
			}
			if (presence != null) {
				return getUserService().setupUser(
						new User(getIdentifier(), participant, info, presence));
			} else {
				return getUserService().setupUser(
						new User(getIdentifier(), participant, info,
								new Presence(Presence.Type.unavailable)));
			}
		} catch (final Exception e) {
			Log.d(TAG, "setupUser", e);
		}
		return null;
	}

	@Override
	public void subjectUpdated(String subject, String from) {
		mInternalChatManager.chatUpdated(this);
	}

}
