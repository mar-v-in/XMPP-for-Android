package xmpp.client.ui.activities;

import xmpp.client.Constants;
import xmpp.client.R;
import xmpp.client.account.AccountInfo;
import xmpp.client.service.Service;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.chat.multi.MultiChatSession;
import xmpp.client.service.handlers.SimpleMessageHandler;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserState;
import xmpp.client.ui.account.AccountLogin;
import xmpp.client.ui.adapter.ChatAdapter;
import xmpp.client.ui.adapter.GroupAdapter;
import xmpp.client.ui.adapter.RosterAdapter;
import xmpp.client.ui.adapter.StatusAdapter;
import xmpp.client.ui.fragments.ContactListFragment;
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
import android.app.FragmentManager;
import android.app.FragmentTransaction;
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
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;

public class AppActivity extends Activity implements
		SimpleMessageHandlerClient, ContactProviderListener,
		ChatProviderListener, Constants {

	private static final String TAG = AppActivity.class.getName();

	private FragmentManager fragmentManager;

	private int currentView = VIEW_ACCOUNTS;
	private String mUID;
	private String mMUC;

	boolean doCheck = true;

	private ActionBar actionBar;
	private final ServiceConnection connection = new ServiceConnection() {
		@Override
		public void onServiceConnected(ComponentName className, IBinder service) {
			mService = new Messenger(service);
			handleIntent(getIntent());
			try {
				final Message msg = Message.obtain(null,
						Constants.SIG_REGISTER_CLIENT);
				msg.replyTo = messenger;
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

	int currentNavigation = 2;

	GroupAdapter groupAdapter;

	boolean isBound;

	private SimpleMessageHandler messageHandler;
	private Messenger messenger;
	private final OnNavigationListener navigationListener = new OnNavigationListener() {

		@Override
		public boolean onNavigationItemSelected(int itemPosition, long itemId) {
			currentNavigation = itemPosition;
			rosterAdapter.setActiveGroup((String) groupAdapter
					.getItem(currentNavigation));
			onCreateOptionsMenu(mMenu);
			return true;
		}
	};

	private RosterAdapter rosterAdapter;

	private ContactProvider contactProvider;

	private Messenger mService = null;

	private ListView messageHolder;
	private EditText sendText;
	private User user;
	private Menu mMenu;
	private ChatProvider chatProvider;
	private ChatAdapter chatAdapter;
	private final OnClickListener sendClickListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			doSend();
		}
	};

	private ChatSession session;
	private ConferenceProvider conferenceProvider;
	private int menuView = -1;

	public void afterInit() {
		groupAdapter = new GroupAdapter(this, contactProvider);
		if (currentView == VIEW_ROSTER) {
			actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_LIST);
			actionBar.setDisplayShowTitleEnabled(false);
			actionBar.setDisplayShowCustomEnabled(true);
			actionBar.setListNavigationCallbacks(groupAdapter,
					navigationListener);
			actionBar.setSelectedNavigationItem(currentNavigation);
			rosterAdapter = new RosterAdapter(this, contactProvider,
					conferenceProvider);
			((ContactListFragment) fragmentManager.findFragmentById(R.id.main))
					.setListAdapter(rosterAdapter);
			rosterAdapter.notifyDataSetChanged();
		} else if (currentView == VIEW_CHAT) {
			if (mUID != null) {
				final Message msg = Message.obtain(null,
						Constants.SIG_OPEN_CHATSESSION);
				msg.replyTo = messenger;
				final Bundle b = new Bundle();
				b.putString(FIELD_JID, mUID);
				msg.setData(b);
				try {
					mService.send(msg);
				} catch (final RemoteException e) {
					Log.i(TAG, "handleIntent", e);
				}
				setTitle(mUID);
			} else if (mMUC != null) {
				final Message msg = Message.obtain(null,
						Constants.SIG_OPEN_MUC_CHATSESSION);
				msg.replyTo = messenger;
				final Bundle b = new Bundle();
				b.putString(FIELD_JID, mMUC);
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
		if (chatAdapter != null) {
			chatAdapter.notifyDataSetChanged();
		}
	}

	@Override
	public void chatProviderReady(ChatProvider chatProvider) {

	}

	void checkState() {
		if (mService != null) {
			final Message msg = Message.obtain(null, Constants.SIG_IS_ONLINE);
			msg.replyTo = messenger;
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
		if (rosterAdapter != null) {
			rosterAdapter.notifyDataSetChanged();
		}
		if (groupAdapter != null) {
			groupAdapter.notifyDataSetChanged();
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
		bindService(new Intent(AppActivity.this, Service.class), connection,
				Context.BIND_ABOVE_CLIENT);
		isBound = true;
	}

	public void doLogin() {
		final AccountManager am = AccountManager.get(this);
		final Account[] accounts = am.getAccountsByType(ACCOUNT_TYPE);
		if (accounts.length > 0) {
			final Account account = accounts[0];
			final String login = account.name;
			contactProvider.getMeContact().getUser().setUserLogin(login);
			updateStatus(UserState.STATUS_INITIALIZING);
			final String pass = am.getPassword(account);
			final Message msg = Message.obtain(null, Constants.SIG_INIT);
			final Bundle b = new Bundle();
			b.putParcelable(FIELD_ACCOUNTINFO, new AccountInfo(login, pass));
			msg.setData(b);
			msg.replyTo = messenger;
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
		if (session != null && sendText.getText().length() > 0) {
			final Message msg = Message
					.obtain(null, Constants.SIG_SEND_MESSAGE);
			msg.replyTo = messenger;
			final Bundle b = new Bundle();
			b.putParcelable(FIELD_CHAT_SESSION, session);
			b.putString(FIELD_TEXT, sendText.getText().toString());
			msg.setData(b);
			try {
				mService.send(msg);
			} catch (final RemoteException e) {
				Log.e(TAG, "doSend", e);
			}
		}
		sendText.setText("");
	}

	void doUnbindService() {
		if (isBound) {
			if (mService != null) {
				try {
					final Message msg = Message.obtain(null,
							Constants.SIG_UNREGISTER_CLIENT);
					msg.replyTo = messenger;
					mService.send(msg);

				} catch (final RemoteException e) {
					Log.i(TAG, "doUnbindService", e);
				}
			}

			unbindService(connection);
			isBound = false;
		}
	}

	public int getCurrentNavigation() {
		return currentNavigation;
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

	private void goLogin() {
		startActivity(new Intent(AppActivity.this, AccountLogin.class));
	}

	public void handleIntent(Intent intent) {
		int mNewView = currentView;
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
		if (currentView != mNewView) {
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
			case Constants.SIG_OPEN_CHATSESSION:
				b.setClassLoader(ChatSession.class.getClassLoader());
				session = b.getParcelable(FIELD_CHAT_SESSION);
				b.setClassLoader(User.class.getClassLoader());
				user = (User) b.getParcelable(FIELD_USER);
				if (user.supportsAudio()) {
					mMenu.findItem(R.id.menu_call).setVisible(true);
				} else {
					mMenu.findItem(R.id.menu_call).setVisible(false);
				}
				actionBar.setTitle(user.getDisplayName());
				actionBar.setSubtitle(user.getStatusTextSpannable(this));
				chatProvider = new ChatProvider(contactProvider.getMeContact(),
						session, this, messageHandler);
				chatAdapter = new ChatAdapter(this, chatProvider,
						contactProvider);
				messageHolder.setAdapter(chatAdapter);
				break;
			case Constants.SIG_OPEN_MUC_CHATSESSION:
				b.setClassLoader(ChatSession.class.getClassLoader());
				session = b.getParcelable(FIELD_CHAT_SESSION);
				mMenu.findItem(R.id.menu_call).setVisible(false);
				actionBar.setTitle(session.getSessionID());
				actionBar.setSubtitle(b.getString(FIELD_SUBJECT));
				chatProvider = new ChatProvider(contactProvider.getMeContact(),
						session, this, messageHandler);
				chatAdapter = new ChatAdapter(this, chatProvider,
						contactProvider);
				messageHolder.setAdapter(chatAdapter);
				break;
			case Constants.SIG_CHAT_SESSION_UPDATE:
				b.setClassLoader(ChatSession.class.getClassLoader());
				final ChatSession session1 = b
						.getParcelable(FIELD_CHAT_SESSION);
				if (session1.equals(session)) {
					session = session1;
					chatProvider.setSession(session);
				}
				if (session instanceof MultiChatSession) {
					actionBar.setSubtitle(((MultiChatSession) session)
							.getSubject());
				}
				break;
			case Constants.SIG_ROSTER_GET_CONTACTS_ERROR:
				doUnbindService();
				finish();
				break;
			case Constants.SIG_IS_NOT_ONLINE:
				doLogin();
				break;
			case Constants.SIG_INIT_ERROR:
			case Constants.SIG_CONNECT_ERROR:
			case Constants.SIG_LOGIN_ERROR:
				goLogin();
			case Constants.SIG_INIT:
				updateStatus(UserState.STATUS_CONNECTING);
				break;
			case Constants.SIG_CONNECT:
				updateStatus(UserState.STATUS_LOGGING_IN);
				break;
			case Constants.SIG_LOGIN:
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
		switch (currentView) {
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

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		fragmentManager = getFragmentManager();
		setContentView(R.layout.main);
		messageHandler = new SimpleMessageHandler(this);
		messenger = new Messenger(messageHandler);
		doBindService();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		if (menuView != currentView) {
			menu.clear();
		}
		final MenuInflater inflater = getMenuInflater();
		switch (currentView) {
		case VIEW_ROSTER:
			if (menuView != currentView) {
				inflater.inflate(R.menu.roster, menu);
			}
			if (currentNavigation == 3) {
				menu.findItem(R.id.menu_add_user).setVisible(false);
				menu.findItem(R.id.menu_add_conference).setVisible(true);
			} else {
				menu.findItem(R.id.menu_add_conference).setVisible(false);
				menu.findItem(R.id.menu_add_user).setVisible(true);
			}
			break;
		case VIEW_CHAT:
			if (menuView != currentView) {
				inflater.inflate(R.menu.chat, menu);
			}
			if (user != null) {
				if (user.supportsAudio()) {
					menu.findItem(R.id.menu_call).setVisible(true);
				} else {
					menu.findItem(R.id.menu_call).setVisible(false);
				}
			}
			break;
		case VIEW_ACCOUNTS:
			if (menuView != currentView) {
				inflater.inflate(R.menu.accounts, menu);
			}
			break;
		case VIEW_SETTINGS:
			if (menuView != currentView) {
				inflater.inflate(R.menu.settings, menu);
			}
			break;
		case VIEW_ACCOUNT_SETTINGS:
			if (menuView != currentView) {
				inflater.inflate(R.menu.account_settings, menu);
			}
			break;
		default:
			if (menuView != currentView) {
				inflater.inflate(R.menu.nomenu, menu);
			}
			break;
		}
		menuView = currentView;
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
		outState.putInt("tab", currentNavigation);
	}

	public void openAddConference() {
		setContentView(R.layout.add_conference);
		Log.i(TAG, "openAddConference");
		currentView = VIEW_ADD_CONFERENCE;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		setActionBarCancelDone();
		actionBar.getCustomView().findViewById(R.id.action_cancel)
				.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						openRoster(null);
					}
				});
		actionBar.getCustomView().findViewById(R.id.action_done)
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
							final Toast toast = Toast.makeText(
									AppActivity.this, "Not yet implemented...",
									Toast.LENGTH_SHORT);
							toast.show();
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
		currentView = VIEW_ADD_CONTACT;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		setActionBarCancelDone();
		actionBar.getCustomView().findViewById(R.id.action_cancel)
				.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						openRoster(null);
					}
				});
		actionBar.getCustomView().findViewById(R.id.action_done)
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
		currentView = VIEW_STATUS;
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
				.setSelection(StatusAdapter.statusToPosition(contactProvider
						.getMeContact().getUserState().getStatus()));
		((EditText) findViewById(R.id.status_edit)).setText(contactProvider
				.getMeContact().getUserState().getCustomStatusText());
		setActionBarSimpleWithBack();
		actionBar.setTitle(R.string.status);
		actionBar.setSubtitle(contactProvider.getMeUserLogin());
	}

	public void openChat() {
		setContentView(R.layout.chat);
		Log.i(TAG, "openChat");
		currentView = VIEW_CHAT;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		final ImageButton btn_send = (ImageButton) findViewById(R.id.btn_send);
		btn_send.setOnClickListener(sendClickListener);
		messageHolder = (ListView) findViewById(R.id.message_container);
		sendText = (EditText) findViewById(R.id.text_send);
		sendText.setOnEditorActionListener(new OnEditorActionListener() {

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
		actionBar.setTitle(getText(R.string.process_loading));
	}

	public void openRoster(Bundle savedInstanceState) {
		final View view = findViewById(R.id.text_send);
		if (view != null) {
			final InputMethodManager mgr = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
			mgr.hideSoftInputFromWindow(view.getWindowToken(), 0);
		}
		setContentView(R.layout.main);
		final ContactListFragment fragment = new ContactListFragment();
		final FragmentTransaction t = fragmentManager.beginTransaction();
		t.replace(R.id.main, fragment);
		t.commit();
		fragmentManager.executePendingTransactions();
		Log.i(TAG, "openRoster");
		currentView = VIEW_ROSTER;
		if (mMenu != null) {
			onCreateOptionsMenu(mMenu);
		}
		/*
		 * listView = (ListView) findViewById(android.R.id.list);
		 * listView.setOnItemClickListener(itemClickListener);
		 */
		setActionBarSimpleWithoutBack();
		actionBar.setTitle(getText(R.string.process_loading));

		if (conferenceProvider == null) {
			conferenceProvider = new ConferenceProvider(messenger, mService,
					messageHandler);
		}
		if (contactProvider == null) {
			contactProvider = new ContactProvider(messenger, mService, this,
					this, messageHandler);
		}
		if (rosterAdapter == null) {
			rosterAdapter = new RosterAdapter(this, contactProvider,
					conferenceProvider);
		}
		((ContactListFragment) fragmentManager.findFragmentById(R.id.main))
				.setListAdapter(rosterAdapter);

		if (savedInstanceState != null && savedInstanceState.containsKey("tab")) {
			currentNavigation = savedInstanceState.getInt("tab");
		}

		if (groupAdapter != null) {
			setActionBarListNavigationWithoutBack();
			actionBar.setListNavigationCallbacks(groupAdapter,
					navigationListener);
			actionBar.setSelectedNavigationItem(currentNavigation);
		}
	}

	private void parseChatMUC() {
		if (mService != null) {
			final Message msg = Message.obtain(null,
					Constants.SIG_OPEN_MUC_CHATSESSION);
			msg.replyTo = messenger;
			final Bundle b = new Bundle();
			b.putString(FIELD_JID, mMUC);
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
					Constants.SIG_OPEN_CHATSESSION);
			msg.replyTo = messenger;
			final Bundle b = new Bundle();
			b.putString(FIELD_JID, mUID);
			msg.setData(b);
			try {
				mService.send(msg);
			} catch (final RemoteException e) {
				Log.i(TAG, "handleIntent", e);
			}
		}
		setTitle(mUID);
	}

	private void sendCloseChatSession() {
		final Message msg = Message.obtain(null,
				Constants.SIG_CLOSE_CHATSESSION);
		final Bundle b = new Bundle();
		b.putParcelable(FIELD_CHAT_SESSION, session);
		msg.setData(b);
		msg.replyTo = messenger;
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.e(TAG, "disableChat", e);
		}
	}

	private void sendDisableChatSession() {
		final Message msg = Message.obtain(null,
				Constants.SIG_DISABLE_CHATSESSION);
		final Bundle b = new Bundle();
		b.putParcelable(FIELD_CHAT_SESSION, session);
		msg.setData(b);
		msg.replyTo = messenger;
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.e(TAG, "disableChat", e);
		}
	}

	private void setActionBarCancelDone() {
		actionBar = getActionBar();
		actionBar.setDisplayHomeAsUpEnabled(false);
		actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_STANDARD);
		actionBar.setDisplayShowTitleEnabled(false);
		actionBar.setDisplayShowCustomEnabled(true);
		actionBar.setDisplayShowHomeEnabled(false);
		actionBar.setTitle(null);
		actionBar.setSubtitle(null);
		actionBar.setCustomView(R.layout.actionbar_cancel_done);
	}

	private void setActionBarListNavigationWithoutBack() {
		actionBar = getActionBar();
		actionBar.setDisplayHomeAsUpEnabled(false);
		actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_LIST);
		actionBar.setDisplayShowTitleEnabled(false);
		actionBar.setDisplayShowCustomEnabled(false);
		actionBar.setDisplayShowHomeEnabled(true);
		actionBar.setTitle(null);
		actionBar.setSubtitle(null);
		actionBar.setCustomView(null);
	}

	private void setActionBarSimpleWithBack() {
		actionBar = getActionBar();
		actionBar.setDisplayHomeAsUpEnabled(true);
		actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_STANDARD);
		actionBar.setDisplayShowTitleEnabled(true);
		actionBar.setDisplayShowCustomEnabled(false);
		actionBar.setDisplayShowHomeEnabled(true);
		actionBar.setTitle(null);
		actionBar.setSubtitle(null);
		actionBar.setCustomView(null);
	}

	private void setActionBarSimpleWithoutBack() {
		actionBar = getActionBar();
		actionBar.setDisplayHomeAsUpEnabled(false);
		actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_STANDARD);
		actionBar.setDisplayShowTitleEnabled(true);
		actionBar.setDisplayShowCustomEnabled(false);
		actionBar.setDisplayShowHomeEnabled(true);
		actionBar.setTitle(null);
		actionBar.setSubtitle(null);
		actionBar.setCustomView(null);
	}

	private void updateStatus(int status) {
		updateStatus(new UserState(status, null));
	}

	private void updateStatus(UserState userState) {
		contactProvider.getMeContact().getUser().setUserState(userState);
		rosterAdapter.notifyDataSetChanged();
		final Bundle b = new Bundle();
		b.putParcelable(FIELD_STATE, userState);
		final Message msg = Message.obtain(null, Constants.SIG_SET_STATUS);
		msg.replyTo = messenger;
		msg.setData(b);
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.i(TAG, "updateStatus", e);
		}
	}

	protected void userAdd(String uid, String nick) {
		final Bundle b = new Bundle();
		b.putString(FIELD_JID, uid);
		b.putString(FIELD_NICKNAME, nick);
		final Message msg = Message.obtain(null, Constants.SIG_ROSTER_ADD);
		msg.replyTo = messenger;
		msg.setData(b);
		try {
			mService.send(msg);
		} catch (final RemoteException e) {
			Log.i(TAG, "userAdd", e);
		}
	}
}
