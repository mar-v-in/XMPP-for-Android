package xmpp.client.ui.provider;

import xmpp.client.service.chat.ChatMessage;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.chat.multi.MultiUserChatSession;
import xmpp.client.service.user.UserList;
import xmpp.client.service.user.contact.Contact;

public class ChatProvider {
	@SuppressWarnings("unused")
	private static final String TAG = ChatProvider.class.getName();

	ChatSession mChatSession;
	Contact mMeContact;

	public ChatProvider(Contact meContact, ChatSession chatSession) {
		mChatSession = chatSession;
		mMeContact = meContact;
	}

	public void addMessage(ChatMessage message) {
		mChatSession.addMessage(message);

	}

	public Contact getMeContact() {
		return mMeContact;
	}

	public ChatMessage getMessage(int position) {
		return mChatSession.getMessageList().get(position);
	}

	public UserList getUsers() {
		if (mChatSession.isMUC()
				&& (mChatSession instanceof MultiUserChatSession)) {
			return ((MultiUserChatSession) mChatSession).getUsers();
		}
		return null;
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
