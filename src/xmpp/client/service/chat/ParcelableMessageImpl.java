package xmpp.client.service.chat;

import java.util.Date;

import android.os.Parcel;
import android.os.Parcelable;

public class ParcelableMessageImpl extends ParcelableMessage {

	public static final Parcelable.Creator<ParcelableMessageImpl> CREATOR = new Parcelable.Creator<ParcelableMessageImpl>() {
		@Override
		public ParcelableMessageImpl createFromParcel(Parcel in) {
			return new ParcelableMessageImpl(in);
		}

		@Override
		public ParcelableMessageImpl[] newArray(int size) {
			return new ParcelableMessageImpl[size];
		}
	};

	public ParcelableMessageImpl(Date date, String text, String from) {
		super(date, text, from);
	}

	public ParcelableMessageImpl(Parcel in) {
		super(in);
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MessageType getType() {
		return MessageType.Unknown;
	}

}
