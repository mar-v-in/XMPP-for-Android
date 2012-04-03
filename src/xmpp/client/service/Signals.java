package xmpp.client.service;

public interface Signals {
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

	public static final int SIG_UPDATE_USER = 40;
	public static final int SIG_UPDATE_CONTACT = 41;

	public static final int SIG_GET_MUCS = 50;
	public static final int SIG_ADD_MUC = 51;

	public static final int ROSTER_ADDED = 0;
	public static final int ROSTER_DELETED = 1;
	public static final int ROSTER_UPDATED = 2;

}
