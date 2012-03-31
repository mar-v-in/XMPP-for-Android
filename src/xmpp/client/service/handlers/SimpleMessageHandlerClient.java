package xmpp.client.service.handlers;

import android.os.Message;

public interface SimpleMessageHandlerClient {
	public void handleMessage(Message msg);

	public boolean isReady();
}
