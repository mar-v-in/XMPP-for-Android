package xmpp.client.service.chat;

public abstract class Chat implements ChatCodes {

	private int mChatState;

	public Chat() {
		mChatState = CHATSTATE_UNKNOWN;
	}

	public abstract void close();

	int getChatState() {
		return mChatState;
	}

	public abstract int getChatType();

	public abstract String getIdentifier();

	public String getSubject() {
		return null;
	}

	public abstract String getThreadID();

	public boolean init() {
		return true;
	}

	public abstract boolean isMe(String from);

	public void sendMessage(String text) {
		sendMessage(getIdentifier(), text);
	}

	public abstract void sendMessage(String participant, String text);

	public void updateChatState(int state) {
		mChatState = state;
	}

}
