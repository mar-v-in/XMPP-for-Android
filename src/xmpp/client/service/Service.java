package xmpp.client.service;

import java.util.HashMap;

import xmpp.client.Constants;
import xmpp.client.account.AccountInfo;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.chat.ParcelableMessage;
import xmpp.client.service.chat.multi.MultiChatInfoList;
import xmpp.client.service.handlers.SimpleMessageHandler;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserState;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.service.user.contact.ContactList;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;

public class Service extends android.app.Service implements
		SimpleMessageHandlerClient, Constants, MainServiceListener,
		ContextProvider {

	private static final String TAG = Service.class.getName();

	private Messenger messenger;
	private Messenger activeClient;
	private ChatSession activeChatSession;
	private AccountInfo activeAccount;
	private HashMap<String, MainService> services;
	private HandlerThread thread;

	private void addUser(Message msg) {
		Bundle b = msg.getData();
		final String uid = b.getString(FIELD_JID);
		final String nick = b.getString(FIELD_NICKNAME);
		final User user = getActiveService().getUserService()
				.addUser(uid, nick);
		if (user != null) {
			b = new Bundle();
			b.putParcelable(FIELD_USER, user);
			sendMsg(msg.replyTo, SIG_ROSTER_ADD, b);
		} else {
			sendMsg(msg.replyTo, SIG_ROSTER_ADD_ERROR);
		}
	}

	private void closeChatSession(AccountInfo accountInfo, ChatSession session) {
		getServiceByAccountInfo(accountInfo).closeChatSession(session);
		disableChatSession(session);
	}

	private void closeChatSession(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		Bundle b = msg.getData();
		b.setClassLoader(ChatSession.class.getClassLoader());
		final ChatSession session = b.getParcelable(FIELD_CHAT_SESSION);
		closeChatSession(accountInfo, session);
		b = new Bundle();
		b.putParcelable(FIELD_ACCOUNTINFO, accountInfo);
		sendMsg(msg.replyTo, SIG_CLOSE_CHATSESSION, b);
	}

	private void connect(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		boolean res;
		res = connectXMPP(accountInfo);
		if (res) {
			final Bundle b = new Bundle();
			b.putParcelable(FIELD_ACCOUNTINFO, accountInfo);
			sendMsg(msg.replyTo, SIG_CONNECT);
		} else {
			sendMsg(msg.replyTo, SIG_CONNECT_ERROR);
		}
	}

	private boolean connectXMPP(AccountInfo accountInfo) {
		return getServiceByAccountInfo(accountInfo).connectXMPP();
	}

	private void disableChatSession(ChatSession session) {
		if (session != null) {
			if (session.equals(activeChatSession)) {
				activeChatSession = null;
			}
		}
	}

	private void disableChatSession(Message msg) {
		final Bundle b = msg.getData();
		b.setClassLoader(ChatSession.class.getClassLoader());
		final ChatSession session = b.getParcelable(FIELD_CHAT_SESSION);
		disableChatSession(session);
		sendMsg(msg.replyTo, SIG_DISABLE_CHATSESSION);
	}

	private AccountInfo getAccountInfo(Message msg) {
		final Bundle b = msg.getData();
		b.setClassLoader(AccountInfo.class.getClassLoader());
		AccountInfo accountInfo = b.getParcelable(FIELD_ACCOUNTINFO);
		if (accountInfo == null) {
			accountInfo = activeAccount;
		}
		return accountInfo;
	}

	private MainService getActiveService() {
		return getServiceByAccountInfo(activeAccount);
	}

	private ContactList getContactList(AccountInfo accountInfo) {
		return getServiceByAccountInfo(accountInfo).getContactList();
	}

	private void getContacts(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		final ContactList contactList = getContactList(accountInfo);
		if (contactList != null) {
			final Bundle b = new Bundle();
			b.putParcelable(FIELD_CONTACT_LIST, contactList);
			sendMsg(msg.replyTo, SIG_ROSTER_GET_CONTACTS, b);
		} else {
			sendMsg(msg.replyTo, SIG_ROSTER_GET_CONTACTS_ERROR);
		}
	}

	@Override
	public Context getContext() {
		return this;
	}

	private MultiChatInfoList getMUCs(AccountInfo accountInfo) {
		return getServiceByAccountInfo(accountInfo).getBookmarkService()
				.getConferenceHandler().getMultiUserChatInfoList();
	}

	private void getMUCs(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		final Bundle b = new Bundle();
		b.putParcelable(FIELD_ACCOUNTINFO, accountInfo);
		b.putParcelable(FIELD_MULTI_USER_CHAT_INFO_LIST, getMUCs(accountInfo));
		sendMsg(msg.replyTo, SIG_GET_MUCS, b);
	}

	private MainService getServiceByAccountInfo(AccountInfo info) {
		if (info == null) {
			return null;
		}
		return services.get(info.getFullUsername());
	}

	private User getUserMe(AccountInfo accountInfo) {
		return getServiceByAccountInfo(accountInfo).getUserService()
				.getUserMe();
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
		case SIG_GET_MUCS:
			getMUCs(msg);
			break;
		case SIG_IS_ONLINE:
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
		res = initXMPP((AccountInfo) b.getParcelable(FIELD_ACCOUNTINFO));
		if (res) {
			sendMsg(msg.replyTo, SIG_INIT);
		} else {
			sendMsg(msg.replyTo, SIG_INIT_ERROR);
		}
	}

	private boolean initXMPP(AccountInfo accountInfo) {
		final MainService service = new MainService(this, this, accountInfo);
		if (service.initXMPP()) {
			services.put(accountInfo.getFullUsername(), service);
			activeAccount = accountInfo;
			return true;
		}
		return false;
	}

	@Override
	public boolean isActiveAccount(AccountInfo accountInfo) {
		return (activeAccount.equals(accountInfo));
	}

	@Override
	public boolean isActiveChatSession(AccountInfo accountInfo,
			ChatSession session) {
		return (isActiveAccount(accountInfo) && session
				.equals(activeChatSession));
	}

	private boolean isOnline(AccountInfo accountInfo) {
		if (getServiceByAccountInfo(accountInfo) == null) {
			return false;
		}
		return getServiceByAccountInfo(accountInfo).isOnline();
	}

	private void isOnline(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		boolean res;
		res = isOnline(accountInfo);
		if (res) {
			final Bundle b = new Bundle();
			b.putParcelable(FIELD_ACCOUNTINFO, accountInfo);
			b.putParcelable(FIELD_USER, getUserMe(accountInfo));
			b.putParcelable(FIELD_CONTACT, new Contact(getUserMe(accountInfo)));
			sendMsg(msg.replyTo, SIG_IS_ONLINE, b);
		} else {
			sendMsg(msg.replyTo, SIG_IS_NOT_ONLINE);
		}
	}

	@Override
	public boolean isReady() {
		return true;
	}

	private void login(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		boolean res;
		res = loginXMPP(accountInfo);
		if (res) {
			final Bundle b = new Bundle();
			b.putParcelable(FIELD_ACCOUNTINFO, accountInfo);
			sendMsg(msg.replyTo, SIG_LOGIN);
		} else {
			sendMsg(msg.replyTo, SIG_LOGIN_ERROR);
		}
	}

	private boolean loginXMPP(AccountInfo accountInfo) {
		return getServiceByAccountInfo(accountInfo).loginXMPP();
	}

	@Override
	public IBinder onBind(Intent intent) {
		return messenger.getBinder();
	}

	@Override
	public void onCreate() {
		thread = new HandlerThread("ServiceStartArguments",
				Process.THREAD_PRIORITY_BACKGROUND);
		thread.setDaemon(true);
		thread.start();
		messenger = new Messenger(new SimpleMessageHandler(this,
				thread.getLooper()));
		services = new HashMap<String, MainService>();
	}

	@Override
	public void onDestroy() {
		services = null;
		if (thread != null) {
			thread.interrupt();
			thread = null;
		}

		activeAccount = null;
		if (activeChatSession != null) {
			activeChatSession.close();
			activeChatSession = null;
		}
		activeClient = null;

		messenger = null;
	}

	private Bundle openChatSession(AccountInfo accountInfo, String uid) {
		return getServiceByAccountInfo(accountInfo).openChatSession(uid);
	}

	private void openChatSession(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		Bundle b = msg.getData();
		final String uid = b.getString(FIELD_JID);
		b = openChatSession(accountInfo, uid);
		if (accountInfo.equals(activeAccount)) {
			b.setClassLoader(ChatSession.class.getClassLoader());
			activeChatSession = b.getParcelable(FIELD_CHAT_SESSION);
		}
		b.putParcelable(FIELD_ACCOUNTINFO, accountInfo);
		sendMsg(msg.replyTo, SIG_OPEN_CHATSESSION, b);
	}

	private Bundle openMucSession(AccountInfo accountInfo, String muc) {
		return getServiceByAccountInfo(accountInfo).openMucSession(muc);
	}

	private void openMucSession(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		Bundle b = msg.getData();
		final String muc = b.getString(FIELD_JID);
		b = openMucSession(accountInfo, muc);
		if (b != null) {
			if (accountInfo.equals(activeAccount)) {
				b.setClassLoader(ChatSession.class.getClassLoader());
				activeChatSession = b.getParcelable(FIELD_CHAT_SESSION);
			}
			b.putParcelable(FIELD_ACCOUNTINFO, accountInfo);
			sendMsg(msg.replyTo, SIG_OPEN_MUC_CHATSESSION, b);
		} else {
			sendMsg(msg.replyTo, SIG_OPEN_MUC_CHATSESSION_ERROR);
		}
	}

	@Override
	public void processMessage(AccountInfo accountInfo, ChatSession session,
			ParcelableMessage chatMessage) {
		if (isActiveChatSession(accountInfo, session)) {
			final Bundle b = new Bundle();
			b.putParcelable(FIELD_CHAT_SESSION, session);
			b.putParcelable(FIELD_MESSAGE, chatMessage);
			sendToActive(SIG_MESSAGE_GOT, b);
		}
	}

	public void register(Message msg) {
		if (msg.replyTo != null) {
			if (activeClient != null) {
				sendToActive(SIG_UNREGISTER_CLIENT);
				disableChatSession(activeChatSession);
			}
			activeClient = msg.replyTo;
		}
	}

	private boolean sendChatMessage(AccountInfo accountInfo,
			ChatSession session, String text) {
		return getServiceByAccountInfo(accountInfo).sendChatMessage(session,
				text);
	}

	private void sendChatMessage(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		final Bundle b = msg.getData();
		b.setClassLoader(ChatSession.class.getClassLoader());
		final String text = b.getString(FIELD_TEXT);
		final ChatSession session = b.getParcelable(FIELD_CHAT_SESSION);
		if (!sendChatMessage(accountInfo, session, text)) {
			sendToActive(SIG_SEND_MESSAGE_ERROR);
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
			if (m == activeClient) {
				activeClient = null;
				disableChatSession(activeChatSession);
			}
		}
	}

	@Override
	public void sendRosterAdded(AccountInfo accountInfo, User user) {
		if (isActiveAccount(accountInfo)) {
			final Bundle b = new Bundle();
			b.putInt(FIELD_TYPE, ROSTER_ADDED);
			b.putString(FIELD_JID, user.getUserLogin());
			b.putParcelable(FIELD_USER, user);
			sendToActive(SIG_ROSTER_UPDATE, b);
		}
	}

	@Override
	public void sendRosterDeleted(AccountInfo accountInfo, String uid) {
		if (isActiveAccount(accountInfo)) {
			final Bundle b = new Bundle();
			b.putInt(FIELD_TYPE, ROSTER_DELETED);
			b.putString(FIELD_JID, uid);
			sendToActive(SIG_ROSTER_UPDATE, b);
		}
	}

	@Override
	public void sendRosterUpdated(AccountInfo accountInfo, User user) {
		if (isActiveAccount(accountInfo)) {
			final Bundle b = new Bundle();
			b.putInt(FIELD_TYPE, ROSTER_UPDATED);
			b.putString(FIELD_JID, user.getUserLogin());
			b.putParcelable(FIELD_USER, user);
			sendToActive(SIG_ROSTER_UPDATE, b);
		}
	}

	@Override
	public void sendSessionUpdated(AccountInfo accountInfo, ChatSession session) {
		if (isActiveChatSession(accountInfo, session)) {
			final Bundle b = new Bundle();
			b.putParcelable(FIELD_CHAT_SESSION, session);
			sendToActive(SIG_CHAT_SESSION_UPDATE, b);
		}
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
		sendMsg(activeClient, msg);
	}

	private void unregister(Message msg) {
		activeClient = null;
		disableChatSession(activeChatSession);
	}

	private void updateContact(AccountInfo accountInfo, Contact contact) {
		getServiceByAccountInfo(accountInfo).updateContact(contact);
	}

	private void updateContact(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		final Bundle b = msg.getData();
		b.setClassLoader(Contact.class.getClassLoader());
		final Contact contact = b.getParcelable(FIELD_CONTACT);
		updateContact(accountInfo, contact);
		sendMsg(msg.replyTo, SIG_UPDATE_CONTACT);
	}

	private void updateMeStatus(AccountInfo accountInfo, UserState state) {
		if (getServiceByAccountInfo(accountInfo) == null) {
			return;
		}
		getServiceByAccountInfo(accountInfo).updateMeStatus(state);
	}

	private void updateMeStatus(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		final Bundle b = msg.getData();
		b.setClassLoader(UserState.class.getClassLoader());
		final UserState state = (UserState) b.getParcelable(FIELD_STATE);
		updateMeStatus(accountInfo, state);
	}

	private void updateUser(AccountInfo accountInfo, User user) {
		getServiceByAccountInfo(accountInfo).updateUser(user);
	}

	private void updateUser(Message msg) {
		final AccountInfo accountInfo = getAccountInfo(msg);
		final Bundle b = msg.getData();
		b.setClassLoader(User.class.getClassLoader());
		final User user = b.getParcelable(FIELD_USER);
		updateUser(accountInfo, user);
		sendMsg(msg.replyTo, SIG_UPDATE_USER);
	}
}
