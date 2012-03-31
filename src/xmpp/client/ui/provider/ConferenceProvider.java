package xmpp.client.ui.provider;

import android.os.Message;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;

public class ConferenceProvider implements SimpleMessageHandlerClient{

	@Override
	public void handleMessage(Message msg) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isReady() {
		return true;
	}
	

}
