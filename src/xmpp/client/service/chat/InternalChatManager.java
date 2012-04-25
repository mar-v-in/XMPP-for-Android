package xmpp.client.service.chat;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;

import org.jivesoftware.smack.ChatManager;
import org.jivesoftware.smack.ChatManagerListener;
import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.packet.Message.Type;
import org.jivesoftware.smack.packet.PacketExtension;
import org.jivesoftware.smack.util.StringUtils;

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

	private static Date parseDateString(String datestring) {
		if (datestring != null && !datestring.isEmpty()) {
			for (final String dateStringVariant : dateStringVariants) {
				final SimpleDateFormat sdf = new SimpleDateFormat(
						dateStringVariant);
				sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
				try {
					return sdf.parse(datestring);
				} catch (final ParseException e) {

				}
			}
		}
		return new Date();
	}

	private ChatManager mChatManager;
	private ArrayList<Chat> mChatList;
	private final UserServiceProvider mUserServiceProvider;
	private final ChatServiceProvider mChatServiceProvider;
	private final BookmarkServiceProvider mBookmarkServiceProvider;

	private final ConnectionProvider mConnectionProvider;

	private static String[] dateStringVariants = new String[] {
			"yyyy-MM-dd'T'HH:mm:ssZ", "yyyy-MM-dd'T'HH:mm:ss.SZ",
			"yyyy-MM-dd'T'HH:mm:ss.S'Z'", "yyyy-MM-dd'T'HH:mm:ss'Z'",
			"yyyyMMdd'T'HH:mm:ss" };

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
				} else if (smackMessage.getType() == Type.groupchat) {
					Log.d(TAG, smackMessage.getFrom());
					user = getUserService().getUserByFullUserLogin(
							smackMessage.getFrom());
					if (user == null) {
						user = getUserService().setupUser(
								new User(chat.getIdentifier(), StringUtils
										.parseResource(smackMessage.getFrom()),
										new ArrayList<String>(), new Presence(
												Presence.Type.unavailable)));
					}
				} else {
					user = getUserService().getUser(smackMessage.getFrom(),
							false);
				}
				String datestring = null;
				PacketExtension pe = smackMessage
						.getExtension("jabber:x:delay");// XEP-0091
				if (pe == null) {
					pe = smackMessage.getExtension("urn:xmpp:delay");// XEP-0203
				}
				if (pe != null && pe.toXML() != null) {
					final String xml = pe.toXML();
					String[] arr = xml.split("stamp='");
					if (arr.length > 1) {
						arr = arr[1].split("'");
						if (arr.length > 1) {
							datestring = arr[0];
						}
					} else {
						arr = xml.split("stamp=\"");
						if (arr.length > 1) {
							arr = arr[1].split("\"");
							if (arr.length > 1) {
								datestring = arr[0];
							}
						}
					}
				}
				final Date d = parseDateString(datestring);

				final ChatMessage message = new ChatMessage(d, user,
						smackMessage.getBody(),
						smackMessage.getType() == Type.groupchat);
				getChatService().processMessage(chat, message);
			}
		} catch (final Exception e) {
			Log.e(TAG, "processMessage", e);
		}

	}

}
