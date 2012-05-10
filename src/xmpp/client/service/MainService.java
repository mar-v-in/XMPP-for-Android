package xmpp.client.service;

import java.security.Security;
import java.util.Date;

import org.apache.qpid.management.common.sasl.SaslProvider;
import org.jivesoftware.smack.ConnectionConfiguration;
import org.jivesoftware.smack.ConnectionListener;
import org.jivesoftware.smack.SmackConfiguration;
import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.ConnectionConfiguration.SecurityMode;
import org.jivesoftware.smack.packet.Presence;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.text.format.DateFormat;
import android.util.Log;

import xmpp.client.Constants;
import xmpp.client.R;
import xmpp.client.account.AccountInfo;
import xmpp.client.service.bookmark.BookmarkService;
import xmpp.client.service.bookmark.BookmarkServiceProvider;
import xmpp.client.service.chat.Chat;
import xmpp.client.service.chat.ChatMessage;
import xmpp.client.service.chat.ChatService;
import xmpp.client.service.chat.ChatServiceProvider;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.chat.ParcelableMessage;
import xmpp.client.service.chat.multi.MultiChatMessage;
import xmpp.client.service.chat.single.SingleChatMessage;
import xmpp.client.service.jingle.JingleService;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserService;
import xmpp.client.service.user.UserServiceProvider;
import xmpp.client.service.user.UserState;
import xmpp.client.service.user.avatar.AvatarService;
import xmpp.client.service.user.avatar.AvatarServiceProvider;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.service.user.contact.ContactList;
import xmpp.client.ui.activities.AppActivity;

