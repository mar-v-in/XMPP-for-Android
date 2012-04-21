package xmpp.client.ui.activities;

import xmpp.client.R;
import xmpp.client.service.Service;
import xmpp.client.service.Signals;
import xmpp.client.service.account.AccountInfo;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.chat.multi.MultiUserChatInfo;
import xmpp.client.service.chat.multi.MultiUserChatSession;
import xmpp.client.service.handlers.SimpleMessageHandler;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserState;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.ui.account.AccountLogin;
import xmpp.client.ui.adapter.ChatAdapter;
import xmpp.client.ui.adapter.ChatUserListAdapter;
import xmpp.client.ui.adapter.GroupAdapter;
import xmpp.client.ui.adapter.RosterAdapter;
import xmpp.client.ui.adapter.StatusAdapter;
import xmpp.client.ui.dialogs.AddConferenceDialog;
import xmpp.client.ui.dialogs.AddUserDialog;
import xmpp.client.ui.dialogs.StatusSelectorDialog;
import xmpp.client.ui.provider.ChatProvider;
import xmpp.client.ui.provider.ChatProviderListener;
import xmpp.client.ui.provider.ConferenceProvider;
import xmpp.client.ui.provider.ContactProvider;
import xmpp.client.ui.provider.ContactProviderListener;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.ActionBar;
import android.app.ActionBar.OnNavigationListener;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ImageSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.EditorInfo;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;

import com.devsmart.android.ui.HorizontalListView;

