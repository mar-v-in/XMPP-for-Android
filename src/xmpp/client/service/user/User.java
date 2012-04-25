package xmpp.client.service.user;

import java.util.ArrayList;

import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.util.Base64;
import org.jivesoftware.smack.util.StringUtils;

import xmpp.client.R;
import xmpp.client.service.user.group.GroupList;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.DynamicDrawableSpan;
import android.text.style.ImageSpan;

public class User implements Parcelable, Comparable<User> {
	@SuppressWarnings("unused")
	private static final String TAG = User.class.getName();

	public static final int TSTATE_DEFAULT = 0;
	public static final int TSTATE_IS_TRANSPORT = 1;
	public static final int TSTATE_IS_TRANSPORTED = 2;
	public static final int TSTATE_IS_MUC = 3;

	public static final int TRANSPORT_NONE = 0;
	public static final int TRANSPORT_UNKNOWN = -1;
	public static final int TRANSPORT_XMPP = 1;
	public static final int TRANSPORT_ICQ = 2;
	public static final int TRANSPORT_MSN = 3;
	public static final int TRANSPORT_AIM = 4;
	public static final int TRANSPORT_YAHOO = 5;
	public static final int TRANSPORT_IRC = 6;

	public static String intToARGB(int i) {
		return "#" + intToHex((i >> 24) & 0xFF) + intToHex((i >> 16) & 0xFF)
				+ intToHex((i >> 8) & 0xFF) + intToHex(i & 0xFF);
	}

	public static String intToHex(int i) {
		final String s = Integer.toHexString(i);
		if (s.length() == 1) {
			return "0" + s;
		}
		return s;
	}

	private String mUserName;
	private String mUserLogin;
	private String mRessource;
	private UserState mUserState;
	private GroupList mGroups;
	private int mTransportState;
	private int mTransportType;
	private String mUserContact;

	private ArrayList<String> mAdditionalInfo;

	private byte[] mAvatar;

	private int mUnreadMessages;

	public static final Parcelable.Creator<User> CREATOR = new Parcelable.Creator<User>() {
		@Override
		public User createFromParcel(Parcel in) {
			return new User(in);
		}

		@Override
		public User[] newArray(int size) {
			return new User[size];
		}
	};

	public User() {
	}

	public User(org.jivesoftware.smack.RosterEntry re, Presence p) {
		if (re == null || p == null) {
			throw new NullPointerException();
		}
		mUserName = re.getName();
		mUserLogin = StringUtils.parseBareAddress(re.getUser());
		mRessource = StringUtils.parseResource(p.getFrom());
		mTransportState = TSTATE_DEFAULT;
		mTransportType = TRANSPORT_NONE;
		if (!mUserLogin.contains("@")) {
			mTransportState = TSTATE_IS_TRANSPORT;
			mTransportType = TRANSPORT_UNKNOWN;
			if (mUserLogin.startsWith("icq")) {
				mTransportType = TRANSPORT_ICQ;
			} else if (mUserLogin.startsWith("msn")) {
				mTransportType = TRANSPORT_MSN;
			} else if (mUserLogin.startsWith("irc")) {
				mTransportType = TRANSPORT_IRC;
			} else if (mUserLogin.startsWith("aim")) {
				mTransportType = TRANSPORT_AIM;
			} else if (mUserLogin.startsWith("yahoo")) {
				mTransportType = TRANSPORT_YAHOO;
			} else if (mUserLogin.startsWith("xmpp")) {
				mTransportType = TRANSPORT_XMPP;
			}
		}
		mGroups = new GroupList(re.getGroups());
		mUserState = new UserState(p);
		mAdditionalInfo = new ArrayList<String>();
	}

	private User(Parcel in) {
		mUserLogin = in.readString();
		mRessource = in.readString();
		mUserName = in.readString();
		mUserState = in.readParcelable(UserState.class.getClassLoader());
		mGroups = in.readParcelable(GroupList.class.getClassLoader());
		mTransportState = in.readInt();
		mTransportType = in.readInt();
		mUnreadMessages = in.readInt();
		final String s = in.readString();
		if (s != null && !s.isEmpty()) {
			mAvatar = Base64.decode(s);
		}
		mAdditionalInfo = new ArrayList<String>();
		in.readStringList(mAdditionalInfo);
	}

	public User(String login, String name, ArrayList<String> info, Presence p) {
		mUserLogin = login;
		mRessource = name;
		mUserName = name;
		mUserState = new UserState(p);
		mGroups = new GroupList();
		mTransportState = TSTATE_IS_MUC;
		mTransportType = TRANSPORT_NONE;
		mAdditionalInfo = new ArrayList<String>();
		if (info != null) {
			mAdditionalInfo.addAll(info);
		}
	}

	@Override
	public int compareTo(User another) {
		if (isInvisible() && !another.isInvisible()) {
			return 1;
		} else if (!isInvisible() && another.isInvisible()) {
			return -1;
		}
		if (getUserState().getStatusPrecedence() < another.getUserState()
				.getStatusPrecedence()) {
			return 1;
		} else if (getUserState().getStatusPrecedence() > another
				.getUserState().getStatusPrecedence()) {
			return -1;
		} else {
			int i = getDisplayName().toLowerCase().compareTo(
					another.getDisplayName().toLowerCase());
			if (i == 0) {
				if (isTransported() && !another.isTransported()) {
					return 1;
				}
				if (!isTransported() && another.isTransported()) {
					return -1;
				}
				if (supportsAudio() && !another.supportsAudio()) {
					return 1;
				}
				if (!supportsAudio() && another.supportsAudio()) {
					return -1;
				}
				if (supportsVideo() && !another.supportsVideo()) {
					return 1;
				}
				if (!supportsVideo() && another.supportsVideo()) {
					return -1;
				}
				i = getUserLogin().toLowerCase().compareTo(
						another.getUserLogin().toLowerCase());
			}
			return i;
		}
	}

