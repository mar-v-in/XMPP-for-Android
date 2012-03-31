package xmpp.client.service.chat;

import java.util.ArrayList;

import android.os.Parcel;
import android.os.Parcelable;

public class ChatMessageList extends ArrayList<ChatMessage> implements
		Parcelable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final Parcelable.Creator<ChatMessageList> CREATOR = new Parcelable.Creator<ChatMessageList>() {
		@Override
		public ChatMessageList createFromParcel(Parcel in) {
			return new ChatMessageList(in);
		}

		@Override
		public ChatMessageList[] newArray(int size) {
			return new ChatMessageList[size];
		}
	};

	public ChatMessageList() {
		super();
	}

	public ChatMessageList(Parcel in) {
		this();
		final int size = in.readInt();
		for (int i = 0; i < size; i++) {
			add((ChatMessage) in.readParcelable(ChatMessage.class
					.getClassLoader()));
		}
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeInt(size());
		for (int i = 0; i < size(); i++) {
			dest.writeParcelable(get(i), flags);
		}
	}
}