public class AppActivity extends Activity implements
		SimpleMessageHandlerClient, ContactProviderListener,
		ChatProviderListener {
	private static final String URI_HOST_CHANGE_STATUS = "change_status";
	private static final String URI_HOST_ADD_CONFERENCE = "add_conference";
	private static final String URI_PATH_DIVIDER = "/";
	private static final String URI_SCHEME_HOST_DIVIDER = "://";
	private static final String URI_HOST_ADD_CONTACT = "add_contact";
	private static final String URI_HOST_JABBER_MUC = "jabbermuc";
	private static final String URI_HOST_JABBER = "jabber";
	private static final String URI_SCHEME_XMPP_FOR_ANDROID = "xmpp-for-android";
	private static final String URI_SCHEME_IMTO = "imto";
	private static final String TAG = AppActivity.class.getName();
	private static final int VIEW_ROSTER = 0;
	private static final int VIEW_CHAT = 1;
	private static final int VIEW_STATUS = 2;
	private static final int VIEW_ADD_CONTACT = 3;
	private static final int VIEW_ADD_CONFERENCE = 4;
	private static final int VIEW_ACCOUNTS = 5;
	private static final int VIEW_SETTINGS = 6;
	private static final int VIEW_ACCOUNT_SETTINGS = 7;

	private int mCurrentView = VIEW_ACCOUNTS;
	private String mUID;
	private String mMUC;

	boolean doCheck = true;

	OnItemClickListener itemClickListener = new OnItemClickListener() {

		@Override
		public void onItemClick(AdapterView<?> arg0, View view, int item,
				long id) {
			if (item == 0) {
				goStatusChange();
			} else if (mCurrentNavigation == 3) {
				goConference(((MultiUserChatInfo) mRosterAdapter.getItem(item))
						.getJid());
			} else {
				goChat(((Contact) mRosterAdapter.getItem(item)).getUserLogin());
			}
		}
	};
	private ActionBar mActionBar;
	private final ServiceConnection mConnection = new ServiceConnection() {
		@Override
		public void onServiceConnected(ComponentName className, IBinder service) {
			mService = new Messenger(service);
			handleIntent(getIntent());
			try {
				final Message msg = Message.obtain(null,
						Signals.SIG_REGISTER_CLIENT);
				msg.replyTo = mMessenger;
				mService.send(msg);

				if (doCheck) {
					checkState();
				}

			} catch (final RemoteException e) {
				Log.i(TAG, "ServiceConnection.onServiceConnected", e);
			}

		}

		@Override
		public void onServiceDisconnected(ComponentName className) {
			mService = null;
		}
	};

	int mCurrentNavigation = 2;

	GroupAdapter mGroupAdapter;

	boolean mIsBound;

	ListView mListView;

	private SimpleMessageHandler mMessageHandler;
	private Messenger mMessenger;
	private final OnNavigationListener mNavigationListener = new OnNavigationListener() {

		@Override
		public boolean onNavigationItemSelected(int itemPosition, long itemId) {
			mCurrentNavigation = itemPosition;
			mRosterAdapter.setActiveGroup((String) mGroupAdapter
					.getItem(mCurrentNavigation));
			onCreateOptionsMenu(mMenu);
			return true;
		}
	};

	private RosterAdapter mRosterAdapter;

	private ContactProvider mContactProvider;

	private Messenger mService = null;

	private ListView mMessageHolder;
	private HorizontalListView mUserHolder;
	private EditText mSendText;
	private User mUser;
	private Menu mMenu;
	private ChatProvider mChatProvider;
	private ChatAdapter mChatAdapter;
	private ChatUserListAdapter mChatUserListAdapter;
	private final OnClickListener sendClickListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			doSend();
		}
	};

	private ChatSession mSession;
	private ConferenceProvider mConferenceProvider;
	private int mMenuView = -1;

	public void afterInit() {
		mGroupAdapter = new GroupAdapter(this, mContactProvider);
		if (mCurrentView == VIEW_ROSTER) {
			mActionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_LIST);
			mActionBar.setDisplayShowTitleEnabled(false);
			mActionBar.setDisplayShowCustomEnabled(true);
			mActionBar.setListNavigationCallbacks(mGroupAdapter,
					mNavigationListener);
			mActionBar.setSelectedNavigationItem(mCurrentNavigation);
			mRosterAdapter = new RosterAdapter(mListView.getContext(),
					mContactProvider, mConferenceProvider);
			mListView.setAdapter(mRosterAdapter);
			mRosterAdapter.notifyDataSetChanged();
		} else if (mCurrentView == VIEW_CHAT) {
			if (mUID != null) {
				final Message msg = Message.obtain(null,
						Signals.SIG_OPEN_CHATSESSION);
				msg.replyTo = mMessenger;
				final Bundle b = new Bundle();
				b.putString("uid", mUID);
				msg.setData(b);
				try {
					mService.send(msg);
				} catch (final RemoteException e) {
					Log.i(TAG, "handleIntent", e);
				}
				setTitle(mUID);
			} else if (mMUC != null) {
				final Message msg = Message.obtain(null,
						Signals.SIG_OPEN_MUC_CHATSESSION);
				msg.replyTo = mMessenger;
				final Bundle b = new Bundle();
				b.putString("muc", mMUC);
				msg.setData(b);
				try {
					mService.send(msg);
				} catch (final RemoteException e) {
					Log.i(TAG, "handleIntent", e);
				}
				setTitle(mMUC);
			}
		}
	}

	@Override
	public void chatProviderChanged(ChatProvider chatProvider) {
		if (mChatAdapter != null) {
			mChatAdapter.notifyDataSetChanged();
		}
	}

	@Override
	public void chatProviderReady(ChatProvider chatProvider) {

	}

	void checkState() {
		if (mService != null) {
			final Message msg = Message.obtain(null, Signals.SIG_IS_ONLINE);
			msg.replyTo = mMessenger;
			try {
				mService.send(msg);
			} catch (final RemoteException e) {
				Log.i(TAG, "checkState", e);
			}
			doCheck = false;
		} else {
			doCheck = true;
		}
	}

	@Override
	public void contactProviderChanged(ContactProvider contactProvider) {
		if (contactProvider.isReady()) {

		}
		if (mRosterAdapter != null) {
			mRosterAdapter.notifyDataSetChanged();
		}
		if (mGroupAdapter != null) {
			mGroupAdapter.notifyDataSetChanged();
		}
	}

	@Override
	public void contactProviderReady(ContactProvider contactProvider) {
		afterInit();
		/*
		 * updateStatus(new UserState(UserState.STATUS_AVAILABLE, "via " +
		 * getText(R.string.app_name)));
		 */
	}

	void doBindService() {
		startService(new Intent(AppActivity.this, Service.class));
		bindService(new Intent(AppActivity.this, Service.class), mConnection,
				Context.BIND_ABOVE_CLIENT);
		mIsBound = true;
	}

	public void doLogin() {
		final AccountManager am = AccountManager.get(this);
		final Account[] accounts = am
				.getAccountsByType((String) getText(R.string.account_type));
		if (accounts.length > 0) {
			final Account account = accounts[0];
			final String login = account.name;
			mContactProvider.getMeContact().getUser().setUserLogin(login);
			updateStatus(UserState.STATUS_INITIALIZING);
			final String pass = am.getPassword(account);
			final Message msg = Message.obtain(null, Signals.SIG_INIT);
			final Bundle b = new Bundle();
			b.putParcelable("AccountInfo", new AccountInfo(login, pass));
			msg.setData(b);
			msg.replyTo = mMessenger;
			try {
				mService.send(msg);
			} catch (final RemoteException e) {
				Log.i(TAG, "doLogin", e);
			}
		} else {
			goLogin();
		}
	}

	private void doSend() {
		if (mSession != null && mSendText.getText().length() > 0) {
			final Message msg = Message.obtain(null, Signals.SIG_SEND_MESSAGE);
			msg.replyTo = mMessenger;
			final Bundle b = new Bundle();
			b.putParcelable("session", mSession);
			b.putString("text", mSendText.getText().toString());
			msg.setData(b);
			try {
				mService.send(msg);
			} catch (final RemoteException e) {
				Log.e(TAG, "doSend", e);
			}
		}
		mSendText.setText("");
	}

	void doUnbindService() {
		if (mIsBound) {
			if (mService != null) {
				try {
					final Message msg = Message.obtain(null,
							Signals.SIG_UNREGISTER_CLIENT);
					msg.replyTo = mMessenger;
					mService.send(msg);

				} catch (final RemoteException e) {
					Log.i(TAG, "doUnbindService", e);
				}
			}

			unbindService(mConnection);
			mIsBound = false;
		}
	}

	private void goAddConference() {
		final Intent i = new Intent(AppActivity.this, AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_XMPP_FOR_ANDROID
				+ URI_SCHEME_HOST_DIVIDER + URI_HOST_ADD_CONFERENCE));
		handleIntent(i);
	}

	private void goAddUser() {
		final Intent i = new Intent(AppActivity.this, AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_XMPP_FOR_ANDROID
				+ URI_SCHEME_HOST_DIVIDER + URI_HOST_ADD_CONTACT));
		handleIntent(i);
	}

	private void goChat(String userLogin) {
		final Intent i = new Intent(AppActivity.this, AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_IMTO + URI_SCHEME_HOST_DIVIDER
				+ URI_HOST_JABBER + URI_PATH_DIVIDER + Uri.encode(userLogin)));
		handleIntent(i);
	}

	private void goConference(String muc) {
		final Intent i = new Intent(AppActivity.this, AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_IMTO + URI_SCHEME_HOST_DIVIDER
				+ URI_HOST_JABBER_MUC + URI_PATH_DIVIDER + Uri.encode(muc)));
		handleIntent(i);
	}

	private void goLogin() {
		startActivity(new Intent(AppActivity.this, AccountLogin.class));
	}

	private void goStatusChange() {
		final Intent i = new Intent(AppActivity.this, AppActivity.class);
		i.setData(Uri.parse(URI_SCHEME_XMPP_FOR_ANDROID
				+ URI_SCHEME_HOST_DIVIDER + URI_HOST_CHANGE_STATUS));
		handleIntent(i);
	}

	public void handleIntent(Intent intent) {
		int mNewView = mCurrentView;
		mMUC = null;
		mUID = null;
		if (intent.getData() != null) {
			final Uri uri = intent.getData();
			if (uri.getScheme().equalsIgnoreCase(URI_SCHEME_IMTO)
					&& uri.getHost().equalsIgnoreCase(URI_HOST_JABBER)) {
				mUID = uri.getLastPathSegment();
				mNewView = VIEW_CHAT;
			} else if (uri.getScheme().equalsIgnoreCase(URI_SCHEME_IMTO)
					&& uri.getHost().equalsIgnoreCase(URI_HOST_JABBER_MUC)) {
				mMUC = uri.getLastPathSegment();
				mNewView = VIEW_CHAT;
			} else if (uri.getScheme().equalsIgnoreCase(
					URI_SCHEME_XMPP_FOR_ANDROID)
					&& uri.getHost().equalsIgnoreCase(URI_HOST_ADD_CONTACT)) {
				mNewView = VIEW_ADD_CONTACT;
			} else if (uri.getScheme().equalsIgnoreCase(
					URI_SCHEME_XMPP_FOR_ANDROID)
					&& uri.getHost().equalsIgnoreCase(URI_HOST_ADD_CONFERENCE)) {
				mNewView = VIEW_ADD_CONFERENCE;
			} else if (uri.getScheme().equalsIgnoreCase(
					URI_SCHEME_XMPP_FOR_ANDROID)
					&& uri.getHost().equalsIgnoreCase(URI_HOST_CHANGE_STATUS)) {
				mNewView = VIEW_STATUS;
			} else {
				mNewView = VIEW_ROSTER;
			}
		} else {
			mNewView = VIEW_ROSTER;
		}
		if (mCurrentView != mNewView) {
			switch (mNewView) {
			case VIEW_CHAT:
				openChat();
				if (mUID != null) {
					parseChatUID();
				} else if (mMUC != null) {
					parseChatMUC();
				}
				break;
			case VIEW_ADD_CONTACT:
				openAddContact();
				break;
			case VIEW_ROSTER:
				openRoster(null);
				break;
			case VIEW_ADD_CONFERENCE:
				openAddConference();
				break;
			case VIEW_STATUS:
				openChangeStatus();
				break;
			}
		}
	}

	@Override
	public void handleMessage(Message msg) {
		try {
			final Bundle b = msg.getData();
			switch (msg.what) {
			case Signals.SIG_OPEN_CHATSESSION:
				b.setClassLoader(ChatSession.class.getClassLoader());
				mSession = b.getParcelable("session");
				b.setClassLoader(User.class.getClassLoader());
				mUser = (User) b.getParcelable("user");
				if (mUser.supportsAudio()) {
					mMenu.findItem(R.id.menu_call).setVisible(true);
				} else {
					mMenu.findItem(R.id.menu_call).setVisible(false);
				}
				mActionBar.setTitle(mUser.getDisplayName());
				mActionBar.setSubtitle(mUser.getStatusTextSpannable(this));
				mChatProvider = new ChatProvider(
						mContactProvider.getMeContact(), mSession, this,
						mMessageHandler);
				mChatAdapter = new ChatAdapter(this, mChatProvider,
						mContactProvider);
				mMessageHolder.setAdapter(mChatAdapter);
				mUserHolder.setVisibility(View.GONE);
				break;
			case Signals.SIG_OPEN_MUC_CHATSESSION:
				b.setClassLoader(ChatSession.class.getClassLoader());
				mSession = b.getParcelable("session");
				mMenu.findItem(R.id.menu_call).setVisible(false);
				mActionBar.setTitle(mSession.getSessionID());
				mActionBar.setSubtitle(b.getString("subject"));
				mChatProvider = new ChatProvider(
						mContactProvider.getMeContact(), mSession, this,
						mMessageHandler);
				mChatAdapter = new ChatAdapter(this, mChatProvider,
						mContactProvider);
				mMessageHolder.setAdapter(mChatAdapter);
				mChatUserListAdapter = new ChatUserListAdapter(this,
						mContactProvider, mChatProvider);
				mUserHolder.setAdapter(mChatUserListAdapter);
				// TODO: FIX UserHolder and make it nicelooking!
				mUserHolder.setVisibility(View.GONE);
				break;
			case Signals.SIG_CHAT_SESSION_UPDATE:
				b.setClassLoader(ChatSession.class.getClassLoader());
				final ChatSession session1 = b.getParcelable("session");
				if (session1.equals(mSession)) {
					mSession = session1;
					mChatProvider.setSession(mSession);
				}
				if (mSession instanceof MultiUserChatSession) {
					mActionBar.setSubtitle(((MultiUserChatSession) mSession)
							.getSubject());
				}
				break;
			case Signals.SIG_ROSTER_GET_CONTACTS_ERROR:
				doUnbindService();
				finish();
				break;
			case Signals.SIG_IS_NOT_ONLINE:
				doLogin();
				break;
			case Signals.SIG_INIT_ERROR:
			case Signals.SIG_CONNECT_ERROR:
			case Signals.SIG_LOGIN_ERROR:
				goLogin();
			case Signals.SIG_INIT:
				updateStatus(UserState.STATUS_CONNECTING);
				break;
			case Signals.SIG_CONNECT:
				updateStatus(UserState.STATUS_LOGGING_IN);
				break;
			case Signals.SIG_LOGIN:
				updateStatus(UserState.STATUS_AVAILABLE);
				checkState();
				break;
			}
		} catch (final Exception e) {
			Log.i(TAG, "IncomingHandler.handleMessage", e);
			doUnbindService();
		}

	}

	@Override
	public boolean isReady() {
		return true;
	}

	@Override
	public void onBackPressed() {
		switch (mCurrentView) {
		case VIEW_CHAT:
			sendDisableChatSession();
			openRoster(null);
			break;
		case VIEW_ROSTER:
			finish();
			break;
		case VIEW_STATUS:
			final int status = (Integer) ((Spinner) findViewById(R.id.status_spinner))
					.getSelectedItem();
			String string = ((EditText) findViewById(R.id.status_edit))
					.getText().toString();
			if (string != null && string.isEmpty()) {
				string = null;
			}
			updateStatus(new UserState(status, string));
			openRoster(null);
			break;
		}
	}

	private void sendDisableChatSession() {
		final Message msg = Message.obtain(null,
				Signals.SIG_DISABLE_CHATSESSION);
		final Bundle b = new Bundle();
		b.putParcelable("session", mSession);
		msg.setData(b);
		msg.replyTo = mMessenger;
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.e(TAG, "disableChat", e);
		}
	}

	private void sendCloseChatSession() {
		final Message msg = Message.obtain(null, Signals.SIG_CLOSE_CHATSESSION);
		final Bundle b = new Bundle();
		b.putParcelable("session", mSession);
		msg.setData(b);
		msg.replyTo = mMessenger;
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.e(TAG, "disableChat", e);
		}
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mMessageHandler = new SimpleMessageHandler(this);
		mMessenger = new Messenger(mMessageHandler);
		doBindService();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		if (mMenuView != mCurrentView) {
			menu.clear();
		}
		final MenuInflater inflater = getMenuInflater();
		switch (mCurrentView) {
		case VIEW_ROSTER:
			if (mMenuView != mCurrentView) {
				inflater.inflate(R.menu.roster, menu);
			}
			if (mCurrentNavigation == 3) {
				menu.findItem(R.id.menu_add_user).setVisible(false);
				menu.findItem(R.id.menu_add_conference).setVisible(true);
			} else {
				menu.findItem(R.id.menu_add_conference).setVisible(false);
				menu.findItem(R.id.menu_add_user).setVisible(true);
			}
			break;
		case VIEW_CHAT:
			if (mMenuView != mCurrentView) {
				inflater.inflate(R.menu.chat, menu);
			}
			if (mUser != null) {
				if (mUser.supportsAudio()) {
					menu.findItem(R.id.menu_call).setVisible(true);
				} else {
					menu.findItem(R.id.menu_call).setVisible(false);
				}
			}
			break;
		default:
			if (mMenuView != mCurrentView) {
				inflater.inflate(R.menu.account_settings, menu);
			}
			break;
		}
		mMenuView = mCurrentView;
		mMenu = menu;
		return true;
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		doUnbindService();
	}

	@Override
	public boolean onMenuItemSelected(int featureId, MenuItem item) {
		switch (item.getItemId()) {
		case R.id.menu_sign_out:
			stopService(new Intent(AppActivity.this, Service.class));
			finish();
			break;
		case R.id.menu_add_user:
			goAddUser();
			break;
		case R.id.menu_add_conference:
			goAddConference();
			break;
		case R.id.menu_close:
			sendCloseChatSession();
			openRoster(null);
			break;
		}
		return super.onMenuItemSelected(featureId, item);
	}

	@Override
	protected void onNewIntent(Intent intent) {
		// super.onNewIntent(intent);
		setIntent(intent);
		handleIntent(intent);
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case android.R.id.home:
			onBackPressed();
			return true;
		default:
			return super.onOptionsItemSelected(item);
		}
	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
		super.onSaveInstanceState(outState);
		outState.putInt("tab", mCurrentNavigation);
	}

	public void openAddConference() {
		setContentView(R.layout.add_conference);
		Log.i(TAG, "openAddConference");
		mCurrentView = VIEW_ADD_CONFERENCE;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		setActionBarCancelDone();
		mActionBar.getCustomView().findViewById(R.id.action_cancel)
				.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						openRoster(null);
					}
				});
		mActionBar.getCustomView().findViewById(R.id.action_done)
				.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						final String jid = ((EditText) findViewById(R.id.jid_edit))
								.getText().toString();
						final String name = ((EditText) findViewById(R.id.nick_edit))
								.getText().toString();
						final String mynick = ((EditText) findViewById(R.id.mynick_edit))
								.getText().toString();
						final String password = ((EditText) findViewById(R.id.pass_edit))
								.getText().toString();
						if (jid != null && !jid.isEmpty()) {
							// userAdd(uid, nick);
							openRoster(null);
						} else {
							final Toast toast = Toast.makeText(
									AppActivity.this, R.string.jid_is_required,
									Toast.LENGTH_SHORT);
							toast.show();
						}
					}
				});
	}

	public void openAddContact() {
		setContentView(R.layout.add_user);
		Log.i(TAG, "openAddContact");
		mCurrentView = VIEW_ADD_CONTACT;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		setActionBarCancelDone();
		mActionBar.getCustomView().findViewById(R.id.action_cancel)
				.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						openRoster(null);
					}
				});
		mActionBar.getCustomView().findViewById(R.id.action_done)
				.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						final String uid = ((EditText) findViewById(R.id.uid_edit))
								.getText().toString();
						final String nick = ((EditText) findViewById(R.id.nick_edit))
								.getText().toString();
						if (uid != null && !uid.isEmpty()) {
							userAdd(uid, nick);
							openRoster(null);
						} else {
							final Toast toast = Toast.makeText(
									AppActivity.this, R.string.jid_is_required,
									Toast.LENGTH_SHORT);
							toast.show();
						}
					}
				});
	}

	public void openChangeStatus() {
		setContentView(R.layout.status_changer);
		Log.i(TAG, "openChangeStatus");
		mCurrentView = VIEW_STATUS;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		((Spinner) findViewById(R.id.status_spinner))
				.setAdapter(new StatusAdapter(this));
		((Spinner) findViewById(R.id.status_spinner))
				.setOnItemSelectedListener(new OnItemSelectedListener() {

					@Override
					public void onItemSelected(AdapterView<?> view,
							View selectedView, int position, long id) {
						findViewById(R.id.status_background)
								.setBackgroundColor(
										Color.parseColor(getString(new UserState(
												(int) id, null)
												.getStatusColorRessourceID())));
					}

					@Override
					public void onNothingSelected(AdapterView<?> arg0) {
						// TODO Auto-generated method stub

					}
				});
		((Spinner) findViewById(R.id.status_spinner))
				.setSelection(StatusAdapter.statusToPosition(mContactProvider
						.getMeContact().getUserState().getStatus()));
		((EditText) findViewById(R.id.status_edit)).setText(mContactProvider
				.getMeContact().getUserState().getCustomStatusText());
		setActionBarSimpleWithBack();
		mActionBar.setTitle(R.string.status);
		mActionBar.setSubtitle(mContactProvider.getMeUserLogin());
	}

	public void openChat() {
		setContentView(R.layout.chat);
		Log.i(TAG, "openChat");
		mCurrentView = VIEW_CHAT;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		final ImageButton btn_send = (ImageButton) findViewById(R.id.btn_send);
		btn_send.setOnClickListener(sendClickListener);
		mMessageHolder = (ListView) findViewById(R.id.message_container);
		mUserHolder = (HorizontalListView) findViewById(R.id.user_container);
		mSendText = (EditText) findViewById(R.id.text_send);
		mSendText.setOnEditorActionListener(new OnEditorActionListener() {

			@Override
			public boolean onEditorAction(TextView v, int actionId,
					KeyEvent event) {
				if (actionId == EditorInfo.IME_ACTION_SEND) {
					doSend();
					return true;
				} else {
					return false;
				}
			}

		});

		setActionBarSimpleWithBack();
		mActionBar.setTitle(getText(R.string.process_loading));
	}

	public void openRoster(Bundle savedInstanceState) {
		setContentView(R.layout.roster);
		Log.i(TAG, "openRoster");
		mCurrentView = VIEW_ROSTER;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		mListView = (ListView) findViewById(R.id.list_roster);
		mListView.setOnItemClickListener(itemClickListener);
		setActionBarSimpleWithoutBack();
		mActionBar.setTitle(getText(R.string.process_loading));

		if (mConferenceProvider == null) {
			mConferenceProvider = new ConferenceProvider(mMessenger, mService,
					mMessageHandler);
		}
		if (mContactProvider == null) {
			mContactProvider = new ContactProvider(mMessenger, mService, this,
					this, mMessageHandler);
		}
		if (mRosterAdapter == null) {
			mRosterAdapter = new RosterAdapter(mListView.getContext(),
					mContactProvider, mConferenceProvider);
		}
		mListView.setAdapter(mRosterAdapter);

		if (savedInstanceState != null && savedInstanceState.containsKey("tab")) {
			mCurrentNavigation = savedInstanceState.getInt("tab");
		}

		if (mGroupAdapter != null) {
			setActionBarListNavigationWithoutBack();
			mActionBar.setListNavigationCallbacks(mGroupAdapter,
					mNavigationListener);
			mActionBar.setSelectedNavigationItem(mCurrentNavigation);
		}
	}

	private void parseChatMUC() {
		if (mService != null) {
			final Message msg = Message.obtain(null,
					Signals.SIG_OPEN_MUC_CHATSESSION);
			msg.replyTo = mMessenger;
			final Bundle b = new Bundle();
			b.putString("muc", mMUC);
			msg.setData(b);
			try {
				mService.send(msg);
			} catch (final RemoteException e) {
				Log.i(TAG, "handleIntent", e);
			}
		}
		setTitle(mMUC);
	}

	private void parseChatUID() {
		if (mService != null) {
			final Message msg = Message.obtain(null,
					Signals.SIG_OPEN_CHATSESSION);
			msg.replyTo = mMessenger;
			final Bundle b = new Bundle();
			b.putString("uid", mUID);
			msg.setData(b);
			try {
				mService.send(msg);
			} catch (final RemoteException e) {
				Log.i(TAG, "handleIntent", e);
			}
		}
		setTitle(mUID);
	}

	private void setActionBarCancelDone() {
		mActionBar = getActionBar();
		mActionBar.setDisplayHomeAsUpEnabled(false);
		mActionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_STANDARD);
		mActionBar.setDisplayShowTitleEnabled(false);
		mActionBar.setDisplayShowCustomEnabled(true);
		mActionBar.setDisplayShowHomeEnabled(false);
		mActionBar.setTitle(null);
		mActionBar.setSubtitle(null);
		mActionBar.setCustomView(R.layout.actionbar_cancel_done);
	}

	private void setActionBarListNavigationWithoutBack() {
		mActionBar = getActionBar();
		mActionBar.setDisplayHomeAsUpEnabled(false);
		mActionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_LIST);
		mActionBar.setDisplayShowTitleEnabled(false);
		mActionBar.setDisplayShowCustomEnabled(false);
		mActionBar.setDisplayShowHomeEnabled(true);
		mActionBar.setTitle(null);
		mActionBar.setSubtitle(null);
		mActionBar.setCustomView(null);
	}

	private void setActionBarSimpleWithBack() {
		mActionBar = getActionBar();
		mActionBar.setDisplayHomeAsUpEnabled(true);
		mActionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_STANDARD);
		mActionBar.setDisplayShowTitleEnabled(true);
		mActionBar.setDisplayShowCustomEnabled(false);
		mActionBar.setDisplayShowHomeEnabled(true);
		mActionBar.setTitle(null);
		mActionBar.setSubtitle(null);
		mActionBar.setCustomView(null);
	}

	private void setActionBarSimpleWithoutBack() {
		mActionBar = getActionBar();
		mActionBar.setDisplayHomeAsUpEnabled(false);
		mActionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_STANDARD);
		mActionBar.setDisplayShowTitleEnabled(true);
		mActionBar.setDisplayShowCustomEnabled(false);
		mActionBar.setDisplayShowHomeEnabled(true);
		mActionBar.setTitle(null);
		mActionBar.setSubtitle(null);
		mActionBar.setCustomView(null);
	}

	private void updateStatus(int status) {
		updateStatus(new UserState(status, null));
	}

	private void updateStatus(UserState userState) {
		mContactProvider.getMeContact().getUser().setUserState(userState);
		mRosterAdapter.notifyDataSetChanged();
		final Bundle b = new Bundle();
		b.putParcelable("state", userState);
		final Message msg = Message.obtain(null, Signals.SIG_SET_STATUS);
		msg.replyTo = mMessenger;
		msg.setData(b);
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.i(TAG, "updateStatus", e);
		}
	}

	private void userAdd(String uid) {
		final Bundle b = new Bundle();
		b.putString("uid", uid);
		final Message msg = Message.obtain(null, Signals.SIG_ROSTER_ADD);
		msg.replyTo = mMessenger;
		msg.setData(b);
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.i(TAG, "userAdd", e);
		}
	}

	protected void userAdd(String uid, String nick) {
		final Bundle b = new Bundle();
		b.putString("uid", uid);
		b.putString("nick", nick);
		final Message msg = Message.obtain(null, Signals.SIG_ROSTER_ADD);
		msg.replyTo = mMessenger;
		msg.setData(b);
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.i(TAG, "userAdd", e);
		}
	}
}
