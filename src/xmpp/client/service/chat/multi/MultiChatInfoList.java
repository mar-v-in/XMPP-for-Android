package xmpp.client.service.chat.multi;

import java.util.ArrayList;

import android.os.Parcel;
import android.os.Parcelable;

public class MultiChatInfoList extends ArrayList<MultiChatInfo> implements
		Parcelable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2526760037520428210L;
	public static final Parcelable.Creator<MultiChatInfoList> CREATOR = new Parcelable.Creator<MultiChatInfoList>() {
		@Override
		public MultiChatInfoList createFromParcel(Parcel in) {
			return new MultiChatInfoList(in);
		}

		@Override
		public MultiChatInfoList[] newArray(int size) {
			return new MultiChatInfoList[size];
		}
	};

	public MultiChatInfoList() {
		super();
	}

	public MultiChatInfoList(Parcel in) {
		final int n = in.readInt();
		for (int i = 0; i < n; i++) {
			add((MultiChatInfo) in.readParcelable(MultiChatInfo.class
					.getClassLoader()));
		}
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MultiChatInfo get(int index) {
		return super.get(index);
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeInt(size());
		for (final MultiChatInfo i : this) {
			dest.writeParcelable(i, flags);
		}
	}

}
