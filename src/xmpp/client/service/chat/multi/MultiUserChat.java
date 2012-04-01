/*
 * History: Message subitem:
 * <x xmlns='jabber:x:delay' stamp='20120331T22:25:46' />
 */

package xmpp.client.service.chat.multi;

import java.util.ArrayList;
import java.util.Iterator;

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

public class MultiUserChat extends Chat implements SubjectUpdatedListener,
		UserServiceProvider {
	@SuppressWarnings("unused")
	private static final String TAG = MultiUserChat.class.getName();

	private org.jivesoftware.smackx.muc.MultiUserChat mMUC;
	private final MultiUserChatMessageListener mMessageListener;
	private final MultiUserChatParticipantListener mParticipantListener;
	private final InternalChatManager mInternalChatManager;
	private final MultiUserChatParticipantStatusListener mParticipantStatusListener;
	private final UserServiceProvider mUserServiceProvider;
	private final MultiUserChatInfo mMUCInfo;

	public MultiUserChat(ConnectionProvider connectionProvider,
			MultiUserChatInfo mucinfo, InternalChatManager internalChatManager,
			UserServiceProvider userServiceProvider) {
		mMUCInfo = mucinfo;
		mUserServiceProvider = userServiceProvider;
		mMUC = new org.jivesoftware.smackx.muc.MultiUserChat(
				connectionProvider.getConnection(), mucinfo.getJid());
		mInternalChatManager = internalChatManager;
		mMessageListener = new MultiUserChatMessageListener(this);
		mMUC.addMessageListener(mMessageListener);
		mParticipantListener = new MultiUserChatParticipantListener(this);
		mMUC.addParticipantListener(mParticipantListener);
		mParticipantStatusListener = new MultiUserChatParticipantStatusListener(
				this);
		mMUC.addParticipantStatusListener(mParticipantStatusListener);
		mMUC.addSubjectUpdatedListener(this);
		try {
			if (mucinfo.getPassword() != null
					&& !mucinfo.getPassword().isEmpty()) {
				mMUC.join(mucinfo.getNickname(), mucinfo.getPassword());
			} else {
				mMUC.join(mucinfo.getNickname());
			}
		} catch (final XMPPException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void close() {
		mMUC.leave();
		mMUC.removeMessageListener(mMessageListener);
		mMUC = null;
	}

	@Override
	public int getChatType() {
		return CHAT_MULTI;
	}

	@Override
	public String getIdentifier() {
		return mMUC.getRoom();
	}

	@Override
	public String getSubject() {
		return mMUC.getSubject();
	}

	@Override
	public String getThreadID() {
		return getIdentifier();
	}

	public ArrayList<String> getUsers() {
		final ArrayList<String> list = new ArrayList<String>();
		for (final Iterator<String> iterator = mMUC.getOccupants(); iterator
				.hasNext();) {
			list.add(iterator.next());
		}
		return list;
	}

	@Override
	public UserService getUserService() {
		return mUserServiceProvider.getUserService();
	}

	@Override
	public boolean isMe(String from) {
		if (StringUtils.parseResource(from).equalsIgnoreCase(
				mMUCInfo.getNickname())) {
			return true;
		}
		return false;
	}

	public void processMessage(MultiUserChat mChat, Message msg) {
		try {
			setupUser(StringUtils.parseResource(msg.getFrom()));
		} catch (final Exception e) {
			Log.d(TAG, "setupUser", e);
		}
		mInternalChatManager.processMessage(mChat, msg);
	}

	public void processParticipantJoined(String participant) {
		setupUser(participant);
		final Presence presence = mMUC.getOccupantPresence(participant);
		getUserService().presenceChanged(presence);
	}

	public void processParticipantLeft(String participant) {
		final Presence presence = new Presence(Presence.Type.unavailable, null,
				0, null);
		presence.setFrom(participant);
		getUserService().presenceChanged(presence);
	}

	public void processParticipantPresence(Presence presence) {
		getUserService().presenceChanged(presence);
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

	private User setupUser(String participant) {
		Log.d(TAG, participant);
		final Presence presence = mMUC.getOccupantPresence(participant);
		final Occupant occupant = mMUC.getOccupant(participant);
		final ArrayList<String> info = new ArrayList<String>();
		if (occupant != null) {
			info.add(0, occupant.getJid());
			info.add(1, occupant.getAffiliation());
			info.add(2, occupant.getRole());
			return getUserService().setupUser(
					new User(getIdentifier(), occupant.getNick(), info,
							presence));
		} else {
			return getUserService().setupUser(
					new User(getIdentifier(), participant, info, new Presence(
							Presence.Type.unavailable)));
		}
	}

	@Override
	public void subjectUpdated(String subject, String from) {
		mInternalChatManager.chatUpdated(this);
	}

}