public class MainService implements Constants, ConnectionProvider,
		UserServiceProvider, ChatServiceProvider, BookmarkServiceProvider,
		AvatarServiceProvider, ContextProvider {

	private static final String TAG = MainService.class.getName();
	private ContextProvider contextProvider;
	private NotificationManager notificationManager;

	public MainService(MainServiceListener listener,
			ContextProvider contextProvider, AccountInfo accountInfo) {
		this.listener = listener;
		this.accountInfo = accountInfo;
		this.contextProvider = contextProvider;
		this.notificationManager = (NotificationManager) getContext()
				.getSystemService(Context.NOTIFICATION_SERVICE);
		showAccountNotification();
	}

	private void showAccountNotification() {
		showNotification(
				null,
				accountInfo.getFullUsername(),
				getUserService() != null ? (String) getUserService()
						.getUserMe().getUserState().getStatusText(getContext())
						: (String) getContext().getText(
								R.string.process_initializing), null, true,
				false, 0, R.drawable.stat_base_xmpp, 0, null, new Intent(
						getContext(), AppActivity.class), R.string.app_name
						+ accountInfo.hashCode());
	}

	private AccountInfo accountInfo;
	private BookmarkService bookmarkService;
	private AvatarService avatarService;
	private JingleService jingleService;
	private ChatService chatService;
	private UserService userService;
	private XMPPConnection connection;
	private MainServiceListener listener;

	public boolean initXMPP() {
		if (connection != null) {
			connection.disconnect();
		}
		if (accountInfo == null) {
			return false;
		}
		ConnectionConfiguration config;
		if (accountInfo.getPort() == -1) {
			config = new ConnectionConfiguration(accountInfo.getHostname());
		} else {
			config = new ConnectionConfiguration(accountInfo.getHostname(),
					accountInfo.getPort());
		}
		if (accountInfo.getSecurity() == AccountInfo.ACCOUNT_SECURITY_DISABLED) {
			config.setSecurityMode(SecurityMode.disabled);
		} else if (accountInfo.getSecurity() == AccountInfo.ACCOUNT_SECURITY_ENABLED) {
			config.setSecurityMode(SecurityMode.enabled);
		} else if (accountInfo.getSecurity() == AccountInfo.ACCOUNT_SECURITY_REQUIRED) {
			config.setSecurityMode(SecurityMode.required);
		}
		config.setReconnectionAllowed(true);
		config.setCompressionEnabled(true);
		config.setSelfSignedCertificateEnabled(true);
		config.setTruststoreType("BKS");
		config.setRosterLoadedAtLogin(false);
		config.setSendPresence(true);
		SmackConfiguration.setKeepAliveInterval(60000);
		SmackConfiguration.setPacketReplyTimeout(30000);
		connection = new XMPPConnection(config);
		return true;
	}

	public boolean isOnline() {
		if (getConnection() != null) {
			if (getConnection().isConnected()) {
				if (getConnection().isAuthenticated()) {
					return true;
				}
			}
		}
		return false;
	}

	public Bundle openChatSession(String uid) {
		final Contact contact = getUserService().getContact(uid, false);
		final User user = getUserService().getUser(uid, false);
		contact.clearUnreadMessages();
		ChatSession session = getChatService()
				.getChatSessionFromIdentifier(uid);
		if (session == null) {
			session = getChatService().startSession(user);
		}
		Bundle b = new Bundle();
		b.putParcelable(FIELD_CHAT_SESSION, session);
		b.putParcelable(FIELD_USER, user);
		b.putParcelable(FIELD_CONTACT, contact);
		return b;
	}

	public void closeChatSession(ChatSession session) {
		chatService.closeChat(session);
	}

	public ContactList getContactList() {
		return getUserService().getContactList();
	}

	public boolean connectXMPP() {
		if (connection != null) {
			if (connection.isConnected()) {
				return true;
			}
			try {
				connection.connect();
				connection.addConnectionListener(connectionListener);

				return true;
			} catch (final XMPPException e) {
				Log.i(TAG, "connectedXMPP", e);
				return false;
			}
		}
		return false;
	}

	ConnectionListener connectionListener = new ConnectionListener() {

		@Override
		public void connectionClosed() {
			Log.i(TAG, "connectionClosed");
		}

		@Override
		public void connectionClosedOnError(Exception e) {
			Log.i(TAG, "connectionClosedOnError", e);
		}

		@Override
		public void reconnectingIn(int t) {
			Log.i(TAG, "reconnectingIn: " + t);
		}

		@Override
		public void reconnectionFailed(Exception e) {
			Log.i(TAG, "reconnectionFailed", e);
		}

		@Override
		public void reconnectionSuccessful() {
			Log.i(TAG, "reconnectionSuccessful");
		}
	};

	@Override
	public AvatarService getAvatarService() {
		return avatarService;
	}

	@Override
	public BookmarkService getBookmarkService() {
		return bookmarkService;
	}

	@Override
	public ChatService getChatService() {
		return chatService;
	}

	@Override
	public XMPPConnection getConnection() {
		return connection;
	}

	@Override
	public UserService getUserService() {
		return userService;
	}

	private User createMeUser() {
		final User user = new User();
		user.setUserLogin(connection.getUser());
		user.setRessource(XMPP_RESSOURCE);
		user.setUserState(new UserState(UserState.STATUS_AVAILABLE, null));
		user.setAvatar(null);
		return user;
	}

	public void showNotification(String tickerText, String title, String text,
			String info, boolean ongoing, boolean autoCancel, int number,
			int icon, int notifyDefaults, Bitmap bitmap, Intent intent, int id) {
		Notification.Builder builder = new Notification.Builder(getContext());
		builder.setTicker(tickerText);
		builder.setSmallIcon(icon);
		builder.setLargeIcon(bitmap);
		builder.setDefaults(notifyDefaults);
		builder.setAutoCancel(autoCancel);
		builder.setNumber(number);
		builder.setContentIntent(PendingIntent.getActivity(getContext(), 0,
				intent, 0));
		builder.setContentTitle(title);
		builder.setContentText(text);
		builder.setContentInfo(info);
		notificationManager.notify(id, builder.getNotification());
	}

	private void showChatNotification(String username, String text,
			Bitmap bitmap, int unread, Date date, Intent i) {
		showNotification(username + ": " + shortenCharSequence(text, 250),
				username, text,
				DateFormat.getTimeFormat(getContext()).format(date), false,
				false, unread, R.drawable.stat_notify_xmpp,
				Notification.DEFAULT_ALL, bitmap, i, R.string.app_name
						+ username.hashCode());
	}

	private void showSingleChatNotification(String username, String login,
			String text, Bitmap bitmap, int unread, Date date) {
		final Intent i = new Intent(getContext(), AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_IMTO + URI_SCHEME_HOST_DIVIDER
				+ URI_HOST_JABBER + URI_PATH_DIVIDER + Uri.encode(login)));
		showChatNotification(username, text, bitmap, unread, date, i);
	}

	private CharSequence shortenCharSequence(CharSequence cs, int chars) {
		if (cs.length() > chars) {
			return cs.subSequence(0, chars - 1) + "…";
		} else {
			return cs;
		}
	}

	private void showSingleChatNotification(
			xmpp.client.service.chat.single.SingleChatMessage message) {

		User u = getUserService().getUser(message.getFrom(), false);
		Contact c = getUserService().getContact(u, true);
		showSingleChatNotification(u.getDisplayName(), u.getUserLogin(),
				message.getText(), u.getBitmap(getContext(), false),
				c.getUnreadMessages(), message.getDate());
	}

	public boolean loginXMPP() {
		if (connection != null) {
			if (connection.isAuthenticated()) {
				return true;
			}
			try {
				Security.addProvider(new SaslProvider());
				connection.login(accountInfo.getUsername(),
						accountInfo.getPassword(), XMPP_RESSOURCE);
				connection.getRoster();
				avatarService = new AvatarService(this);
				bookmarkService = new BookmarkService(this);
				userService = new UserService(this, createMeUser());
				chatService = new ChatService(this);
				jingleService = new JingleService(this);
				return true;
			} catch (final XMPPException e) {
				Log.e(TAG, "loginXMPP", e);
				return false;
			}
		}
		return false;
	}

	public void sendRosterDeleted(String uid) {
		if (listener.isActiveAccount(accountInfo)) {
			listener.sendRosterDeleted(accountInfo, uid);
		}
	}

	public void sendRosterUpdated(User user) {
		if (user.isMUCUser()) {
			getChatService().updateMUCUser(user);
		}
		if (listener.isActiveAccount(accountInfo)) {
			listener.sendRosterUpdated(accountInfo, user);
		}
	}

	public void sendRosterAdded(User user) {
		if (listener.isActiveAccount(accountInfo)) {
			listener.sendRosterAdded(accountInfo, user);
		}
	}

	public void sendSessionUpdated(ChatSession session) {
		if (listener.isActiveChatSession(accountInfo, session)) {
			listener.sendSessionUpdated(accountInfo, session);
		}
	}

	public void processMessage(ChatSession session, ChatMessage chatMessage) {
		if (listener.isActiveChatSession(accountInfo, session)) {
			if (chatMessage instanceof ParcelableMessage) {
				listener.processMessage(accountInfo, session,
						(ParcelableMessage) chatMessage);
			}
		} else {
			if (chatMessage instanceof SingleChatMessage) {
				showSingleChatNotification((SingleChatMessage) chatMessage);
			} else if (chatMessage instanceof MultiChatMessage) {
				// TODO Check if contains nickname (highlight) and notify
			}
		}
	}

	@Override
	public Context getContext() {
		return contextProvider.getContext();
	}

	public Bundle openMucSession(String muc) {
		ChatSession session = getChatService()
				.getChatSessionFromIdentifier(muc);
		if (session == null) {
			session = getChatService().startSession(muc);
		}
		Chat chat = getChatService().getChatFromSession(session);
		if (!chat.init()) {
			closeChatSession(session);
			return null;
		}
		Bundle b = new Bundle();
		b.putParcelable(FIELD_CHAT_SESSION, session);
		b.putString(FIELD_SUBJECT, chat.getSubject());
		return b;
	}

	public boolean sendChatMessage(ChatSession session, String text) {
		if (session == null || text == null || text.isEmpty()) {
			return false;
		} else {
			getChatService().sendMessage(session, text);
			return true;
		}
	}

	public void updateContact(Contact contact) {
		final ContactList contacts = userService.getContactList();
		for (final Contact c : contacts) {
			if (c.equals(contact)) {
				c.setUserContact(contact.getUserContact());
				break;
			}
		}
	}

	public void updateMeStatus(UserState state) {
		final User user = userService.getUserMe();
		user.setUserState(state);
		showAccountNotification();
		if (state.isTemporaryStatus()) {
			final Presence presence = state.toPresence();
			presence.setFrom(user.getUserLogin() + "/" + XMPP_RESSOURCE);
			connection.sendPacket(presence);
		}
	}

	public void updateUser(User user) {
		userService.updateUser(user);
	}

}
