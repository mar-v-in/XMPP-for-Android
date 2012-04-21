package xmpp.client.service.jingle;

import org.jivesoftware.smackx.jingle.JingleSession;
import org.jivesoftware.smackx.jingle.media.JingleMediaSession;
import org.jivesoftware.smackx.jingle.media.PayloadType;
import org.jivesoftware.smackx.jingle.nat.TransportCandidate;

import android.util.Log;

public class AndroidJingleMediaSession extends JingleMediaSession {
	private final static String TAG = "JingleMediaSession";

	public AndroidJingleMediaSession(PayloadType payloadType,
			TransportCandidate remote, TransportCandidate local,
			String mediaLocator, JingleSession jingleSession) {
		super(payloadType, remote, local, mediaLocator, jingleSession);
		Log.d(TAG, "ctr");
		// TODO Auto-generated method stub
	}

	@Override
	public void initialize() {
		Log.d(TAG, "init");
		// TODO Auto-generated method stub

	}

	@Override
	public void setTrasmit(boolean active) {
		Log.d(TAG, "setTsmt" + active);
		// TODO Auto-generated method stub

	}

	@Override
	public void startReceive() {
		Log.d(TAG, "startRcv");
		// TODO Auto-generated method stub

	}

	@Override
	public void startTrasmit() {
		Log.d(TAG, "startTsmt");
		// TODO Auto-generated method stub

	}

	@Override
	public void stopReceive() {
		Log.d(TAG, "stopRcv");
		// TODO Auto-generated method stub

	}

	@Override
	public void stopTrasmit() {
		Log.d(TAG, "stopTsmt");
		// TODO Auto-generated method stub

	}

}
