package xmpp.client.ui.provider;

import xmpp.client.Constants;
import xmpp.client.service.chat.Chat;
import xmpp.client.service.chat.ChatCodes;
import xmpp.client.service.chat.ChatMessage;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.chat.multi.MultiChatSession;
import xmpp.client.service.chat.single.SingleChatSession;
import xmpp.client.service.handlers.SimpleMessageHandler;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;
import xmpp.client.service.user.UserList;
import xmpp.client.service.user.contact.Contact;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;

public class ChatProvider implements SimpleMessageHandlerClient, Constants,
		ChatCodes {
	private static final String TAG = ChatProvider.class.getName();

	private ChatSession mChatSession;
	private Contact mMeContact;
	private final ChatProviderListener mListener;

	public ChatProvider(Contact meContact, ChatSession chatSession,
			ChatProviderListener listener, SimpleMessageHandler messageHandler) {
		mChatSession = chatSession;
		mMeContact = meContact;
		mListener = listener;
		messageHandler.addClient(this);
	}

	public void chatSessionUpdated(ChatSession newSession) {
		if (newSession.getIdentifier().equals(mChatSession.getIdentifier())) {
			mChatSession = newSession;
		}
	}

	public Contact getMeContact() {
		return mMeContact;
	}

	public xmpp.client.service.chat.ChatMessage getMessage(int position) {
		return mChatSession.getMessageList().get(position);
	}

	public UserList getUsers() {
		if (mChatSession.isMUC() && (mChatSession instanceof MultiChatSession)) {
			return ((MultiChatSession) mChatSession).getUsers();
		}
		final UserList u = new UserList();
		if (mChatSession instanceof SingleChatSession) {
			u.add(((SingleChatSession) mChatSession).getUser());
		}
		return u;
	}

	@Override
	public void handleMessage(Message msg) {
		try {
			final Bundle b = msg.getData();
			switch (msg.what) {
			case SIG_MESSAGE_SENT:
			case SIG_MESSAGE_GOT:
				b.setClassLoader(xmpp.client.service.chat.ChatMessage.class
						.getClassLoader());
				final xmpp.client.service.chat.ChatMessage chatMessage = b
						.getParcelable(FIELD_MESSAGE);
				processMessage(null, chatMessage);
				if (mListener.isReady()) {
					mListener.chatProviderChanged(this);
				}
				break;
			case SIG_CHAT_SESSION_UPDATE:
				b.setClassLoader(ChatSession.class.getClassLoader());
				final ChatSession newSession = b
						.getParcelable(FIELD_CHAT_SESSION);
				chatSessionUpdated(newSession);
				if (mListener.isReady()) {
					mListener.chatProviderChanged(this);
				}
				break;
			}
		} catch (final Exception e) {
			Log.e(TAG, "handleMessage", e);
		}
	}

	public boolean isMUC() {
		return mChatSession.isMUC();
	}

	@Override
	public boolean isReady() {
		return true;
	}

	public void processMessage(Chat chat, ChatMessage chatMessage) {
		mChatSession.addMessage(chatMessage);
	}

	public void setMeContact(Contact contact) {
		mMeContact = contact;
	}

	public void setSession(ChatSession mSession) {
		mChatSession = mSession;
	}

	public int size() {
		return mChatSession.getMessageList().size();
	}

}
