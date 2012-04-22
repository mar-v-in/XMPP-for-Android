package xmpp.client.account.contactsync;

import android.accounts.Account;
import android.accounts.OperationCanceledException;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.SyncResult;
import android.os.Bundle;
import android.util.Log;

public class ContactsSyncAdapter extends AbstractThreadedSyncAdapter {
	private static final String TAG = ContactsSyncAdapter.class.getName();
	private final ContactsSyncAdapterService mContactsSyncAdapterService;

	public ContactsSyncAdapter(
			ContactsSyncAdapterService contactsSyncAdapterService) {
		super(contactsSyncAdapterService, true);
		mContactsSyncAdapterService = contactsSyncAdapterService;
	}

	@Override
	public void onPerformSync(Account account, Bundle extras, String authority,
			ContentProviderClient provider, SyncResult syncResult) {
		try {
			mContactsSyncAdapterService.performSync(account, extras, authority,
					provider, syncResult);
		} catch (final OperationCanceledException e) {
			Log.i(TAG, "onPerformSync", e);
		}
	}

}
