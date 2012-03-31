package xmpp.client.service;

import java.security.Security;

import org.apache.qpid.management.common.sasl.SaslProvider;
import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.ConnectionConfiguration;
import org.jivesoftware.smack.ConnectionConfiguration.SecurityMode;
import org.jivesoftware.smack.ConnectionListener;
import org.jivesoftware.smack.SmackConfiguration;
import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.packet.Presence;

import xmpp.client.R;
import xmpp.client.service.account.AccountInfo;
import xmpp.client.service.chat.Chat;
import xmpp.client.service.chat.ChatMessage;
import xmpp.client.service.chat.ChatService;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.handlers.SimpleMessageHandler;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserService;
import xmpp.client.service.user.UserState;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.service.user.contact.ContactList;
import xmpp.client.ui.activities.AppActivity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;

public class Service extends android.app.Service implements
		SimpleMessageHandlerClient, Signals {
	private static final String TAG = Service.class.getName();

	private XMPPConnection mConnection;
	private Messenger mMessenger;
	private NotificationManager mNM;
	private Messenger mActiveClient;
	private ChatSession mActiveChatSession;
	private AccountInfo mAccountInfo;

	ConnectionListener mConnectionListener = new ConnectionListener() {

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

	private ChatService mChatService;

	private UserService mUserService;

	private HandlerThread mThread;

	private void addUser(Message msg) {
		Bundle b = msg.getData();
		final String uid = b.getString("uid");
		final User user = mUserService.addUser(uid);
		if (user != null) {
			b = new Bundle();
			b.putParcelable("user", user);
			sendMsg(msg.replyTo, SIG_ROSTER_ADD, b);
		} else {
			sendMsg(msg.replyTo, SIG_ROSTER_ADD_ERROR);
		}
	}

	private void closeChatSession(ChatSession session) {
		if (session != null) {
			disableChatSession(session);
			mChatService.closeChat(session);
		}
	}

	private void closeChatSession(Message msg) {
		final Bundle b = msg.getData();
		b.setClassLoader(ChatSession.class.getClassLoader());
		final ChatSession session = b.getParcelable("session");
		closeChatSession(session);
		sendMsg(msg.replyTo, SIG_CLOSE_CHATSESSION);
	}

	private void connect(Message msg) {
		boolean res;
		res = connectXMPP();
		if (res) {
			sendMsg(msg.replyTo, SIG_CONNECT);
		} else {
			sendMsg(msg.replyTo, SIG_CONNECT_ERROR);
		}
	}

	private boolean connectXMPP() {
		if (mConnection != null) {
			if (mConnection.isConnected()) {
				return true;
			}
			try {
				mConnection.connect();
				mConnection.addConnectionListener(mConnectionListener);

				return true;
			} catch (final XMPPException e) {
				Log.i(TAG, "connectedXMPP", e);
				return false;
			}
		}
		return false;
	}

	private User createMeUser() {
		final User user = new User();
		user.setUserName("LoopBack|mobile");
		user.setUserLogin(mConnection.getUser());
		user.setRessource((String) getText(R.string.xmpp_ressource));
		user.setUserState(new UserState(UserState.STATUS_INITIALIZING, null));
		return user;
	}

	private void disableChatSession(ChatSession session) {
		if (session != null) {
			if (session.equals(mActiveChatSession)) {
				mActiveChatSession = null;
			}
		}
	}

	private void disableChatSession(Message msg) {
		final Bundle b = msg.getData();
		b.setClassLoader(ChatSession.class.getClassLoader());
		final ChatSession session = b.getParcelable("session");
		disableChatSession(session);
		sendMsg(msg.replyTo, SIG_DISABLE_CHATSESSION);
	}

	public Connection getConnection() {
		return mConnection;
	}

	private void getContacts(Message msg) {
		final ContactList contactList = mUserService.getContactList();
		if (contactList != null) {
			final Bundle b = new Bundle();
			b.putParcelable("contacts", contactList);
			sendMsg(msg.replyTo, SIG_ROSTER_GET_CONTACTS, b);
		} else {
			sendMsg(msg.replyTo, SIG_ROSTER_GET_CONTACTS_ERROR);
		}
	}

	@Override
	public void handleMessage(Message msg) {
		switch (msg.what) {
		case SIG_OPEN_CHATSESSION:
			openChatSession(msg);
			break;
		case SIG_OPEN_MUC_CHATSESSION:
			openMucSession(msg);
			break;
		case SIG_CLOSE_CHATSESSION:
			closeChatSession(msg);
			break;
		case SIG_SEND_MESSAGE:
			sendChatMessage(msg);
			break;
		case SIG_REGISTER_CLIENT:
			register(msg);
			break;
		case SIG_UNREGISTER_CLIENT:
			unregister(msg);
			break;
		case SIG_INIT:
			init(msg);
		case SIG_CONNECT:
			connect(msg);
		case SIG_LOGIN:
			login(msg);
			break;
		case SIG_IS_READY:
			isOnline(msg);
			break;
		case SIG_DISABLE_CHATSESSION:
			disableChatSession(msg);
			break;
		case SIG_SET_STATUS:
			updateMeStatus(msg);
			break;
		case SIG_UPDATE_CONTACT:
			updateContact(msg);
			break;
		case SIG_UPDATE_USER:
			updateUser(msg);
			break;
		case SIG_ROSTER_GET_CONTACTS:
			getContacts(msg);
			break;
		case SIG_ROSTER_ADD:
			addUser(msg);
			break;
		default:
			Log.i(TAG, "unknown Message: " + msg.what);
		}
	}

	private void init(Message msg) {
		boolean res;
		Bundle b;
		b = msg.getData();
		b.setClassLoader(AccountInfo.class.getClassLoader());
		res = initXMPP((AccountInfo) b.getParcelable("AccountInfo"));
		if (res) {
			sendMsg(msg.replyTo, SIG_INIT);
		} else {
			sendMsg(msg.replyTo, SIG_INIT_ERROR);
		}
	}

	private boolean initXMPP(AccountInfo accountInfo) {
		if (mConnection != null) {
			mConnection.disconnect();
		}
		mAccountInfo = accountInfo;
		if (mAccountInfo == null) {
			return false;
		}
		ConnectionConfiguration config;
		if (mAccountInfo.getPort() == -1) {
			config = new ConnectionConfiguration(mAccountInfo.getHostname());
		} else {
			config = new ConnectionConfiguration(mAccountInfo.getHostname(),
					mAccountInfo.getPort());
		}
		if (mAccountInfo.getSecurity() == AccountInfo.ACCOUNT_SECURITY_DISABLED) {
			config.setSecurityMode(SecurityMode.disabled);
		} else if (mAccountInfo.getSecurity() == AccountInfo.ACCOUNT_SECURITY_ENABLED) {
			config.setSecurityMode(SecurityMode.enabled);
		} else if (mAccountInfo.getSecurity() == AccountInfo.ACCOUNT_SECURITY_REQUIRED) {
			config.setSecurityMode(SecurityMode.required);
		}
		config.setReconnectionAllowed(true);
		config.setCompressionEnabled(true);
		config.setSelfSignedCertificateEnabled(true);
		config.setTruststoreType("BKS");
		SmackConfiguration.setKeepAliveInterval(60000);
		SmackConfiguration.setPacketReplyTimeout(30000);
		mConnection = new XMPPConnection(config);
		return true;
	}

	private boolean isOnline() {
		if (mConnection != null) {
			if (mConnection.isConnected()) {
				if (mConnection.isAuthenticated()) {
					return true;
				}
			}
		}
		return false;
	}

	private void isOnline(Message msg) {
		boolean res;
		res = isOnline();
		if (res) {
			final Bundle b = new Bundle();
			b.putParcelable("user", mUserService.getUserMe());
			b.putParcelable("contact", new Contact(mUserService.getUserMe()));
			sendMsg(msg.replyTo, SIG_IS_READY, b);
		} else {
			sendMsg(msg.replyTo, SIG_IS_NOT_READY);
		}
	}

	@Override
	public boolean isReady() {
		return true;
	}

	private void login(Message msg) {
		boolean res;
		res = loginXMPP();
		if (res) {
			sendMsg(msg.replyTo, SIG_LOGIN);
		} else {
			sendMsg(msg.replyTo, SIG_LOGIN_ERROR);
		}
	}

	private boolean loginXMPP() {
		if (mConnection != null) {
			if (mConnection.isAuthenticated()) {
				return true;
			}
			try {
				Security.addProvider(new SaslProvider());
				mConnection.login(mAccountInfo.getUsername(),
						mAccountInfo.getPassword(),
						(String) getText(R.string.xmpp_ressource));
				mUserService = new UserService(mConnection.getRoster(), this,
						createMeUser());
				mChatService = new ChatService(mConnection, this, mUserService);
				return true;
			} catch (final XMPPException e) {
				Log.i(TAG, "loginXMPP", e);
				return false;
			}
		}
		return false;
	}

	@Override
	public IBinder onBind(Intent intent) {
		return mMessenger.getBinder();
	}

	@Override
	public void onCreate() {
		mThread = new HandlerThread("ServiceStartArguments",
				Process.THREAD_PRIORITY_BACKGROUND);
		mThread.setDaemon(true);
		mThread.start();
		mMessenger = new Messenger(new SimpleMessageHandler(this,
				mThread.getLooper()));

		mNM = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);

		showNotification(null, null);
	}

	@Override
	public void onDestroy() {
		if (mThread != null) {
			mThread.interrupt();
			mThread = null;
		}

		if (mAccountInfo != null) {
			mAccountInfo = null;
		}
		if (mActiveChatSession != null) {
			mActiveChatSession.close();
			mActiveChatSession = null;
		}
		if (mActiveClient != null) {
			mActiveClient = null;
		}
		if (mChatService != null) {
			mChatService.destroy();
			mChatService = null;
		}
		if (mMessenger != null) {
			mMessenger = null;
		}
		if (mUserService != null) {
			mUserService.destroy();
			mUserService = null;
		}

		if (mConnection != null) {
			mConnection.disconnect();
			mConnection = null;
		}

		if (mNM != null) {
			mNM.cancel(R.string.app_name);
			mNM = null;
		}
	}

	private void openChatSession(Message msg) {
		Bundle b = msg.getData();
		final String uid = b.getString("uid");
		final Contact contact = mUserService.getContact(uid, false);
		final User user = mUserService.getUser(uid, false);
		contact.clearUnreadMessages();
		ChatSession session = mChatService.getChatSessionFromIdentifier(uid);
		if (session == null) {
			session = mChatService.startSession(user);
		}
		b = new Bundle();
		b.putParcelable("session", session);
		b.putParcelable("user", user);
		b.putParcelable("contact", contact);
		mActiveChatSession = session;
		sendMsg(msg.replyTo, SIG_OPEN_CHATSESSION, b);
	}

	private void openMucSession(Message msg) {
		Bundle b = msg.getData();
		final String muc = b.getString("muc");
		ChatSession session = mChatService.getChatSessionFromIdentifier(muc);
		if (session == null) {
			session = mChatService.startSession(muc);
		}
		final Chat chat = mChatService.getChatFromSession(session);
		b = new Bundle();
		b.putParcelable("session", session);
		b.putString("subject", chat.getSubject());
		mActiveChatSession = session;
		sendMsg(msg.replyTo, SIG_OPEN_MUC_CHATSESSION, b);
	}

	public void processMessage(ChatSession session, ChatMessage message) {
		if (session.equals(mActiveChatSession)) {
			final Bundle b = new Bundle();
			b.putParcelable("session", session);
			b.putParcelable("message", message);
			sendToActive(SIG_MESSAGE_GOT, b);
		} else {
			if (session.isMUC()) {
				showChatNotification(message);
			} else {
				final Contact contact = mUserService.getContact(
						message.getUser(), true);
				final User user = mUserService.getUser(message.getUser()
						.getUserLogin(), false);
				contact.increaseUnreadMessages();
				sendRosterUpdated(user);
				showChatNotification(message);
			}
		}
	}

	public void register(Message msg) {
		if (msg.replyTo != null) {
			if (mActiveClient != null) {
				sendToActive(SIG_UNREGISTER_CLIENT);
				disableChatSession(mActiveChatSession);
			}
			mActiveClient = msg.replyTo;
		}
	}

	private void sendChatMessage(Message msg) {
		final Bundle b = msg.getData();
		b.setClassLoader(ChatSession.class.getClassLoader());
		final String text = b.getString("text");
		final ChatSession session = b.getParcelable("session");
		if (session == null) {
			Log.i(TAG, "session is null!");
			sendToActive(SIG_SEND_MESSAGE_ERROR);
		} else {
			mChatService.sendMessage(session, text);
		}
	}

	private void sendMsg(Messenger m, int msg) {
		sendMsg(m, Message.obtain(null, msg));
	}

	private void sendMsg(Messenger m, int msg, Bundle b) {
		final Message message = Message.obtain(null, msg);
		message.setData(b);
		sendMsg(m, message);
	}

	private void sendMsg(Messenger m, Message msg) {
		try {
			m.send(msg);
		} catch (final Exception e) {
			if (m == mActiveClient) {
				mActiveClient = null;
				disableChatSession(mActiveChatSession);
			}
		}
	}

	public void sendRosterAdded(User user) {
		final Bundle b = new Bundle();
		b.putInt("type", ROSTER_ADDED);
		b.putString("address", user.getUserLogin());
		b.putParcelable("entry", user);
		sendToActive(SIG_ROSTER_UPDATE, b);
	}

	public void sendRosterDeleted(String uid) {
		final Bundle b = new Bundle();
		b.putInt("type", ROSTER_DELETED);
		b.putString("address", uid);
		sendToActive(SIG_ROSTER_UPDATE, b);
	}

	public void sendRosterUpdated(User user) {
		if (user.isMUCUser()) {
			mChatService.updateMUCUser(user);
		}
		final Bundle b = new Bundle();
		b.putInt("type", ROSTER_UPDATED);
		b.putString("address", user.getUserLogin());
		b.putParcelable("entry", user);
		sendToActive(SIG_ROSTER_UPDATE, b);
	}

	public void sendSessionUpdated(ChatSession session) {
		// TODO Auto-generated method stub
		final Bundle b = new Bundle();
		b.putParcelable("session", session);
		sendToActive(SIG_CHAT_SESSION_UPDATE, b);
	}

	private void sendToActive(int msg) {
		sendToActive(Message.obtain(null, msg));
	}

	private void sendToActive(int msg, Bundle b) {
		final Message m = Message.obtain(null, msg);
		m.setData(b);
		sendToActive(m);
	}

	private void sendToActive(Message msg) {
		sendMsg(mActiveClient, msg);
	}

	private CharSequence shortenCharSequence(CharSequence cs, int chars) {
		if (cs.length() > chars) {
			return cs.subSequence(0, chars - 1) + "…";
		} else {
			return cs;
		}
	}

	private void showChatNotification(ChatMessage message) {

		final Notification.Builder builder = new Notification.Builder(this);

		builder.setTicker(message.getUser().getDisplayName() + ": "
				+ shortenCharSequence(message.getMessage(), 250));
		builder.setSmallIcon(R.drawable.stat_notify_xmpp);
		builder.setLargeIcon(message.getUser().getBitmap(this));

		builder.setDefaults(Notification.DEFAULT_ALL);
		builder.setAutoCancel(true);
		if (message.isMUC()) {

		} else {
			builder.setNumber(mUserService.getContact(message.getUser(), false)
					.getUnreadMessages());
		}

		final Intent i = new Intent(this, AppActivity.class);
		if (message.isMUC()) {
			i.setData(Uri.parse("imto://jabbermuc/"
					+ Uri.encode(message.getUser().getUserLogin())));
		} else {
			i.setData(Uri.parse("imto://jabber/"
					+ Uri.encode(message.getUser().getUserLogin())));
		}
		final PendingIntent contentIntent = PendingIntent.getActivity(this, 0,
				i, 0);

		builder.setContentIntent(contentIntent);
		builder.setContentTitle(message.getUser().getDisplayName());
		builder.setContentText(message.getMessage());

		mNM.notify(R.string.app_name
				+ message.getUser().getUserLogin().hashCode(),
				builder.getNotification());

	}

	private void showNotification(String title, String text) {
		final Notification.Builder builder = new Notification.Builder(this);

		builder.setSmallIcon(R.drawable.stat_base_xmpp);

		final Intent i = new Intent(this, AppActivity.class);

		final PendingIntent contentIntent = PendingIntent.getActivity(this, 0,
				i, 0);

		builder.setContentIntent(contentIntent);
		builder.setOngoing(true);
		if (title == null) {
			if (mUserService == null) {
				builder.setContentTitle(getText(R.string.app_name));
			} else {
				builder.setContentTitle(mUserService.getUserMe()
						.getDisplayName());
			}
		} else {
			builder.setContentTitle(title);
		}
		if (text == null) {
			if (mUserService == null) {
				builder.setContentText(getText(R.string.process_initializing));
			} else {
				builder.setContentText(mUserService.getUserMe().getUserState()
						.getStatusText(this));
			}
		} else {
			builder.setContentText(text);
		}

		mNM.notify(R.string.app_name, builder.getNotification());
	}

	private void unregister(Message msg) {
		mActiveClient = null;
		disableChatSession(mActiveChatSession);
	}

	private void updateContact(Message msg) {
		final Bundle b = msg.getData();
		b.setClassLoader(Contact.class.getClassLoader());
		final Contact contact = b.getParcelable("contact");
		final ContactList contacts = mUserService.getContactList();
		for (final Contact c : contacts) {
			if (c.equals(contact)) {
				c.setUserContact(contact.getUserContact());
				break;
			}
		}
		sendMsg(msg.replyTo, SIG_UPDATE_CONTACT);
	}

	private void updateMeStatus(Message msg) {
		final Bundle b = msg.getData();
		b.setClassLoader(UserState.class.getClassLoader());
		final UserState state = (UserState) b.getParcelable("state");
		if (state == null || mUserService == null || state.isTemporaryStatus()) {
			showNotification(null, (String) state.getStatusText(this));
			return;
		}
		final User user = mUserService.getUserMe();
		user.setUserState(state);
		mUserService.setUserMe(user);
		showNotification(null, null);
		final Presence presence = state.toPresence();
		presence.setFrom(user.getUserLogin() + "/"
				+ getText(R.string.xmpp_ressource));
		mConnection.sendPacket(presence);
	}

	private void updateUser(Message msg) {
		final Bundle b = msg.getData();
		b.setClassLoader(User.class.getClassLoader());
		final User user = b.getParcelable("user");
		mUserService.updateUser(user);
		sendMsg(msg.replyTo, SIG_UPDATE_USER);
	}
}
