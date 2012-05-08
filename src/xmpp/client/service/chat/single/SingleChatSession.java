package xmpp.client.service.chat.single;

import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.user.User;
import android.os.Parcel;
import android.os.Parcelable;

public class SingleChatSession extends ChatSession {
	@SuppressWarnings("unused")
	private static final String TAG = SingleChatSession.class.getName();

	User mUser;

	public static final Parcelable.Creator<SingleChatSession> CREATOR = new Parcelable.Creator<SingleChatSession>() {
		@Override
		public SingleChatSession createFromParcel(Parcel in) {
			final boolean[] bl = in.createBooleanArray();
			return new SingleChatSession(bl, in);
		}

		@Override
		public SingleChatSession[] newArray(int size) {
			return new SingleChatSession[size];
		}
	};

	public SingleChatSession(boolean[] bl, Parcel in) {
		super(bl, in);
		mUser = in.readParcelable(User.class.getClassLoader());
	}

	public SingleChatSession(User user, String sessionID) {
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
