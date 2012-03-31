package xmpp.client.service.account.contactsync;

import java.util.ArrayList;

import xmpp.client.R;
import xmpp.client.service.Signals;
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
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import android.provider.ContactsContract.RawContacts.Entity;
import android.util.Log;

public class ContactsSyncAdapterService extends Service implements
		SimpleMessageHandlerClient {

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
			final Message msg = Message.obtain(null, Signals.SIG_IS_READY);
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
		for (final Contact contact : p) {
			boolean updateOnly = true;
			for (final User user : contact.getUsers()) {
				if (user.isInvisible()) {
					break;
				}
				final boolean insert = manageDatabaseUser(user);
				if (insert) {
					updateOnly = false;
				}
				updateUser(user);
			}
			if (!updateOnly) { // TODO
				contact.setUserContact(combineDatabaseContact(contact));
				updateContact(contact);
			}
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
			case Signals.SIG_IS_READY:
				b.setClassLoader(Contact.class.getClassLoader());
				mContactMe = b.getParcelable("contact");

				final Message msg2 = Message.obtain(null,
						Signals.SIG_ROSTER_GET_CONTACTS);
				msg2.replyTo = mMessenger;
				mService.send(msg2);
				break;
			case Signals.SIG_ROSTER_GET_CONTACTS:
				b.setClassLoader(ContactList.class.getClassLoader());
				if (b.containsKey("contacts")) {
					final Parcelable p = b.getParcelable("contacts");
					if (p instanceof ContactList) {
						doSync((ContactList) p);
					}
				}
				doNotify();
				break;
			case Signals.SIG_ROSTER_GET_CONTACTS_ERROR:
			case Signals.SIG_IS_NOT_READY:
				doNotify();
				break;
			}
		} catch (final Exception e) {
			Log.e(TAG, "handleMessage", e);
		}

	}

	private void insertDatabaseUser(User user) {
		final ArrayList<ContentProviderOperation> ops = new ArrayList<ContentProviderOperation>();
		final int rawContactInsertIndex = ops.size();
		ops.add(ContentProviderOperation
				.newInsert(RawContacts.CONTENT_URI)
				.withValue(RawContacts.ACCOUNT_TYPE,
						getText(R.string.account_type))
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
				.withValue(Data.MIMETYPE, getText(R.string.contact_mime))
				.withValue(ContactsContract.Data.DATA1, user.getUserLogin())
				.withValue(ContactsContract.Data.DATA2, "d2")
				.withValue(ContactsContract.Data.DATA3, "d3").build());

		try {
			getContentResolver().applyBatch(ContactsContract.AUTHORITY, ops);
		} catch (final Exception e) {
			Log.e(TAG, "insertUser", e);
		}
	}

	@Override
	public boolean isReady() {
		return true;
	}

	boolean manageDatabaseUser(User user) {
		final Uri rawContactUri = RawContacts.CONTENT_URI
				.buildUpon()
				.appendQueryParameter(RawContacts.ACCOUNT_NAME,
						mContactMe.getUserLogin())
				.appendQueryParameter(RawContacts.ACCOUNT_TYPE,
						(String) getText(R.string.account_type))
				.appendQueryParameter(RawContacts.SOURCE_ID,
						user.getUserLogin()).build();
		final Cursor c = getContentResolver().query(
				rawContactUri,
				new String[] { BaseColumns._ID, RawContacts.SOURCE_ID,
						RawContacts.CONTACT_ID }, null, null, null);
		if (c.getCount() == 0) {
			insertDatabaseUser(user);
		} else {
			while (c.moveToNext()) {
				if (c.getString(1) != null
						&& c.getString(1).equalsIgnoreCase(user.getUserLogin())) {
					prepareDatabaseUpdate(user, c.getLong(0));
					user.setUserContact(ContentUris.withAppendedId(
							Contacts.CONTENT_URI, c.getLong(0)).toString());
					c.close();
					return false;
				}
			}
			insertDatabaseUser(user);
		}
		c.close();
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

	private void prepareDatabaseUpdate(User user, long rawContactID) {
		final Uri rawContactUri = ContentUris.withAppendedId(
				RawContacts.CONTENT_URI, rawContactID);
		final Uri entityUri = Uri.withAppendedPath(rawContactUri,
				Entity.CONTENT_DIRECTORY);
		final Cursor c = getContentResolver().query(
				entityUri,
				new String[] { Entity.DATA_ID },
				Entity.MIMETYPE + " = \"" + getText(R.string.contact_mime)
						+ "\"", null, null);
		while (c.moveToNext()) {
			if (!c.isNull(0)) {
				updateDatabaseUser(rawContactID, c.getLong(0), user);
				break;
			}
		}
		c.close();
	}

	void updateContact(Contact contact) {
		final Message msg = Message.obtain(null, Signals.SIG_UPDATE_CONTACT);
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

	private void updateDatabaseUser(long rawContactID, long dataID, User user) {
		final ArrayList<ContentProviderOperation> ops = new ArrayList<ContentProviderOperation>();
		ops.add(ContentProviderOperation
				.newInsert(ContactsContract.StatusUpdates.CONTENT_URI)
				.withValue(ContactsContract.StatusUpdates.DATA_ID, dataID)
				.withValue(ContactsContract.StatusUpdates.IM_HANDLE,
						user.getUserLogin())
				.withValue(ContactsContract.StatusUpdates.IM_ACCOUNT,
						mContactMe.getUserLogin())
				.withValue(ContactsContract.StatusUpdates.PROTOCOL,
						ContactsContract.CommonDataKinds.Im.PROTOCOL_JABBER)
				.withValue(ContactsContract.StatusUpdates.PRESENCE,
						user.getUserState().getStatus())
				.withValue(ContactsContract.StatusUpdates.STATUS,
						user.getUserState().getStatusText(this))
				.withValue(ContactsContract.StatusUpdates.STATUS_RES_PACKAGE,
						"xmpp.client")
				.withValue(ContactsContract.StatusUpdates.STATUS_ICON,
						R.drawable.ic_launcher)
				.withValue(ContactsContract.StatusUpdates.STATUS_LABEL,
						R.string.app_name).build());

		try {
			getContentResolver().applyBatch(ContactsContract.AUTHORITY, ops);
		} catch (final Exception e) {
			Log.e(TAG, "updateDatabaseContact", e);
		}
	}

	void updateUser(User user) {
		final Message msg = Message.obtain(null, Signals.SIG_UPDATE_USER);
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
