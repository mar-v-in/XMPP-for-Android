package xmpp.client.service.chat.multi;

import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserList;
import android.os.Parcel;
import android.os.Parcelable;

public class MultiChatSession extends ChatSession {
	@SuppressWarnings("unused")
	private static final String TAG = MultiChatSession.class.getName();
	UserList mUserList;
	String mSubject;

	public static final Parcelable.Creator<MultiChatSession> CREATOR = new Parcelable.Creator<MultiChatSession>() {
		@Override
		public MultiChatSession createFromParcel(Parcel in) {
			final boolean[] bl = in.createBooleanArray();
			return new MultiChatSession(bl, in);
		}

		@Override
		public MultiChatSession[] newArray(int size) {
			return new MultiChatSession[size];
		}
	};

	public MultiChatSession(boolean[] bl, Parcel in) {
		super(bl, in);
		mUserList = in.readParcelable(UserList.class.getClassLoader());
		mSubject = in.readString();
	}

	public MultiChatSession(String muc) {
		super(muc);
		mUserList = new UserList();
	}

	@Override
	public String getIdentifier() {
		return getSessionID();
	}

	public String getSubject() {
		return mSubject;
	}

	public UserList getUsers() {
		return mUserList;
	}

	public void setSubject(String subject) {
		mSubject = subject;
	}

	public void updateUser(User user) {
		if (!user.getUserState().isOnline() && mUserList.contains(user)) {
			mUserList.remove(user);
		} else if (!mUserList.contains(user)) {
			mUserList.add(user);
		}
		mUserList.sort();
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		super.writeToParcel(dest, flags);
		dest.writeParcelable(mUserList, flags);
		dest.writeString(mSubject);
	}
}
