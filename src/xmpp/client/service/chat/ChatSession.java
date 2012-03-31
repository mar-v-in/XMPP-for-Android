package xmpp.client.service.chat;

import xmpp.client.service.chat.multi.MultiUserChatSession;
import xmpp.client.service.chat.single.SingleUserChatSession;
import android.os.Parcel;
import android.os.Parcelable;

public abstract class ChatSession implements Parcelable, ChatCodes {
	@SuppressWarnings("unused")
	private static final String TAG = ChatSession.class.getName();

	protected String mSessionID;
	protected ChatMessageList mMessageList;
	protected boolean mIsClosed;

	public static final Parcelable.Creator<ChatSession> CREATOR = new Parcelable.Creator<ChatSession>() {
		@Override
		public ChatSession createFromParcel(Parcel in) {
			final boolean[] bl = in.createBooleanArray();
			if (bl.length > 0 && bl[0]) {
				return new MultiUserChatSession(bl, in);
			} else {
				return new SingleUserChatSession(bl, in);
			}
		}

		@Override
		public ChatSession[] newArray(int size) {
			return new ChatSession[size];
		}
	};

	protected ChatSession() {
	}

	protected ChatSession(boolean[] bl, Parcel in) {
		mMessageList = (ChatMessageList) in
				.readParcelable(ChatMessageList.class.getClassLoader());
		mSessionID = in.readString();
		mIsClosed = bl[1];
	}

	protected ChatSession(String sessionID) {
		mSessionID = sessionID;
		mIsClosed = false;
		mMessageList = new ChatMessageList();
	}

	public void addMessage(ChatMessage message) {
		mMessageList.add(message);
	}

	public void close() {
		// TODO safe logs
		mIsClosed = true;
		mMessageList.clear();
		mMessageList = null;
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean equals(ChatSession o) {
		if (o != null) {
			if (o.getSessionID().equals(getSessionID())) {
				return true;
			}
		}
		return false;
	}

	public abstract String getIdentifier();

	public ChatMessageList getMessageList() {
		return mMessageList;
	}

	public String getSessionID() {
		return mSessionID;
	}

	public boolean isClosed() {
		if (mIsClosed) {
			return true;
		}
		if (mMessageList == null || mSessionID == null) {
			return true;
		}

		return false;
	}

	public boolean isMUC() {
		return (this instanceof MultiUserChatSession);
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeBooleanArray(new boolean[] { isMUC(), isClosed() });
		dest.writeParcelable(mMessageList, flags);
		dest.writeString(mSessionID);
	}
}
