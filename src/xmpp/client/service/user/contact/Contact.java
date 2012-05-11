package xmpp.client.service.user.contact;

import xmpp.client.service.user.User;
import xmpp.client.service.user.UserList;
import xmpp.client.service.user.UserState;
import xmpp.client.service.user.group.GroupList;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

public class Contact implements Parcelable, Comparable<Contact> {

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
		mUserContact = in.readString();
		mUnreadMessageCount = in.readInt();
	}

	public Contact(User user) {
		this();
		mUserList.add(user);
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

	public boolean contains(String address, boolean fullcheck) {
		for (final User user : getUsers()) {
			if ((!fullcheck && user.getUserLogin().equalsIgnoreCase(address))
					|| (fullcheck && user.getFullUserLogin().equalsIgnoreCase(
							address))) {
				return true;
			}
		}
		return false;
	}

	public boolean contains(User user) {
		for (final User user2 : getUsers()) {
			if (user2.equals(user)) {
				Log.d("ContactProvider",
						user.getFullUserLogin() + "=="
								+ user2.getFullUserLogin() + ":"
								+ getUserName());
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

	public boolean equals(Contact o) {
		if (o.getUserName().equalsIgnoreCase(getUserName())) {
			return true;
		}
		return false;
	}

	@Deprecated
	public boolean equals(User o) {
		if (contains(o)) {
			return true;
		}
		return false;
	}

	public Bitmap getBitmap(Context mContext, boolean showIcon) {
		for (final User user : mUserList) {
			if (user.getAvatar() != null) {
				return user.getBitmap(mContext, showIcon);
			}
		}
		return getUser().getBitmap(mContext, showIcon);
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
		int sum = 0;
		for (final User user : mUserList) {
			sum += user.getUnreadMessages();
		}
		return sum;
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
		if (getUser() != null) {
			return getUser().getDisplayName();
		}
		return null;
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

	@Override
	public void writeToParcel(Parcel out, int flags) {
		out.writeParcelable(mUserList, flags);
		out.writeString(mUserContact);
		out.writeInt(mUnreadMessageCount);
	}

}
