package xmpp.client.ui.provider;

import xmpp.client.service.Signals;
import xmpp.client.service.chat.multi.MultiUserChatInfoList;
import xmpp.client.service.handlers.SimpleMessageHandler;
import xmpp.client.service.handlers.SimpleMessageHandlerClient;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;

public class ConferenceProvider implements SimpleMessageHandlerClient, Signals {

	private static final String TAG = ConferenceProvider.class.getName();
	private final Messenger mMessenger;
	private final Messenger mService;
	private MultiUserChatInfoList mMultiUserChatInfoList;

	public ConferenceProvider(Messenger localMessenger,
			Messenger serviceMessenger) {
		mMessenger = localMessenger;
		mService = serviceMessenger;
		mMultiUserChatInfoList = new MultiUserChatInfoList();
	}

	public ConferenceProvider(Messenger localMessenger,
			Messenger serviceMessenger, SimpleMessageHandler handler) {
		this(localMessenger, serviceMessenger);
		handler.addClient(this);
	}

	public MultiUserChatInfoList getList() {
		return mMultiUserChatInfoList;
	}

	@Override
	public void handleMessage(Message msg) {
		try {
			final Bundle b = msg.getData();
			switch (msg.what) {
			case SIG_IS_ONLINE:
				msg = Message.obtain(null, SIG_GET_MUCS);
				msg.replyTo = mMessenger;
				mService.send(msg);
				break;
			case SIG_GET_MUCS:
				b.setClassLoader(MultiUserChatInfoList.class.getClassLoader());
				mMultiUserChatInfoList = b.getParcelable("mucs");
				break;
			}
		} catch (final Exception e) {
			Log.w(TAG, "handleMessage", e);

		}
	}

	@Override
	public boolean isReady() {
		return true;
	}

	public int size() {
		if (mMultiUserChatInfoList != null) {
			return mMultiUserChatInfoList.size();
		}
		return 0;
	}

}
