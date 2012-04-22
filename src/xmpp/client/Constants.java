package xmpp.client;

public interface Constants {
	public static final String URI_HOST_CHANGE_STATUS = "change_status";
	public static final String URI_HOST_ADD_CONFERENCE = "add_conference";
	public static final String URI_PATH_DIVIDER = "/";
	public static final String URI_SCHEME_HOST_DIVIDER = "://";
	public static final String URI_HOST_ADD_CONTACT = "add_contact";
	public static final String URI_HOST_JABBER_MUC = "jabbermuc";
	public static final String URI_HOST_JABBER = "jabber";
	public static final String URI_SCHEME_XMPP_FOR_ANDROID = "xmpp-for-android";
	public static final String URI_SCHEME_IMTO = "imto";

	public static final int VIEW_ROSTER = 0;
	public static final int VIEW_CHAT = 1;
	public static final int VIEW_STATUS = 2;
	public static final int VIEW_ADD_CONTACT = 3;
	public static final int VIEW_ADD_CONFERENCE = 4;
	public static final int VIEW_ACCOUNTS = 5;
	public static final int VIEW_SETTINGS = 6;
	public static final int VIEW_ACCOUNT_SETTINGS = 7;

	public static final int SIG_REGISTER_CLIENT = 1;
	public static final int SIG_UNREGISTER_CLIENT = 2;

	public static final int SIG_RECONNECT = 3;
	public static final int SIG_CONNECT = 5;
	public static final int SIG_CONNECT_ERROR = -5;
	public static final int SIG_DISCONNECT = 0;
	public static final int SIG_INIT = 4;
	public static final int SIG_INIT_ERROR = -4;
	public static final int SIG_IS_NOT_ONLINE = -8;
	public static final int SIG_IS_ONLINE = 8;
	public static final int SIG_LOGIN = 6;
	public static final int SIG_LOGIN_ERROR = -6;
	public static final int SIG_MESSAGE_GOT = 50;
	public static final int SIG_MESSAGE_SENT = 51;

	public static final int SIG_ROSTER_UPDATE = 11;
	public static final int SIG_ROSTER_ADD = 13;
	public static final int SIG_ROSTER_ADD_ERROR = -13;
	public static final int SIG_ROSTER_GET_CONTACTS = 14;
	public static final int SIG_ROSTER_GET_CONTACTS_ERROR = -14;
	public static final int SIG_CHAT_SESSION_UPDATE = 15;

	public static final int SIG_SEND_MESSAGE = 20;
	public static final int SIG_SEND_MESSAGE_ERROR = -20;
	public static final int SIG_SET_STATUS = 21;

	public static final int SIG_OPEN_CHATSESSION = 30;
	public static final int SIG_CLOSE_CHATSESSION = 31;
	public static final int SIG_DISABLE_CHATSESSION = 32;
	public static final int SIG_OPEN_MUC_CHATSESSION = 33;
	public static final int SIG_OPEN_MUC_CHATSESSION_ERROR = -33;

	public static final int SIG_UPDATE_USER = 40;
	public static final int SIG_UPDATE_CONTACT = 41;

	public static final int SIG_GET_MUCS = 60;
	public static final int SIG_ADD_MUC = 61;

	public static final int ROSTER_ADDED = 0;
	public static final int ROSTER_DELETED = 1;
	public static final int ROSTER_UPDATED = 2;

	public static final String FIELD_STATE = "state";
	public static final String FIELD_TYPE = "type";
	public static final String FIELD_TEXT = "text";
	public static final String FIELD_MESSAGE = "message";
	public static final String FIELD_SUBJECT = "subject";
	public static final String FIELD_CONTACT = "contact";
	public static final String FIELD_ACCOUNTINFO = "AccountInfo";
	public static final String FIELD_MULTI_USER_CHAT_INFO_LIST = "mucs";
	public static final String FIELD_CONTACT_LIST = "contacts";
	public static final String FIELD_CHAT_SESSION = "session";
	public static final String FIELD_USER = "user";
	public static final String FIELD_NICKNAME = "nick";
	public static final String FIELD_JID = "jid";

	public static final String XMPP_RESSOURCE = "XMPP";

	public static final String GROUP_ONLINE_CONTACTS = "_online_";
	public static final String GROUP_ALL_CONTACTS = "_all_";
	public static final String GROUP_STARTUP = "_startup_";
	public static final String GROUP_CONFERENCES = "_conferences_";
	public static final String GROUP_DIVIDER = "__divider__";

	public static final String ACCOUNT_TYPE = "xmpp.client.account";
	public static final String ACCOUNT_MIME = "vnd.android.cursor.item/vnd.xmpp.client.account.chat";

}
