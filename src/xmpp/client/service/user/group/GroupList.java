package xmpp.client.service.user.group;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

import org.jivesoftware.smack.RosterGroup;

import xmpp.client.service.user.contact.Contact;
import xmpp.client.service.user.contact.ContactList;
import android.os.Parcel;
import android.os.Parcelable;

public class GroupList extends ArrayList<String> implements Parcelable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final Parcelable.Creator<GroupList> CREATOR = new Parcelable.Creator<GroupList>() {
		@Override
		public GroupList createFromParcel(Parcel in) {
			return new GroupList(in);
		}

		@Override
		public GroupList[] newArray(int size) {
			return new GroupList[size];
		}
	};

	public GroupList() {
		super();
	}

	public GroupList(Collection<RosterGroup> groups) {
		this();
		for (final RosterGroup rosterGroup2 : groups) {
			final RosterGroup rosterGroup = rosterGroup2;
			add(rosterGroup.getName());
		}
	}

	private GroupList(Parcel in) {
		super();
		final int size = in.readInt();
		for (int i = 0; i < size; i++) {
			add(in.readString());
		}
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean equals(Object o) {
		if (o instanceof GroupList) {
			if (((GroupList) o).size() == size()) {
				if (((GroupList) o).containsAll(this)) {
					return true;
				}
			}
		}
		return false;
	}

	public void fillFromContactList(ContactList contactList) {
		clear();
		for (final Contact Contact : contactList) {
			for (final String group : Contact.getGroups()) {
				if (!contains(group)) {
					add(group);
				}
			}
		}
		sort();
	}

	public void sort() {
		Collections.sort(this);
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeInt(size());
		for (int i = 0; i < size(); i++) {
			dest.writeString(get(i));
		}
	}

}
