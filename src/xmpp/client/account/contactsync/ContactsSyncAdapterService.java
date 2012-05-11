package xmpp.client.account.contactsync;

import java.util.ArrayList;
import java.util.HashMap;

import xmpp.client.Constants;
import xmpp.client.R;
import xmpp.client.service.handlers.SimpleMessageHandler;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;
import xmpp.client.service.user.User;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.service.user.contact.ContactList;
import android.accounts.Account;
import android.accounts.OperationCanceledException;
import android.app.Service;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.ContentProviderOperation;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.content.ServiceConnection;
import android.content.SyncResult;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.provider.BaseColumns;
import android.provider.ContactsContract;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import android.provider.ContactsContract.RawContacts.Entity;
import android.util.Log;

public class ContactsSyncAdapterService extends Service implements
		SimpleMessageHandlerClient, Constants {

	private static final String TAG = ContactsSyncAdapterService.class
			.getName();

	private static ContactsSyncAdapter mSyncAdapter = null;
	boolean mIsBound;
	Messenger mMessenger = new Messenger(new SimpleMessageHandler(this));;
	Messenger mService;
	Contact mContactMe;

	private final ServiceConnection mConnection = new ServiceConnection() {
		@Override
		public void onServiceConnected(ComponentName className, IBinder service) {
			mService = new Messenger(service);
			try {
				checkState();
			} catch (final Exception e) {
				Log.e(TAG, "ServiceConnection.onServiceConnected", e);
			}

		}

		@Override
		public void onServiceDisconnected(ComponentName className) {
			mService = null;
		}
	};

	public ContactsSyncAdapterService() {
		super();
	}

	void checkState() {
		if (mService != null) {
			final Message msg = Message.obtain(null, Constants.SIG_IS_ONLINE);
			msg.replyTo = mMessenger;
			try {
				mService.send(msg);
			} catch (final RemoteException e) {
				Log.e(TAG, "checkState", e);
			}
		}
	}

	private String combineDatabaseContact(Contact contact) {
		final User user0 = contact.getUsers().get(0);
		if (user0.getUserContact() == null) {
			return null;
		}
		final Long id0 = Long.parseLong(Uri.parse(user0.getUserContact())
				.getLastPathSegment());
		final ArrayList<ContentProviderOperation> ops = new ArrayList<ContentProviderOperation>();
		for (final User user : contact.getUsers()) {
			if (user.getUserContact() == null
					|| user.getUserContact().equals(user0.getUserContact())) {
				continue;
			}
			final Long id = Long.parseLong(Uri.parse(user.getUserContact())
					.getLastPathSegment());
			ops.add(ContentProviderOperation
					.newUpdate(
							ContactsContract.AggregationExceptions.CONTENT_URI)
					.withValue(
							Data.MIMETYPE,
							ContactsContract.AggregationExceptions.CONTENT_ITEM_TYPE)
					.withValue(
							ContactsContract.AggregationExceptions.RAW_CONTACT_ID1,
							id0)
					.withValue(
							ContactsContract.AggregationExceptions.RAW_CONTACT_ID2,
							id)
					.withValue(
							ContactsContract.AggregationExceptions.TYPE,
							ContactsContract.AggregationExceptions.TYPE_KEEP_TOGETHER)
					.build());
		}
		try {
			getContentResolver().applyBatch(ContactsContract.AUTHORITY, ops);
		} catch (final Exception e) {
			Log.e(TAG, "combineDatabaseContact", e);
		}
		return user0.getUserContact();
	}

	void doBindService() {
		bindService(new Intent(this, xmpp.client.service.Service.class),
				mConnection, Context.BIND_AUTO_CREATE);
		mIsBound = true;
	}

	private synchronized void doNotify() {
		notify();
	}

	public void doSync(ContactList p) {
		final HashMap<String, Long> localContacts = new HashMap<String, Long>();
		final Uri rawContactUri = RawContacts.CONTENT_URI
				.buildUpon()
				.appendQueryParameter(RawContacts.ACCOUNT_NAME,
						mContactMe.getUserLogin())
				.appendQueryParameter(RawContacts.ACCOUNT_TYPE, ACCOUNT_TYPE)
				.build();
		final Cursor c1 = getContentResolver().query(rawContactUri,
				new String[] { BaseColumns._ID, RawContacts.SOURCE_ID }, null,
				null, null);
		while (c1.moveToNext()) {
			localContacts.put(c1.getString(1), c1.getLong(0));
		}
		c1.close();
		final ArrayList<ContentProviderOperation> ops = new ArrayList<ContentProviderOperation>();
		for (final Contact contact : p) {
			for (final User user : contact.getUsers()) {
				if (user.isInvisible()) {
					break;
				}
				if (!localContacts.containsKey(user.getUserLogin())) {
					final int back = insertDatabaseUser(ops, user);
				} else {
					updateDatabaseUser(ops,
							localContacts.get(user.getUserLogin()), user);
				}
			}
		}
		try {
			getContentResolver().applyBatch(ContactsContract.AUTHORITY, ops);
		} catch (final RemoteException e) {
			Log.e(TAG, "sync", e);
		} catch (final OperationApplicationException e) {
			Log.e(TAG, "sync", e);
		}
	}

	void doUnbindService() {
		if (mIsBound) {
			unbindService(mConnection);
			mIsBound = false;
		}
	}

	private synchronized void doWait() throws InterruptedException {
		wait();
	}

	int getProtocol(User user) {
		if (user.isTransported()) {
			switch (user.getTransportType()) {
			case User.TRANSPORT_ICQ:
				return ContactsContract.CommonDataKinds.Im.PROTOCOL_ICQ;
			case User.TRANSPORT_AIM:
				return ContactsContract.CommonDataKinds.Im.PROTOCOL_AIM;
			case User.TRANSPORT_MSN:
				return ContactsContract.CommonDataKinds.Im.PROTOCOL_MSN;
			}
		}
		return ContactsContract.CommonDataKinds.Im.PROTOCOL_JABBER;
	}

	private ContactsSyncAdapter getSyncAdapter() {
		if (mSyncAdapter == null) {
			mSyncAdapter = new ContactsSyncAdapter(this);
		}
		return mSyncAdapter;
	}

	@Override
	public void handleMessage(Message msg) {
		try {
			final Bundle b = msg.getData();
			switch (msg.what) {
			case Constants.SIG_IS_ONLINE:
				b.setClassLoader(Contact.class.getClassLoader());
				mContactMe = b.getParcelable("contact");

				final Message msg2 = Message.obtain(null,
						Constants.SIG_ROSTER_GET_CONTACTS);
				msg2.replyTo = mMessenger;
				mService.send(msg2);
				break;
			case Constants.SIG_ROSTER_GET_CONTACTS:
				b.setClassLoader(ContactList.class.getClassLoader());
				if (b.containsKey("contacts")) {
					final Parcelable p = b.getParcelable("contacts");
					if (p instanceof ContactList) {
						doSync((ContactList) p);
					}
				}
				doNotify();
				break;
			case Constants.SIG_ROSTER_GET_CONTACTS_ERROR:
			case Constants.SIG_IS_NOT_ONLINE:
				doNotify();
				break;
			}
		} catch (final Exception e) {
			Log.e(TAG, "handleMessage", e);
		}

	}

	private int insertDatabaseUser(ArrayList<ContentProviderOperation> ops,
			User user) {
		final int rawContactInsertIndex = ops.size();
		ops.add(ContentProviderOperation.newInsert(RawContacts.CONTENT_URI)
				.withValue(RawContacts.ACCOUNT_TYPE, ACCOUNT_TYPE)
				.withValue(RawContacts.ACCOUNT_NAME, mContactMe.getUserLogin())
				.withValue(RawContacts.SOURCE_ID, user.getUserLogin()).build());

		ops.add(ContentProviderOperation
				.newInsert(Data.CONTENT_URI)
				.withValueBackReference(Data.RAW_CONTACT_ID,
						rawContactInsertIndex)
				.withValue(
						Data.MIMETYPE,
						ContactsContract.CommonDataKinds.StructuredName.CONTENT_ITEM_TYPE)
				.withValue(
						ContactsContract.CommonDataKinds.StructuredName.DISPLAY_NAME,
						user.getDisplayName()).build());

		ops.add(ContentProviderOperation
				.newInsert(Data.CONTENT_URI)
				.withValueBackReference(Data.RAW_CONTACT_ID,
						rawContactInsertIndex)
				.withValue(Data.MIMETYPE,
						ContactsContract.CommonDataKinds.Im.CONTENT_ITEM_TYPE)
				.withValue(ContactsContract.CommonDataKinds.Im.PROTOCOL,
						getProtocol(user))
				.withValue(ContactsContract.CommonDataKinds.Im.DATA,
						user.getNiceUserLogin()).build());

		ops.add(ContentProviderOperation
				.newInsert(Data.CONTENT_URI)
				.withValueBackReference(Data.RAW_CONTACT_ID,
						rawContactInsertIndex)
				.withValue(Data.MIMETYPE, ACCOUNT_MIME)
				.withValue(Data.DATA1, user.getUserLogin())
				.withValue(Data.DATA2, "Chat " + user.getUserLogin()).build());

		return rawContactInsertIndex;
	}

	@Override
	public boolean isReady() {
		return true;
	}

	@Override
	public IBinder onBind(Intent intent) {
		IBinder ret = null;
		ret = getSyncAdapter().getSyncAdapterBinder();
		return ret;
	}

	void performSync(Account account, Bundle extras, String authority,
			ContentProviderClient provider, SyncResult syncResult)
			throws OperationCanceledException {
		doBindService();
		try {
			doWait();
		} catch (final InterruptedException e) {
			Log.i(TAG, "performSync", e);
		}
		doUnbindService();
	}

	void updateContact(Contact contact) {
		final Message msg = Message.obtain(null, Constants.SIG_UPDATE_CONTACT);
		final Bundle b = new Bundle();
		b.putParcelable("contact", contact);
		msg.setData(b);
		msg.replyTo = mMessenger;
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.e(TAG, "updateContact", e);
		}
	}

	private void updateDatabaseUser(ArrayList<ContentProviderOperation> ops,
			long rawContactID, User user) {
		final Uri rawContactUri = ContentUris.withAppendedId(
				RawContacts.CONTENT_URI, rawContactID);
		final Uri entityUri = Uri.withAppendedPath(rawContactUri,
				Entity.CONTENT_DIRECTORY);
		final Cursor c = getContentResolver().query(
				entityUri,
				new String[] { RawContacts.SOURCE_ID, Entity.DATA_ID,
						Entity.MIMETYPE, Entity.DATA1 }, null, null, null);
		while (c.moveToNext()) {
			if (!c.isNull(1) && c.getString(2).equals(ACCOUNT_MIME)) {
				ops.add(ContentProviderOperation
						.newInsert(ContactsContract.StatusUpdates.CONTENT_URI)
						.withValue(ContactsContract.StatusUpdates.DATA_ID,
								c.getLong(1))
						.withValue(ContactsContract.StatusUpdates.IM_HANDLE,
								user.getUserLogin())
						.withValue(ContactsContract.StatusUpdates.IM_ACCOUNT,
								mContactMe.getUserLogin())
						.withValue(
								ContactsContract.StatusUpdates.PROTOCOL,
								ContactsContract.CommonDataKinds.Im.PROTOCOL_JABBER)
						.withValue(ContactsContract.StatusUpdates.PRESENCE,
								user.getUserState().getStatus())
						.withValue(ContactsContract.StatusUpdates.STATUS,
								user.getUserState().getStatusText(this))
						.withValue(
								ContactsContract.StatusUpdates.STATUS_RES_PACKAGE,
								"xmpp.client")
						.withValue(ContactsContract.StatusUpdates.STATUS_ICON,
								R.drawable.ic_launcher)
						.withValue(ContactsContract.StatusUpdates.STATUS_LABEL,
								R.string.app_name).build());
			}
		}
		c.close();
	}

	void updateUser(User user) {
		final Message msg = Message.obtain(null, Constants.SIG_UPDATE_USER);
		final Bundle b = new Bundle();
		b.putParcelable("user", user);
		msg.setData(b);
		msg.replyTo = mMessenger;
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.e(TAG, "updateUser", e);
		}
	}

}
