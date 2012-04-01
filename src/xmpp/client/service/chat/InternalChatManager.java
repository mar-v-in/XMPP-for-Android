package xmpp.client.service.chat;

import java.util.ArrayList;
import java.util.Date;

import org.jivesoftware.smack.ChatManager;
import org.jivesoftware.smack.ChatManagerListener;
import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Message.Type;

import xmpp.client.service.ConnectionProvider;
import xmpp.client.service.bookmark.BookmarkService;
import xmpp.client.service.bookmark.BookmarkServiceProvider;
import xmpp.client.service.chat.multi.MultiUserChat;
import xmpp.client.service.chat.single.SingleUserChat;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserService;
import xmpp.client.service.user.UserServiceProvider;
import android.util.Log;

public class InternalChatManager implements ChatManagerListener, ChatCodes,
		BookmarkServiceProvider, UserServiceProvider, ChatServiceProvider,
		ConnectionProvider {
	private static final String TAG = InternalChatManager.class.getName();

	private ChatManager mChatManager;
	private ArrayList<Chat> mChatList;
	private final UserServiceProvider mUserServiceProvider;
	private final ChatServiceProvider mChatServiceProvider;
	private final BookmarkServiceProvider mBookmarkServiceProvider;
	private final ConnectionProvider mConnectionProvider;

	public InternalChatManager(UserServiceProvider userServiceProvider,
			BookmarkServiceProvider bookmarkServiceProvider,
			ChatServiceProvider chatServiceProvider,
			ConnectionProvider connectionProvider) {
		mUserServiceProvider = userServiceProvider;
		mChatServiceProvider = chatServiceProvider;
		mBookmarkServiceProvider = bookmarkServiceProvider;
		mConnectionProvider = connectionProvider;
		mChatManager = getConnection().getChatManager();
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
		getChatService().chatCreated(chat, createdLocally);
	}

	public void chatStateChanged(Chat chat) {
		getChatService().chatStateChanged(chat);
	}

	public void chatUpdated(Chat chat) {
		getChatService().chatUpdated(chat);
	}

	public Chat createChat(String id, int chatType) {
		switch (chatType) {
		case CHAT_SINGLE:
			final SingleUserChat singleUserChat = new SingleUserChat(
					mChatManager, id, this, getUserService().getUserMe());
			insertEntry(singleUserChat);
			return singleUserChat;
		case CHAT_MULTI:
			final MultiUserChat multiUserChat = new MultiUserChat(this,
					getBookmarkService().getConferenceHandler()
							.getMultiUserChatInfo(id), this, this);
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
	}

	@Override
	public BookmarkService getBookmarkService() {
		return mBookmarkServiceProvider.getBookmarkService();
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

	@Override
	public ChatService getChatService() {
		return mChatServiceProvider.getChatService();
	}

	@Override
	public XMPPConnection getConnection() {
		return mConnectionProvider.getConnection();
	}

	@Override
	public UserService getUserService() {
		return mUserServiceProvider.getUserService();
	}

	public Chat insertEntry(Chat chat) {
		mChatList.add(chat);
		return chat;
	}

	public Chat insertEntry(org.jivesoftware.smack.Chat smackChat) {
		return insertEntry(new SingleUserChat(smackChat, this, getUserService()
				.getUserMe()));
	}

	public void processMessage(Chat chat, Message smackMessage) {
		try {
			if (smackMessage.getBody() != null) {
				User user = null;
				if (smackMessage.getType() == Type.groupchat
						&& chat.isMe(smackMessage.getFrom())) {
					user = getUserService().getUserMe();
				} else {
					user = getUserService().getUser(smackMessage.getFrom(),
							false);
				}
				final ChatMessage message = new ChatMessage(new Date(), user,
						smackMessage.getBody(),
						smackMessage.getType() == Type.groupchat);
				getChatService().processMessage(chat, message);
			}
		} catch (final Exception e) {
			Log.e(TAG, "processMessage", e);
		}

	}

}
