package xmpp.client.service.chat;

import java.util.HashMap;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.util.StringUtils;

import xmpp.client.service.Service;
import xmpp.client.service.chat.multi.MultiUserChat;
import xmpp.client.service.chat.multi.MultiUserChatSession;
import xmpp.client.service.chat.single.SingleUserChat;
import xmpp.client.service.chat.single.SingleUserChatSession;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserService;
import android.util.Log;

public class ChatService implements ChatListener, ChatCodes {
	private static final String TAG = ChatService.class.getName();

	UserService mUserService;
	HashMap<Chat, ChatSession> mChats;
	InternalChatManager mInternalChatManager;
	Service mService;

	public ChatService(Connection connection, Service service,
			UserService userService) {
		mService = service;
		mInternalChatManager = new InternalChatManager(connection, userService,
				this);
		mChats = new HashMap<Chat, ChatSession>();
		mUserService = userService;
	}

	@Override
	public void chatCreated(Chat chat, boolean createdLocally) {
		if (!createdLocally) {
			putChatInMap(chat);
		}
	}

	@Override
	public void chatStateChanged(Chat chat) {
		// TODO Auto-generated method stub

	}

	@Override
	public void chatUpdated(Chat chat) {
		final ChatSession session = getChatSessionFromIdentifier(chat
				.getIdentifier());
		if (chat instanceof MultiUserChat
				&& session instanceof MultiUserChatSession) {
			((MultiUserChatSession) session).setSubject(chat.getSubject());
		}
		mService.sendSessionUpdated(session);
	}

	public void closeChat(ChatSession session) {
		final Chat chat = getChatFromSession(session);
		chat.close();
		mChats.remove(chat);
		if (!session.isClosed()) {
			session.close();
		}
	}

	public void destroy() {
		mChats.clear();
		mChats = null;
		mInternalChatManager.destroy();
		mUserService = null;
	}

	public Chat getChatFromSession(ChatSession session) {
		if (session == null) {
			Log.w(TAG, "getChatFromSession(null) returns null!");
			return null;
		}
		for (final Chat chat : mChats.keySet()) {
			if (mChats.get(chat).equals(session)) {
				return chat;
			}
		}
		if (!session.isClosed()) {
			Log.w(TAG, "Chat not found: " + session.getSessionID());
		} else {
			Log.w(TAG, "Could not found closed session!");
		}
		return null;
	}

	public ChatSession getChatSessionFromIdentifier(String jid) {
		jid = StringUtils.parseBareAddress(jid);
		for (final ChatSession session : mChats.values()) {
			if (session.getIdentifier().equals(jid)) {
				return session;
			}
		}
		Log.w(TAG, "ChatSession not found: " + jid);
		return null;
	}

	public ChatSession getRealChatSession(ChatSession session) {
		for (final ChatSession session2 : mChats.values()) {
			if (session2.equals(session)) {
				return session2;
			}
		}
		Log.w(TAG, "ChatSession not found: " + session.getSessionID());
		return null;
	}

	@Override
	public void processMessage(Chat chat, ChatMessage message) {
		final ChatSession session = mChats.get(chat);
		if (session != null) {
			session.addMessage(message);
			mService.processMessage(session, message);
		}
	}

	private ChatSession putChatInMap(Chat chat) {
		if (chat instanceof SingleUserChat) {
			return putChatInMap((SingleUserChat) chat);
		} else if (chat instanceof MultiUserChat) {
			return putChatInMap((MultiUserChat) chat);
		}
		return null;
	}

	private ChatSession putChatInMap(MultiUserChat chat) {
		final ChatSession session = new MultiUserChatSession(
				chat.getIdentifier());
		mChats.put(chat, session);
		return session;
	}

	private ChatSession putChatInMap(SingleUserChat chat) {
		final ChatSession session = new SingleUserChatSession(
				mUserService.getUser(chat.getIdentifier(), true),
				chat.getThreadID());
		mChats.put(chat, session);
		return session;
	}

	public void sendMessage(ChatSession aSession, String text) {
		final ChatSession session = getRealChatSession(aSession);
		final Chat chat = getChatFromSession(session);
		try {
			chat.sendMessage(text);
		} catch (final Exception e) {
			Log.e(TAG, "sendMessage", e);
		}

	}

	public ChatSession startSession(String muc) {
		return putChatInMap(mInternalChatManager.createChat(muc, CHAT_MULTI));
	}

	public ChatSession startSession(User user) {
		return putChatInMap(mInternalChatManager.createChat(user.getUserLogin()
				+ "/" + user.getRessource(), CHAT_SINGLE));
	}

	public void updateMUCUser(User user) {
		final ChatSession session = getChatSessionFromIdentifier(user
				.getUserLogin());
		if (session instanceof MultiUserChatSession) {
			((MultiUserChatSession) session).updateUser(user);
			final MultiUserChat chat = (MultiUserChat) getChatFromSession(session);
			for (final String u : chat.getUsers()) {
				((MultiUserChatSession) session).updateUser(mUserService
						.getUser(u, false));
			}
			mService.sendSessionUpdated(session);
		}
	}

}
