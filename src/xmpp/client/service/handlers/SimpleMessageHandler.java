package xmpp.client.service.handlers;

import java.util.ArrayList;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class SimpleMessageHandler extends Handler {
	ArrayList<SimpleMessageHandlerClient> mClients;
	
	public SimpleMessageHandler() {
		super();
		mClients = new ArrayList<SimpleMessageHandlerClient>();
	}

	public SimpleMessageHandler(SimpleMessageHandlerClient client) {
		this();
		addClient(client);
	}
	
	public SimpleMessageHandler(Looper looper) {
		super(looper);
		mClients = new ArrayList<SimpleMessageHandlerClient>();
	}

	public SimpleMessageHandler(SimpleMessageHandlerClient client, Looper looper) {
		this(looper);
		addClient(client);
	}
	
	public void addClient(SimpleMessageHandlerClient client) {
		mClients.add(client);
	}
	
	public void delClient(SimpleMessageHandlerClient client) {
		mClients.remove(client);
	}
	
	public void clearClients() {
		mClients.clear();
	}

	@Override
	public void handleMessage(Message msg) {
		for (SimpleMessageHandlerClient client : mClients) {
			if (client != null && client.isReady()) {
				client.handleMessage(msg);
			}
		}
	}
}
