package xmpp.client.service.chat.multi;

import java.util.Date;

import org.jivesoftware.smack.util.StringUtils;

import xmpp.client.service.chat.MessageType;
import xmpp.client.service.chat.ParcelableMessage;
import android.os.Parcel;
import android.os.Parcelable;

public class MultiChatMessage extends ParcelableMessage {

	protected String chat;

	public static final Parcelable.Creator<MultiChatMessage> CREATOR = new Parcelable.Creator<MultiChatMessage>() {
		@Override
		public MultiChatMessage createFromParcel(Parcel in) {
			return new MultiChatMessage(in);
		}

		@Override
		public MultiChatMessage[] newArray(int size) {
			return new MultiChatMessage[size];
		}
	};

	public MultiChatMessage(Date date, String text, String fullFrom) {
		this(date, text, StringUtils.parseResource(fullFrom), StringUtils
				.parseBareAddress(fullFrom));
	}

	public MultiChatMessage(Date date, String text, String from, String chat) {
		super(date, text, from);
		this.chat = chat;
	}

	public MultiChatMessage(Parcel in) {
		super(in);
		chat = in.readString();
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	public String getChat() {
		return chat;
	}

	@Override
	public MessageType getType() {
		return MessageType.MultiUserChat;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		super.writeToParcel(dest, flags);
		dest.writeString(chat);
	}

}
