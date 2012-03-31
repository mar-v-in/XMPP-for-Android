package xmpp.client.service.chat.multi;

import org.jivesoftware.smackx.bookmark.BookmarkedConference;

import android.os.Parcel;
import android.os.Parcelable;

public class MultiUserChatInfo implements Parcelable {
	
	private String mMUCName;
	private String mJid;
	private boolean mAutoJoin;
	private String mNickName;
	private String mPassword;
	
	public String getJid() {
		return mJid;
	}
	
	public String getName() {
		return mMUCName;
	}
	
	public boolean isAutoJoin() {
		return mAutoJoin;
	}
	
	public String getNickname() {
		return mNickName;
	}
	
	public String getPassword() {
		return mPassword;
	}
	
	public MultiUserChatInfo(Parcel in) {
		mMUCName = in.readString();
		mJid = in.readString();
		mNickName = in.readString();
		mPassword = in.readString();
		boolean[] b = new boolean[1];
		in.readBooleanArray(b);
		mAutoJoin = b[0];
	}
	
	public MultiUserChatInfo(String name, String jid, String nick, String pass, boolean autojoin) {
		mAutoJoin = autojoin;
		mJid = jid;
		mMUCName = name;
		mNickName = nick;
		mPassword = pass;
	}

	public MultiUserChatInfo(BookmarkedConference bc) {
		mAutoJoin = bc.isAutoJoin();
		mJid = bc.getJid();
		mMUCName = bc.getName();
		mNickName = bc.getNickname();
		mPassword = bc.getPassword();
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public static final Parcelable.Creator<MultiUserChatInfo> CREATOR = new Parcelable.Creator<MultiUserChatInfo>() {
		@Override
		public MultiUserChatInfo createFromParcel(Parcel in) {
			return new MultiUserChatInfo(in);
		}

		@Override
		public MultiUserChatInfo[] newArray(int size) {
			return new MultiUserChatInfo[size];
		}
	};

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeString(mMUCName);
		dest.writeString(mJid);
		dest.writeString(mNickName);
		dest.writeString(mPassword);
		dest.writeBooleanArray(new boolean[] {mAutoJoin});
	}


}
