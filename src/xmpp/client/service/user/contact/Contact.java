package xmpp.client.service.user.contact;

import xmpp.client.service.user.User;
import xmpp.client.service.user.UserList;
import xmpp.client.service.user.UserState;
import xmpp.client.service.user.group.GroupList;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;

public class Contact implements Parcelable, Comparable<Contact> {

	private String mUserName;
	private final UserList mUserList;
	private String mUserContact;
	private int mUnreadMessageCount;

	public static final Parcelable.Creator<Contact> CREATOR = new Parcelable.Creator<Contact>() {
		@Override
		public Contact createFromParcel(Parcel in) {
			return new Contact(in);
		}

		@Override
		public Contact[] newArray(int size) {
			return new Contact[size];
		}
	};

	public Contact() {
		mUserList = new UserList();
		mUnreadMessageCount = 0;
	}

	private Contact(Parcel in) {
		mUserList = in.readParcelable(UserList.class.getClassLoader());
		mUserName = in.readString();
		mUserContact = in.readString();
		mUnreadMessageCount = in.readInt();
	}

	public Contact(User user) {
		this();
		mUserList.add(user);
		mUserName = user.getDisplayName();
	}

	public void add(User user) {
		mUserList.add(user);
		mUserList.sort();
	}

	public void clearUnreadMessages() {
		mUnreadMessageCount = 0;
	}

	@Override
	public int compareTo(Contact another) {
		return getUsers().get(0).compareTo(another.getUsers().get(0));
	}

	public boolean contains(String address) {
		for (final User user : getUsers()) {
			if (user.getUserLogin().equalsIgnoreCase(address)
					|| user.getFullUserLogin().equalsIgnoreCase(address)) {
				return true;
			}
		}
		return false;
	}

	public boolean contains(User user) {
		return contains(user.getUserLogin());
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean equals(Contact o) {
		if (o.getUserName().equalsIgnoreCase(getUserName())) {
			return true;
		}
		return false;
	}

	public boolean equals(User o) {
		if (contains(o.getUserLogin())) {
			return true;
		}
		return false;
	}

	public Bitmap getBitmap(Context mContext) {
		for (final User user : mUserList) {
			if (user.getAvatar() != null) {
				return user.getAvatar();
			}
		}
		return getUser().getBitmap(mContext);
	}

	public GroupList getGroups() {
		final GroupList groupList = new GroupList();
		for (final User user : mUserList) {
			for (final String group : user.getGroups()) {
				if (!groupList.contains(group)) {
					groupList.add(group);
				}
			}
		}
		return groupList;
	}

	public int getUnreadMessages() {
		return mUnreadMessageCount;
	}

	public User getUser() {
		return mUserList.get(0);
	}

	public String getUserContact() {
		return mUserContact;
	}

	public String getUserLogin() {
		return mUserList.get(0).getUserLogin();
	}

	public String[] getUserLogins() {
		final String[] logins = new String[mUserList.size()];
		int i = 0;
		for (final User user : mUserList) {
			logins[i] = user.getUserLogin();
			i++;
		}
		return logins;
	}

	public String getUserName() {
		return mUserName;
	}

	public UserList getUsers() {
		return mUserList;
	}

	public UserState getUserState() {
		return getUser().getUserState();
	}

	public void increaseUnreadMessages() {
		mUnreadMessageCount++;
	}

	public void remove(String address) {
		for (final User user : mUserList) {
			if (user.getUserLogin().equalsIgnoreCase(address)
					|| user.getFullUserLogin().equalsIgnoreCase(address)) {
				mUserList.remove(user);
				return;
			}
		}
	}

	public void setUserContact(String userContact) {
		mUserContact = userContact;
	}

	public void setUserName(String name) {
		mUserName = name;
	}

	@Override
	public void writeToParcel(Parcel out, int flags) {
		out.writeParcelable(mUserList, flags);
		out.writeString(mUserName);
		out.writeString(mUserContact);
		out.writeInt(mUnreadMessageCount);
	}

}
