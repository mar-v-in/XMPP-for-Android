package xmpp.client.service.chat;

import java.util.ArrayList;

import android.os.Parcel;
import android.os.Parcelable;

public class MessageList extends ArrayList<ChatMessage> implements Parcelable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final Parcelable.Creator<MessageList> CREATOR = new Parcelable.Creator<MessageList>() {
		@Override
		public MessageList createFromParcel(Parcel in) {
			return new MessageList(in);
		}

		@Override
		public MessageList[] newArray(int size) {
			return new MessageList[size];
		}
	};

	public MessageList() {
		super();
	}

	public MessageList(Parcel in) {
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
			final ChatMessage m = get(i);
			if (m instanceof ParcelableMessage) {
				dest.writeParcelable((ParcelableMessage) get(i), flags);
			} else {
				dest.writeParcelable((ParcelableMessage) null, flags);
			}
		}
	}
}
