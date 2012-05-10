package xmpp.client.service;

import xmpp.client.account.AccountInfo;
import xmpp.client.service.chat.ChatMessage;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.chat.ParcelableMessage;
import xmpp.client.service.user.User;

public interface MainServiceListener {

	void sendRosterDeleted(AccountInfo accountInfo, String uid);

	void sendRosterUpdated(AccountInfo accountInfo, User user);

	void sendRosterAdded(AccountInfo accountInfo, User user);

	void processMessage(AccountInfo accountInfo, ChatSession session,
			ParcelableMessage message);

	void sendSessionUpdated(AccountInfo accountInfo, ChatSession session);
	
	boolean isActiveChatSession(AccountInfo accountInfo, ChatSession session);
	
	boolean isActiveAccount(AccountInfo accountInfo);

}
