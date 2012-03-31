package xmpp.client.service.chat;

public interface ChatCodes {
	public static final int CHAT_SINGLE = 1;
	public static final int CHAT_MULTI = 2;

	public static final int CHATSTATE_UNKNOWN = -1;
	public static final int CHATSTATE_ACTIVE = 2;
	public static final int CHATSTATE_INACTIVE = 1;
	public static final int CHATSTATE_GONE = 0;
	public static final int CHATSTATE_PAUSED = 3;
	public static final int CHATSTATE_COMPOSING = 4;
}
