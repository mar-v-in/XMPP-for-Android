package xmpp.client.service;

import xmpp.client.account.AccountInfo;
import xmpp.client.service.chat.ChatSession;
import xmpp.client.service.chat.ParcelableMessage;
import xmpp.client.service.user.User;

public interface MainServiceListener {

	boolean isActiveAccount(AccountInfo accountInfo);

	boolean isActiveChatSession(AccountInfo accountInfo, ChatSession session);

	void processMessage(AccountInfo accountInfo, ChatSession session,
			ParcelableMessage message);

	void sendRosterAdded(AccountInfo accountInfo, User user);

	void sendRosterDeleted(AccountInfo accountInfo, String uid);

	void sendRosterUpdated(AccountInfo accountInfo, User user);

	void sendSessionUpdated(AccountInfo accountInfo, ChatSession session);

}
