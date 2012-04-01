package xmpp.client.service.handlers;

import java.util.ArrayList;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

public class SimpleMessageHandler extends Handler {
	private final static String TAG = SimpleMessageHandler.class.getName();

	ArrayList<SimpleMessageHandlerClient> mClients;

	public SimpleMessageHandler() {
		super();
		mClients = new ArrayList<SimpleMessageHandlerClient>();
	}

	public SimpleMessageHandler(Looper looper) {
		super(looper);
		mClients = new ArrayList<SimpleMessageHandlerClient>();
	}

	public SimpleMessageHandler(SimpleMessageHandlerClient client) {
		this();
		addClient(client);
	}

	public SimpleMessageHandler(SimpleMessageHandlerClient client, Looper looper) {
		this(looper);
		addClient(client);
	}

	public void addClient(SimpleMessageHandlerClient client) {
		mClients.add(client);
	}

	public void clearClients() {
		mClients.clear();
	}

	public void delClient(SimpleMessageHandlerClient client) {
		mClients.remove(client);
	}

	@Override
	public void handleMessage(Message msg) {
		for (int i = 0; i < mClients.size(); i++) {
			final SimpleMessageHandlerClient client = mClients.get(i);
			Log.d(TAG, "Sending " + msg.toString() + " to " + client.toString());
			if (client != null && client.isReady()) {
				client.handleMessage(msg);
			}
		}
	}
}
