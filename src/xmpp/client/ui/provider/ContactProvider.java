package xmpp.client.ui.provider;

import java.util.ArrayList;

import xmpp.client.Constants;
import xmpp.client.service.handlers.SimpleMessageHandler;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserState;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.service.user.contact.ContactList;
import xmpp.client.service.user.group.GroupList;
import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;

public class ContactProvider implements SimpleMessageHandlerClient, Constants {
	private static final String TAG = ContactProvider.class.getName();
	private ContactList mContactList;
	private final GroupList mGroupList;
	private Contact mContact;
	private final ArrayList<ContactProviderListener> mListeners;
	private final Messenger mService;
	private final Messenger mMessenger;
	private final Context mContext;
	private boolean initDone;

	public ContactProvider(Messenger localMessenger,
			Messenger serviceMessenger, Context context) {
		mMessenger = localMessenger;
		mService = serviceMessenger;
		mContext = context;
		mContactList = new ContactList();
		mGroupList = new GroupList();
		final User u = new User();
		u.setUserLogin("");
		u.setUserState(new UserState(UserState.STATUS_INITIALIZING, null));
		mContact = new Contact(u);
		mListeners = new ArrayList<ContactProviderListener>();
		initDone = false;
	}

	public ContactProvider(Messenger localMessenger,
			Messenger serviceMessenger, Context context,
			ContactProviderListener listener) {
		this(localMessenger, serviceMessenger, context);
		addListener(listener);
	}

	public ContactProvider(Messenger localMessenger,
			Messenger serviceMessenger, Context context,
			ContactProviderListener listener,
			SimpleMessageHandler messageHandler) {
		this(localMessenger, serviceMessenger, context, listener);
		messageHandler.addClient(this);
	}

	public ContactProvider(Messenger localMessenger,
			Messenger serviceMessenger, Context context,
			SimpleMessageHandler messageHandler) {
		this(localMessenger, serviceMessenger, context);
		messageHandler.addClient(this);
	}

	public void add(User user) {
		mContactList.add(user);
		update();
	}

	public void addListener(ContactProviderListener listener) {
		mListeners.add(listener);
	}

	public void clearListeners() {
		mListeners.clear();
	}

	public void delListener(ContactProviderListener listener) {
		mListeners.remove(listener);
	}

	public Contact getContact(int position) {
		if (mContactList.size() > position) {
			return mContactList.get(position);
		}
		return null;
	}

	@Deprecated
	public Contact getContact(String address) {
		if (mContact.contains(address, true)) {
			return mContact;
		}
		for (final Contact contact : mContactList) {
			if (contact.contains(address, false)) {
				return contact;
			}
		}
		Log.w(TAG, "Roster Entry not found:" + address);
		return null;
	}

	public Contact getContact(User user) {
		return mContactList.get(user);
	}

	public Contact getContactInGroup(CharSequence activeGroup, int position) {
		return mContactList.getInGroup(activeGroup, position);
	}

	public GroupList getGroups() {
		return mGroupList;
	}

	public Contact getMeContact() {
		return mContact;
	}

	public String getMeUserLogin() {
		return mContact.getUserLogin();
	}

	@Override
	public void handleMessage(Message msg) {
		try {
			final Bundle b = msg.getData();
			switch (msg.what) {
			case SIG_ROSTER_GET_CONTACTS_ERROR:
				Log.e(TAG, "GET_CONTACTS_ERROR");
				break;
			case SIG_IS_ONLINE:
				initDone = true;
				b.setClassLoader(Contact.class.getClassLoader());
				mContact = (Contact) b.getParcelable(FIELD_CONTACT);
				msg = Message.obtain(null, SIG_ROSTER_GET_CONTACTS);
				msg.replyTo = mMessenger;
				mService.send(msg);
				break;
			case SIG_ROSTER_GET_CONTACTS:
				b.setClassLoader(ContactList.class.getClassLoader());
				if (b.containsKey("contacts")) {
					final Parcelable p = b.getParcelable(FIELD_CONTACT_LIST);
					if (p instanceof ContactList) {
						mContactList = (ContactList) p;
						update();
						sendReady();
						sendChanged();
					}
				}
				break;
			case SIG_ROSTER_UPDATE:
				if (!initDone) {
					break;
				}
				b.setClassLoader(User.class.getClassLoader());
				if (b.containsKey(FIELD_TYPE)) {
					switch (b.getInt(FIELD_TYPE)) {
					case ROSTER_ADDED:
						final User u = b.getParcelable(FIELD_USER);
						add(u);
						break;
					case ROSTER_UPDATED:
						update((User) b.getParcelable(FIELD_USER));
						break;
					case ROSTER_DELETED:
						remove(b.getString(FIELD_JID));
						break;
					default:
						break;
					}
					sendChanged();
				}

				break;
			}
		} catch (final Exception e) {
			Log.w(TAG, "handleMessage", e);
		}
	}

	@Override
	public boolean isReady() {
		return true;
	}

	public void remove(String address) {
		mContactList.removeUser(address);
		update();
	}

	private void sendChanged() {
		for (final ContactProviderListener listener : mListeners) {
			if (listener != null && listener.isReady()) {
				listener.contactProviderChanged(this);
			}
		}
	}

	private void sendReady() {
		for (final ContactProviderListener listener : mListeners) {
			if (listener != null && listener.isReady()) {
				listener.contactProviderReady(this);
			}
		}
	}

	void update() {
		mContactList.sort();
		mGroupList.fillFromContactList(mContactList);
	}

	public void update(User user) {
		for (final Contact contact : mContactList) {
			if (contact.contains(user.getUserLogin(), false)) {
				contact.remove(user.getUserLogin());
				contact.add(user);
				break;
			}
		}
		update();
	}

	public int userGroupSize(CharSequence activeGroup) {
		return mContactList.groupSize(activeGroup);
	}

	public int userOnlineSize() {
		return mContactList.sizeOnline();
	}

	public int userSize() {
		return mContactList.sizeVisible();
	}
}