	@Override
	public int describeContents() {
		return 0;
	}

	public boolean equals(User o) {
		if (o == null) {
			return false;
		}
		if (o.getFullUserLogin().equalsIgnoreCase(getFullUserLogin())) {
			return true;
		}

		return false;
	}

	public String getAdditionalInformation(int i) {
		if (mAdditionalInfo.size() > i) {
			return mAdditionalInfo.get(i);
		} else {
			return null;
		}
	}

	public Bitmap getAvatar() {
		if (mAvatar != null) {
			return BitmapFactory.decodeByteArray(mAvatar, 0, mAvatar.length);
		}
		return null;
	}

	public Bitmap getBitmap(Context context, boolean showIcon) {
		Bitmap ava = null;
		if (mAvatar != null) {
			ava = getAvatar();
		} else {
			ava = BitmapFactory.decodeResource(context.getResources(),
					R.drawable.ic_contact_picture);
		}
		if (showIcon) {
			final Bitmap icon = BitmapFactory.decodeResource(context
					.getResources(), getUserState().getStatusIconResourceID());
			final Bitmap bitmap = Bitmap.createBitmap(ava.getWidth(),
					ava.getHeight(), Config.ARGB_8888);
			final Canvas c = new Canvas(bitmap);
			c.drawBitmap(ava, 0, 0, new Paint());
			c.drawBitmap(icon, 0, 0, new Paint());
			return bitmap;
		} else {
			return ava;
		}
	}

	public String getDisplayName() {
		if (mUserName == null || mUserName.isEmpty()) {
			return getNiceUserLogin();
		} else {
			return mUserName;
		}
	}

	public String getFullUserLogin() {
		return getUserLogin() + "/" + getRessource();
	}

	public GroupList getGroups() {
		return mGroups;
	}

	public String getNiceUserLogin() {
		if (!isTransported()) {
			return getUserLogin();
		} else {
			return mUserLogin.split("@")[0].replace("\\40", "@");
		}
	}

	public String getRessource() {
		return mRessource;
	}

	public String getStatusText() {
		return mUserState.getStatusText(getNiceUserLogin());
	}

	public Spannable getStatusTextSpannable(Context context) {
		final SpannableStringBuilder builder = new SpannableStringBuilder("  "
				+ getStatusText());
		final Bitmap b = BitmapFactory.decodeResource(context.getResources(),
				getUserState().getStatusIconResourceID());
		final Bitmap b2 = Bitmap.createBitmap(b.getWidth(), b.getHeight() + 1,
				Config.ARGB_8888);
		final Canvas c = new Canvas(b2);
		c.drawBitmap(b, 0, 0, new Paint());
		builder.setSpan(new ImageSpan(context, b2,
				DynamicDrawableSpan.ALIGN_BOTTOM), 0, 1,
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return builder;
	}

	public int getTransportState() {
		return mTransportState;
	}

	public int getTransportType() {
		return mTransportType;
	}

	public int getUnreadMessages() {
		return mUnreadMessages;
	}

	public String getUserContact() {
		return mUserContact;
	}

	public String getUserLogin() {
		return mUserLogin;
	}

	public String getUserName() {
		return mUserName;
	}

	public UserState getUserState() {
		return mUserState;
	}

	public boolean isInvisible() {
		if (isTransport() || isMUCUser()) {
			return true;
		}
		return false;
	}

	public boolean isMUCUser() {
		return (mTransportState == TSTATE_IS_MUC);
	}

	public boolean isTransport() {
		return (mTransportState == TSTATE_IS_TRANSPORT);
	}

	public boolean isTransported() {
		return (mTransportState == TSTATE_IS_TRANSPORTED);
	}

	public void setAvatar(byte[] avatar) {
		mAvatar = avatar;
	}

	public void setGroups(GroupList groups) {
		mGroups = groups;
	}

	public void setRessource(String res) {
		mRessource = res;
	}

	public void setUserContact(String userContact) {
		mUserContact = userContact;
	}

	public void setUserLogin(String userLogin) {
		mUserLogin = StringUtils.parseBareAddress(userLogin);
	}

	public void setUserName(String userName) {
		mUserName = userName;
	}

	public void setUserState(UserState userState) {
		mUserState = userState;
	}

	public boolean supportsAudio() {
		return false;
	}

	public boolean supportsVideo() {
		return false;
	}

	public boolean transportCheck(User transport) {
		if (getUserLogin().endsWith(transport.getUserLogin())) {
			mTransportState = TSTATE_IS_TRANSPORTED;
			mTransportType = transport.getTransportType();
			return true;
		}
		return false;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeString(mUserLogin);
		dest.writeString(mRessource);
		dest.writeString(mUserName);
		dest.writeParcelable(mUserState, flags);
		dest.writeParcelable(mGroups, flags);
		dest.writeInt(mTransportState);
		dest.writeInt(mTransportType);
		dest.writeInt(mUnreadMessages);
		if (mAvatar != null) {
			dest.writeString(Base64.encodeBytes(mAvatar));
		} else {
			dest.writeString("");
		}
		dest.writeStringList(mAdditionalInfo);
	}

}
