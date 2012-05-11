package xmpp.client.service.user.contact;

import java.util.ArrayList;
import java.util.Collections;

import xmpp.client.service.user.User;
import xmpp.client.service.user.UserList;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

public class ContactList extends ArrayList<Contact> implements Parcelable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final boolean mHideTransports = true;

	public static final Parcelable.Creator<ContactList> CREATOR = new Parcelable.Creator<ContactList>() {
		@Override
		public ContactList createFromParcel(Parcel in) {
			return new ContactList(in);
		}

		@Override
		public ContactList[] newArray(int size) {
			return new ContactList[size];
		}
	};

	public ContactList() {
		super();
	}

	private ContactList(Parcel in) {
		super();
		final int size = in.readInt();
		for (int i = 0; i < size; i++) {
			add((Contact) in.readParcelable(Contact.class.getClassLoader()));
		}
	}

	public ContactList(UserList userList) {
		this();
		for (final User user : userList) {
			add(user);
		}
	}

	public synchronized void add(User user) {
		Log.d("ContactProvider",
				user.getFullUserLogin() + ":" + user.getDisplayName());
		for (final Contact contact : this) {
			if (contact.getUserName().equalsIgnoreCase(user.getDisplayName())) {
				if (user.isMUCUser()) {
					Log.d("ContactProvider", user.getDisplayName() + "="
							+ contact.getUserName());
				}
				contact.add(user);
				return;
			}
			if (user.isMUCUser()) {
				final String jid = user.getAdditionalInformation(0);
				if (jid != null && contact.contains(jid, false)) {

					if (user.isMUCUser()) {
						Log.d("ContactProvider", user.getDisplayName() + "="
								+ contact.getUserName());
					}
					contact.add(user);
					return;
				}
			}
		}
		Log.d("ContactProvider", user.getDisplayName() + "=new");
		add(new Contact(user));
	}

	@Deprecated
	public synchronized boolean contains(String uid) {
		for (final Contact contact : this) {
			if (contact.contains(uid, false)) {
				return true;
			}
		}
		return false;
	}

	public synchronized boolean contains(User user) {
		for (final Contact contact : this) {
			if (contact.contains(user)) {
				return true;
			}
		}
		return false;
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Deprecated
	public synchronized Contact get(String uid) {
		for (final Contact contact : this) {
			if (contact.contains(uid, false)) {
				return contact;
			}
		}
		return null;
	}

	public synchronized Contact get(User user) {
		for (final Contact contact : this) {
			if (contact.contains(user)) {
				return contact;
			}
		}
		return null;
	}

	private synchronized ContactList getGroup(CharSequence activeGroup) {
		final ContactList list = new ContactList();
		for (final Contact contact : this) {
			for (final User user : contact.getUsers()) {
				if (user.getGroups().contains(activeGroup)) {
					list.add(contact);
					break;
				}
			}

		}
		return list;
	}

	public synchronized Contact getInGroup(CharSequence activeGroup,
			int position) {
		return getGroup(activeGroup).get(position);
	}

	public synchronized Contact getOnline(int i) {
		int c = 0;
		for (int j = 0; j < size(); j++) {
			if (get(j).getUserState().isOnline()) {
				if (c == i) {
					return get(j);
				} else {
					c++;
				}
			}
		}
		return null;
	}

	public synchronized int groupSize(CharSequence activeGroup) {
		return getGroup(activeGroup).sizeVisible();
	}

	public synchronized void removeUser(String address) {
		for (final Contact contact : this) {
			if (contact.contains(address, false)) {
				contact.remove(address);
				return;
			}
		}
	}

	public synchronized int sizeOffline() {
		return sizeVisible() - sizeOnline();
	}

	public synchronized int sizeOnline() {
		int num = 0;
		for (final Contact contact : this) {
			if (contact.getUser().isInvisible()) {
				continue;
			}
			if (contact.getUserState().isOnline()) {
				num++;
			}
		}
		return num;
	}

	public synchronized int sizeVisible() {
		if (mHideTransports) {
			int i = 0;
			for (final Contact contact : this) {
				if (!contact.getUser().isInvisible()) {
					i++;
				}
			}
			return i;
		} else {
			return size();
		}
	}

	public synchronized void sort() {
		Collections.sort(this);
	}

	@Override
	public synchronized void writeToParcel(Parcel dest, int flags) {
		dest.writeInt(size());
		for (int i = 0; i < size(); i++) {
			dest.writeParcelable(get(i), flags);
		}
	}
}
