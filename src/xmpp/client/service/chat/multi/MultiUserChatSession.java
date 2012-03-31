package xmpp.client.service.chat.multi;

import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserList;
import android.os.Parcel;
import android.os.Parcelable;

public class MultiUserChatSession extends ChatSession {
	@SuppressWarnings("unused")
	private static final String TAG = MultiUserChatSession.class.getName();
	UserList mUserList;
	String mSubject;

	public static final Parcelable.Creator<MultiUserChatSession> CREATOR = new Parcelable.Creator<MultiUserChatSession>() {
		@Override
		public MultiUserChatSession createFromParcel(Parcel in) {
			final boolean[] bl = in.createBooleanArray();
			return new MultiUserChatSession(bl, in);
		}

		@Override
		public MultiUserChatSession[] newArray(int size) {
			return new MultiUserChatSession[size];
		}
	};

	public MultiUserChatSession(boolean[] bl, Parcel in) {
		super(bl, in);
		mUserList = in.readParcelable(UserList.class.getClassLoader());
		mSubject = in.readString();
	}

	public MultiUserChatSession(String muc) {
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
