package xmpp.client.service;

import org.jivesoftware.smack.XMPPConnection;

public interface ConnectionProvider {
	public XMPPConnection getConnection();
}
