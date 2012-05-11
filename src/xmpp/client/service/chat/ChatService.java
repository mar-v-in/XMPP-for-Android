package xmpp.client.service.chat;

import java.util.HashMap;

import org.jivesoftware.smack.util.StringUtils;

import xmpp.client.service.MainService;
import xmpp.client.service.chat.multi.MultiChat;
import xmpp.client.service.chat.multi.MultiChatSession;
import xmpp.client.service.chat.single.SingleChat;
import xmpp.client.service.chat.single.SingleChatSession;
import xmpp.client.service.user.User;
import android.util.Log;

public class ChatService implements ChatListener, ChatCodes,
		ChatServiceProvider {
	private static final String TAG = ChatService.class.getName();

	HashMap<Chat, ChatSession> mChats;
	InternalChatManager mInternalChatManager;
	MainService service;

	public ChatService(MainService service) {
		this.service = service;
		mInternalChatManager = new InternalChatManager(service, service, this,
				service);
		mChats = new HashMap<Chat, ChatSession>();
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
		if (chat instanceof MultiChat && session instanceof MultiChatSession) {
			((MultiChatSession) session).setSubject(chat.getSubject());
		}
		service.sendSessionUpdated(session);
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

	@Override
	public ChatService getChatService() {
		return this;
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
	public void processMessage(Chat chat, ChatMessage chatMessage) {
		final ChatSession session = mChats.get(chat);
		if (session != null) {
			session.addMessage(chatMessage);
			service.processMessage(session, chatMessage);
		}
	}

	private ChatSession putChatInMap(Chat chat) {
		if (chat instanceof SingleChat) {
			return putChatInMap((SingleChat) chat);
		} else if (chat instanceof MultiChat) {
			return putChatInMap((MultiChat) chat);
		}
		return null;
	}

	private ChatSession putChatInMap(MultiChat chat) {
		final ChatSession session = new MultiChatSession(chat.getIdentifier());
		mChats.put(chat, session);
		return session;
	}

	private ChatSession putChatInMap(SingleChat chat) {
		final ChatSession session = new SingleChatSession(service
				.getUserService().getUser(chat.getIdentifier(), true),
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
		if (session instanceof MultiChatSession) {
			((MultiChatSession) session).updateUser(user);
			final MultiChat chat = (MultiChat) getChatFromSession(session);
			for (final String u : chat.getUsers()) {
				((MultiChatSession) session).updateUser(service
						.getUserService().getUser(u, false));
			}
			service.sendSessionUpdated(session);
		}
	}

}
