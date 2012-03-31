package xmpp.client.service.chat.multi;

import java.util.ArrayList;

import android.os.Parcel;
import android.os.Parcelable;

public class MultiUserChatInfoList extends ArrayList<MultiUserChatInfo>
		implements Parcelable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2526760037520428210L;
	public static final Parcelable.Creator<MultiUserChatInfoList> CREATOR = new Parcelable.Creator<MultiUserChatInfoList>() {
		@Override
		public MultiUserChatInfoList createFromParcel(Parcel in) {
			return new MultiUserChatInfoList(in);
		}

		@Override
		public MultiUserChatInfoList[] newArray(int size) {
			return new MultiUserChatInfoList[size];
		}
	};

	public MultiUserChatInfoList() {
		super();
	}

	public MultiUserChatInfoList(Parcel in) {
		final int n = in.readInt();
		for (int i = 0; i < n; i++) {
			add((MultiUserChatInfo) in.readParcelable(MultiUserChatInfo.class
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
		for (final MultiUserChatInfo i : this) {
			dest.writeParcelable(i, flags);
		}
	}

}
