package xmpp.client.service.user;

import java.util.ArrayList;
import java.util.Collections;

import android.os.Parcel;
import android.os.Parcelable;

public class UserList extends ArrayList<User> implements Parcelable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final Parcelable.Creator<UserList> CREATOR = new Parcelable.Creator<UserList>() {
		@Override
		public UserList createFromParcel(Parcel in) {
			return new UserList(in);
		}

		@Override
		public UserList[] newArray(int size) {
			return new UserList[size];
		}
	};

	public UserList() {
		super();
	}

	private UserList(Parcel in) {
		super();
		final int size = in.readInt();
		for (int i = 0; i < size; i++) {
			add((User) in.readParcelable(User.class.getClassLoader()));
		}
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	private synchronized UserList getGroup(CharSequence activeGroup) {
		final UserList rel = new UserList();
		for (final User re : this) {
			if (re.getGroups().contains(activeGroup)) {
				rel.add(re);
			}
		}
		return rel;
	}

	public synchronized User getInGroup(CharSequence activeGroup, int position) {
		return getGroup(activeGroup).get(position);
	}

	public synchronized User getOnline(int i) {
		int c = 0;
		for (int j = 0; j < size(); j++) {
			if (get(j).getUserState().isOnline()) {
				if (c == i) {
					return get(j);
				} else {
					c++;
				}
			}
		}
		return null;
	}

	public synchronized int groupSize(CharSequence activeGroup) {
		return getGroup(activeGroup).sizeVisible();
	}

	public synchronized int sizeOffline() {
		return sizeVisible() - sizeOnline();
	}

	public synchronized int sizeOnline() {
		int num = 0;
		for (final User user : this) {
			if (user.getUserState().isOnline() && !user.isInvisible()) {
				num++;
			}
		}
		return num;
	}

	public synchronized int sizeVisible() {
		int num = 0;
		for (final User user : this) {
			if (!user.isInvisible()) {
				num++;
			}
		}
		return num;
	}

	public synchronized void sort() {
		Collections.sort(this);
	}

	@Override
	public synchronized void writeToParcel(Parcel dest, int flags) {
		dest.writeInt(size());
		for (int i = 0; i < size(); i++) {
			dest.writeParcelable(get(i), flags);
		}
	}
}
