package xmpp.client.account;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

public class AccountAuthenticatorService extends Service {
	private static final String TAG = AccountAuthenticatorService.class
			.getName();

	AccountAuthenticator mAccountAuthenticator;

	private AccountAuthenticator getAuthenticator() {
		if (mAccountAuthenticator == null) {
			mAccountAuthenticator = new AccountAuthenticator(this);
			Log.i(TAG, "created AccountAuthenticator");
		}
		return mAccountAuthenticator;
	}

	@Override
	public IBinder onBind(Intent intent) {
		IBinder ret = null;
		if (intent.getAction().equals(
				android.accounts.AccountManager.ACTION_AUTHENTICATOR_INTENT)) {
			ret = getAuthenticator().getIBinder();
		}
		return ret;
	}

}
