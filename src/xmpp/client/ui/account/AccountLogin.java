package xmpp.client.ui.account;

import xmpp.client.Constants;
import xmpp.client.R;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorActivity;
import android.accounts.AccountManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class AccountLogin extends AccountAuthenticatorActivity implements
		Constants {
	private static final String TAG = AccountLogin.class.getName();
	private EditText mUserLogin;
	private EditText mPassword;

	private boolean doLogin(String user, String pass) {
		Bundle result = null;
		final Account account = new Account(user, ACCOUNT_TYPE);
		final AccountManager am = AccountManager.get(this);
		final Account[] accounts = am.getAccountsByType(ACCOUNT_TYPE);
		if (accounts.length == 0) {
			if (am.addAccountExplicitly(account, pass, null)) {
				result = new Bundle();
				result.putString(AccountManager.KEY_ACCOUNT_NAME, account.name);
				result.putString(AccountManager.KEY_ACCOUNT_TYPE, account.type);
				setAccountAuthenticatorResult(result);
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login);
		final Button b = (Button) findViewById(R.id.login_button);
		b.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View arg0) {
				final String user = mUserLogin.getText().toString();
				final String pass = mPassword.getText().toString();
				doLogin(user, pass);
				finish();
			}
		});
		mUserLogin = (EditText) findViewById(R.id.login_text);
		mPassword = (EditText) findViewById(R.id.password_text);

		final AccountManager am = AccountManager.get(this);
		final Account[] accounts = am.getAccountsByType(ACCOUNT_TYPE);
		if (accounts.length > 0) {
			mUserLogin.setText(accounts[0].name);
			Log.i(TAG,
					"found existing Account: only One Account supported for now");
		} else {
			mUserLogin.setText("");
		}
	}
}
