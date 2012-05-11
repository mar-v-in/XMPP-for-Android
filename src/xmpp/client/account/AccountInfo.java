package xmpp.client.account;

import android.os.Parcel;
import android.os.Parcelable;

public class AccountInfo implements Parcelable {
	private final String mHostname;
	private final String mUsername;
	private final String mPassword;
	private final int mPort;
	private final int mSecurity;

	public static final int ACCOUNT_SECURITY_DISABLED = 0;
	public static final int ACCOUNT_SECURITY_ENABLED = 1;
	public static final int ACCOUNT_SECURITY_REQUIRED = 2;

	public static final Parcelable.Creator<AccountInfo> CREATOR = new Parcelable.Creator<AccountInfo>() {
		@Override
		public AccountInfo createFromParcel(Parcel in) {
			return new AccountInfo(in);
		}

		@Override
		public AccountInfo[] newArray(int size) {
			return new AccountInfo[size];
		}
	};

	public AccountInfo(Parcel in) {
		mHostname = in.readString();
		mUsername = in.readString();
		mPassword = in.readString();
		mPort = in.readInt();
		mSecurity = in.readInt();
	}

	public AccountInfo(String login, String password) {
		this(login.split("@")[0], password, login.split("@")[1]);
	}

	public AccountInfo(String username, String password, String hostname) {
		this(username, password, hostname, -1);
	}

	public AccountInfo(String username, String password, String hostname,
			int port) {
		this(username, password, hostname, port, 1);
	}

	public AccountInfo(String username, String password, String hostname,
			int port, int security) {
		mUsername = username;
		mPassword = password;
		mHostname = hostname;
		mPort = port;
		mSecurity = security;
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean equals(AccountInfo ai) {
		return (ai.getHostname().equals(getHostname())
				&& ai.getPassword().equals(getPassword())
				&& ai.getPort() == getPort()
				&& ai.getSecurity() == getSecurity() && ai.getUsername()
				.equals(getUsername()));

	}

	public String getFullUsername() {
		return getUsername() + "@" + getHostname();
	}

	public String getHostname() {
		return mHostname;
	}

	public String getPassword() {
		return mPassword;
	}

	public int getPort() {
		return mPort;
	}

	public int getSecurity() {
		return mSecurity;
	}

	public String getUsername() {
		return mUsername;
	}

	@Override
	public void writeToParcel(Parcel out, int flags) {
		out.writeString(mHostname);
		out.writeString(mUsername);
		out.writeString(mPassword);
		out.writeInt(mPort);
		out.writeInt(mSecurity);
	}

}
