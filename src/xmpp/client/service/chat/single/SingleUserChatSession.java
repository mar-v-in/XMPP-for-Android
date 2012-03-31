package xmpp.client.service.chat.single;

import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.user.User;
import android.os.Parcel;
import android.os.Parcelable;

public class SingleUserChatSession extends ChatSession {
	@SuppressWarnings("unused")
	private static final String TAG = SingleUserChatSession.class.getName();

	User mUser;

	public static final Parcelable.Creator<SingleUserChatSession> CREATOR = new Parcelable.Creator<SingleUserChatSession>() {
		@Override
		public SingleUserChatSession createFromParcel(Parcel in) {
			final boolean[] bl = in.createBooleanArray();
			return new SingleUserChatSession(bl, in);
		}

		@Override
		public SingleUserChatSession[] newArray(int size) {
			return new SingleUserChatSession[size];
		}
	};

	public SingleUserChatSession(boolean[] bl, Parcel in) {
		super(bl, in);
		mUser = in.readParcelable(User.class.getClassLoader());
	}

	public SingleUserChatSession(User user, String sessionID) {
		super(sessionID);
		mUser = user;
	}

	@Override
	public void close() {
		super.close();
		mUser = null;
	}

	@Override
	public String getIdentifier() {
		return mUser.getUserLogin();
	}

	public User getUser() {
		return mUser;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		super.writeToParcel(dest, flags);
		dest.writeParcelable(mUser, flags);
	}
}
