package xmpp.client.service.chat.single;

import org.jivesoftware.smack.Chat;
import org.jivesoftware.smack.ChatManager;
import org.jivesoftware.smack.MessageListener;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smackx.ChatState;
import org.jivesoftware.smackx.ChatStateListener;

import xmpp.client.service.chat.InternalChatManager;
import xmpp.client.service.user.User;

public class SingleChat extends xmpp.client.service.chat.Chat implements
		MessageListener, ChatStateListener {
	@SuppressWarnings("unused")
	private static final String TAG = SingleChat.class.getName();

	Chat mChat;
	InternalChatManager mInternalManager;
	User mUser;

	public SingleChat(ChatManager chatManager, String jid,
			InternalChatManager internalManager, User user) {
		this(chatManager.createChat(jid, null), internalManager, user);
	}

	public SingleChat(org.jivesoftware.smack.Chat smackChat,
			InternalChatManager internalManager, User user) {
		mChat = smackChat;
		mInternalManager = internalManager;
		mUser = user;
		mChat.addMessageListener(this);
	}

	@Override
	public void close() {
		mChat.removeMessageListener(this);
	}

	public boolean contains(Chat chat) {
		if (mChat.equals(chat)) {
			return true;
		}
		return false;
	}

	public boolean equals(SingleChat o) {
		return o.contains(mChat);
	}

	@Override
	public int getChatType() {
		return CHAT_SINGLE;
	}

	@Override
	public String getIdentifier() {
		return mChat.getParticipant();
	}

	public Chat getInternalChat() {
		return mChat;
	}

	@Override
	public String getThreadID() {
		return mChat.getThreadID();
	}

	@Override
	public boolean isMe(String from) {
		if (!from.equalsIgnoreCase(getIdentifier())) {
			return true;
		}
		return false;
	}

	public boolean nearly(Chat chat) {
		if (chat.getParticipant().equalsIgnoreCase(mChat.getParticipant())) {
			return true;
		}
		return false;
	}

	public boolean nearly(SingleChat chat) {
		return chat.nearly(mChat);
	}

	@Override
	public void processMessage(org.jivesoftware.smack.Chat smackChat,
			Message smackMessage) {
		mInternalManager.processMessage(this, smackMessage);
	}

	@Override
	public void sendMessage(String participant, String text) {
		if (getIdentifier().equalsIgnoreCase(participant)) {
			try {
				mChat.sendMessage(text);
				final Message msg = new Message(participant);
				msg.setBody(text);
				msg.setFrom(mUser.getFullUserLogin());
				mInternalManager.processMessage(this, msg);
			} catch (final XMPPException e) {
				throw new RuntimeException(e);
			}
		}
	}

	@Override
	public void stateChanged(org.jivesoftware.smack.Chat smackChat,
			ChatState state) {
		int s = CHATSTATE_UNKNOWN;
		switch (state) {
		case active:
			s = CHATSTATE_ACTIVE;
			break;
		case composing:
			s = CHATSTATE_COMPOSING;
			break;
		case inactive:
			s = CHATSTATE_INACTIVE;
			break;
		case gone:
			s = CHATSTATE_GONE;
			break;
		case paused:
			s = CHATSTATE_PAUSED;
			break;
		}
		updateChatState(s);
		mInternalManager.chatStateChanged(this);
	}

}
