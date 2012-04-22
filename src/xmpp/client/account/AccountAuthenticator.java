package xmpp.client.account;

import xmpp.client.ui.account.AccountLogin;
import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

public class AccountAuthenticator extends AbstractAccountAuthenticator {
	private static final String TAG = AccountAuthenticator.class.getName();

	Context mContext;

	public AccountAuthenticator(Context context) {
		super(context);
		mContext = context;
	}

	@Override
	public Bundle addAccount(AccountAuthenticatorResponse response,
			String accountType, String authTokenType, String[] requiredFeature,
			Bundle options) throws NetworkErrorException {
		final Bundle reply = new Bundle();

		final Intent i = new Intent(mContext, AccountLogin.class);
		i.putExtra(AccountManager.KEY_ACCOUNT_AUTHENTICATOR_RESPONSE, response);
		reply.putParcelable(AccountManager.KEY_INTENT, i);

		return reply;

	}

	@Override
	public Bundle confirmCredentials(AccountAuthenticatorResponse arg0,
			Account arg1, Bundle arg2) throws NetworkErrorException {
		Log.i(TAG, "confirmCredentials");
		return null;
	}

	@Override
	public Bundle editProperties(AccountAuthenticatorResponse arg0, String arg1) {
		Log.i(TAG, "editProperties");
		return null;
	}

	@Override
	public Bundle getAuthToken(AccountAuthenticatorResponse arg0, Account arg1,
			String arg2, Bundle arg3) throws NetworkErrorException {
		Log.i(TAG, "getAuthToken");
		return null;
	}

	@Override
	public String getAuthTokenLabel(String arg0) {
		Log.i(TAG, "getAuthTokenLabel");
		return null;
	}

	@Override
	public Bundle hasFeatures(AccountAuthenticatorResponse arg0, Account arg1,
			String[] arg2) throws NetworkErrorException {
		Log.i(TAG, "hasFeature");
		return null;
	}

	@Override
	public Bundle updateCredentials(AccountAuthenticatorResponse arg0,
			Account arg1, String arg2, Bundle arg3)
			throws NetworkErrorException {
		Log.i(TAG, "updateCredentials");
		return null;
	}

}
