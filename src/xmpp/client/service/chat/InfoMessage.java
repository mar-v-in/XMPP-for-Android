package xmpp.client.service.chat;

import java.util.Date;

import android.os.Parcel;
import android.os.Parcelable;

public class InfoMessage extends ParcelableMessage {

	public static final Parcelable.Creator<InfoMessage> CREATOR = new Parcelable.Creator<InfoMessage>() {
		@Override
		public InfoMessage createFromParcel(Parcel in) {
			return new InfoMessage(in);
		}

		@Override
		public InfoMessage[] newArray(int size) {
			return new InfoMessage[size];
		}
	};

	public InfoMessage(Date date, String text, String from) {
		super(date, text, from);
	}

	public InfoMessage(Parcel in) {
		super(in);
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MessageType getType() {
		return MessageType.Info;
	}

}
