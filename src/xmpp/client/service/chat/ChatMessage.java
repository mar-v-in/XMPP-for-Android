package xmpp.client.service.chat;

import java.util.Date;

import xmpp.client.service.user.User;
import android.os.Parcel;
import android.os.Parcelable;

public class ChatMessage implements Parcelable {

	Date mDate;
	String mMessage;
	User mUser;
	boolean mIsMUC;

	public static final Parcelable.Creator<ChatMessage> CREATOR = new Parcelable.Creator<ChatMessage>() {
		@Override
		public ChatMessage createFromParcel(Parcel in) {
			return new ChatMessage(in);
		}

		@Override
		public ChatMessage[] newArray(int size) {
			return new ChatMessage[size];
		}
	};

	public ChatMessage(Date d, User by, String msg, boolean isMUC) {
		mDate = d;
		mUser = by;
		mMessage = msg;
		mIsMUC = isMUC;
	}

	public ChatMessage(Parcel in) {
		mDate = new Date(in.readLong());
		mUser = in.readParcelable(User.class.getClassLoader());
		mMessage = in.readString();
		final boolean[] bl = new boolean[1];
		in.readBooleanArray(bl);
		mIsMUC = bl[0];
	}

	@Override
	public int describeContents() {
		return 0;
	}

	public Date getDate() {
		return mDate;
	}

	public String getMessage() {
		return mMessage;
	}

	public User getUser() {
		return mUser;
	}

	public boolean isMUC() {
		return mIsMUC;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeLong(mDate.getTime());
		dest.writeParcelable(mUser, flags);
		dest.writeString(mMessage);
		dest.writeBooleanArray(new boolean[] { mIsMUC });
	}

}
