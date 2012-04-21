package xmpp.client.service.jingle;

import java.util.ArrayList;
import java.util.List;

import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smackx.jingle.JingleManager;
import org.jivesoftware.smackx.jingle.JingleSession;
import org.jivesoftware.smackx.jingle.JingleSessionRequest;
import org.jivesoftware.smackx.jingle.listeners.JingleListener;
import org.jivesoftware.smackx.jingle.listeners.JingleSessionRequestListener;
import org.jivesoftware.smackx.jingle.media.JingleMediaManager;
import org.jivesoftware.smackx.jingle.nat.BasicTransportManager;

import xmpp.client.service.ConnectionProvider;
import android.util.Log;

public class JingleService implements JingleSessionRequestListener,
		JingleListener {
	JingleManager mJingleManager;
	private static final String TAG = "JingleService";

	public JingleService(ConnectionProvider cp) {
		final List<JingleMediaManager> jingleMediaManagers = new ArrayList<JingleMediaManager>();
		jingleMediaManagers.add(new AndroidJingleMediaManager(
				new BasicTransportManager()));
		mJingleManager = new JingleManager(cp.getConnection(),
				jingleMediaManagers);
		mJingleManager.addJingleSessionRequestListener(this);
		startCall("echo@bot.talk.google.com/bot");
	}

	@Override
	public void sessionRequested(JingleSessionRequest request) {
		Log.d(TAG, "sessionRequested" + request);
		try {
			final JingleSession session = request.accept();
			session.addListener(this);
			session.startIncoming();
		} catch (final XMPPException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void startCall(String jid) {
		Log.d(TAG, "startCall" + jid);
		try {
			final JingleSession session = mJingleManager
					.createOutgoingJingleSession(jid);
			session.addListener(this);
			session.startOutgoing();
		} catch (final XMPPException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
