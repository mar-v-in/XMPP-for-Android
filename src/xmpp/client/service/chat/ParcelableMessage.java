package xmpp.client.service.chat;

import java.util.Date;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class ParcelableMessage extends BasicMessage implements
		Parcelable {

	public ParcelableMessage(Date date, String text, String from) {
		super(date, text, from);
	}

	public ParcelableMessage(Parcel in) {
		super(new Date(in.readLong()), in.readString(), in.readString());
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeLong(date.getTime());
		dest.writeString(text);
		dest.writeString(from);
	}

}
