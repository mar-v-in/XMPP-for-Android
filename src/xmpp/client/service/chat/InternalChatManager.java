package xmpp.client.service.chat;

import java.util.ArrayList;
import java.util.Date;

import org.jivesoftware.smack.ChatManager;
import org.jivesoftware.smack.ChatManagerListener;
import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Message.Type;
import org.jivesoftware.smack.util.StringUtils;

import xmpp.client.service.chat.multi.MultiUserChat;
import xmpp.client.service.chat.single.SingleUserChat;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserService;
import xmpp.client.service.user.UserState;
import android.util.Log;

public class InternalChatManager implements ChatManagerListener, ChatCodes {
	private static final String TAG = InternalChatManager.class.getName();

	private final ChatListener mChatListener;
	private UserService mUserService;
	private ChatManager mChatManager;
	private final Connection mConnection;
	private ArrayList<Chat> mChatList;

	public InternalChatManager(Connection connection, UserService userService,
			ChatListener listener) {
		mChatListener = listener;
		mUserService = userService;
		mConnection = connection;
		mChatManager = connection.getChatManager();
		mChatManager.addChatListener(this);
		mChatList = new ArrayList<Chat>();
	}

	@Override
	public void chatCreated(org.jivesoftware.smack.Chat smackChat,
			boolean createdLocally) {

		if (createdLocally) {
			return;
		}
		final Chat chat = getChat(smackChat);
		mChatListener.chatCreated(chat, createdLocally);
	}

	public void chatStateChanged(Chat chat) {
		mChatListener.chatStateChanged(chat);
	}

	public void chatUpdated(Chat chat) {
		mChatListener.chatUpdated(chat);
	}

	public Chat createChat(String id, int chatType) {
		switch (chatType) {
		case CHAT_SINGLE:
			final SingleUserChat singleUserChat = new SingleUserChat(
					mChatManager, id, this, mUserService.getUserMe());
			insertEntry(singleUserChat);
			return singleUserChat;
		case CHAT_MULTI:
			final MultiUserChat multiUserChat = new MultiUserChat(mConnection,
					id, this, mUserService);
			insertEntry(multiUserChat);
			return multiUserChat;
		}
		return null;
	}

	public void destroy() {
		mChatManager.removeChatListener(this);
		mChatManager = null;
		for (final Chat chat : mChatList) {
			chat.close();
		}
		mChatList.clear();
		mChatList = null;
		mUserService = null;
	}

	public Chat getChat(org.jivesoftware.smack.Chat smackChat) {
		Chat c = null;
		final ArrayList<Chat> chats = new ArrayList<Chat>();
		for (final Chat chat : mChatList) {
			if (chat instanceof SingleUserChat) {
				if (((SingleUserChat) chat).contains(smackChat)) {
					c = chat;
				} else if (((SingleUserChat) chat).nearly(smackChat)) {
					chats.add(chat);
				}
			}
		}
		for (final Chat chat : chats) {
			mChatList.remove(chat);
		}
		if (c != null) {
			return c;
		}
		return insertEntry(smackChat);
	}

	public Chat insertEntry(Chat chat) {
		mChatList.add(chat);
		return chat;
	}

	public Chat insertEntry(org.jivesoftware.smack.Chat smackChat) {
		return insertEntry(new SingleUserChat(smackChat, this,
				mUserService.getUserMe()));
	}

	public void processMessage(Chat chat, Message smackMessage) {
		try {
			if (smackMessage.getBody() != null) {
				User user = null;
				if (smackMessage.getType() == Type.groupchat) {
					if (StringUtils.parseResource(smackMessage.getFrom())
							.equalsIgnoreCase(
									mUserService.getUserMe().getUserName())) {
						user = mUserService.getUserMe();
					} else {
						user = new User();
						user.setUserName(StringUtils.parseResource(smackMessage
								.getFrom()));
						user.setUserLogin(StringUtils
								.parseBareAddress(smackMessage.getFrom()));
						user.setRessource(StringUtils
								.parseResource(smackMessage.getFrom()));
						user.setUserState(new UserState(
								UserState.STATUS_AVAILABLE, null));
					}
				} else {
					user = mUserService.getUser(smackMessage.getFrom(), false);
				}
				final ChatMessage message = new ChatMessage(new Date(), user,
						smackMessage.getBody(),
						smackMessage.getType() == Type.groupchat);
				mChatListener.processMessage(chat, message);
			}
		} catch (final Exception e) {
			Log.e(TAG, "processMessage", e);
		}

	}

}
