package xmpp.client.service.chat.single;

import java.util.Date;

import org.jivesoftware.smack.util.StringUtils;

import xmpp.client.service.chat.MessageType;
import xmpp.client.service.chat.ParcelableMessage;
import android.os.Parcel;
import android.os.Parcelable;

public class SingleChatMessage extends ParcelableMessage {

	protected String ressource;

	public static final Parcelable.Creator<SingleChatMessage> CREATOR = new Parcelable.Creator<SingleChatMessage>() {
		@Override
		public SingleChatMessage createFromParcel(Parcel in) {
			return new SingleChatMessage(in);
		}

		@Override
		public SingleChatMessage[] newArray(int size) {
			return new SingleChatMessage[size];
		}
	};

	public SingleChatMessage(Date date, String text, String fullFrom) {
		this(date, text, StringUtils.parseBareAddress(fullFrom), StringUtils
				.parseResource(fullFrom));
	}

	public SingleChatMessage(Date date, String text, String from,
			String ressource) {
		super(date, text, from);
		this.ressource = ressource;
	}

	public SingleChatMessage(Parcel in) {
		super(in);
		ressource = in.readString();
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	public String getRessource() {
		return ressource;
	}

	@Override
	public MessageType getType() {
		return MessageType.SingleUserChat;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		super.writeToParcel(dest, flags);
		dest.writeString(ressource);
	}

}
