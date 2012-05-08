package xmpp.client.service.chat.multi;

import org.jivesoftware.smackx.bookmark.BookmarkedConference;

import android.os.Parcel;
import android.os.Parcelable;

public class MultiChatInfo implements Parcelable {

	private final String mMUCName;
	private final String mJid;
	private final boolean mAutoJoin;
	private final String mNickName;
	private final String mPassword;

	public static final Parcelable.Creator<MultiChatInfo> CREATOR = new Parcelable.Creator<MultiChatInfo>() {
		@Override
		public MultiChatInfo createFromParcel(Parcel in) {
			return new MultiChatInfo(in);
		}

		@Override
		public MultiChatInfo[] newArray(int size) {
			return new MultiChatInfo[size];
		}
	};

	public MultiChatInfo(BookmarkedConference bc) {
		mAutoJoin = bc.isAutoJoin();
		mJid = bc.getJid();
		mMUCName = bc.getName();
		mNickName = bc.getNickname();
		mPassword = bc.getPassword();
	}

	public MultiChatInfo(Parcel in) {
		mMUCName = in.readString();
		mJid = in.readString();
		mNickName = in.readString();
		mPassword = in.readString();
		final boolean[] b = new boolean[1];
		in.readBooleanArray(b);
		mAutoJoin = b[0];
	}

	public MultiChatInfo(String name, String jid, String nick, String pass,
			boolean autojoin) {
		mAutoJoin = autojoin;
		mJid = jid;
		mMUCName = name;
		mNickName = nick;
		mPassword = pass;
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	public String getJid() {
		return mJid;
	}

	public String getName() {
		return mMUCName;
	}

	public String getNickname() {
		return mNickName;
	}

	public String getPassword() {
		return mPassword;
	}

	public boolean isAutoJoin() {
		return mAutoJoin;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeString(mMUCName);
		dest.writeString(mJid);
		dest.writeString(mNickName);
		dest.writeString(mPassword);
		dest.writeBooleanArray(new boolean[] { mAutoJoin });
	}

}
