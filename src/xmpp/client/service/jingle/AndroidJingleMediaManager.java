package xmpp.client.service.jingle;

import java.util.ArrayList;
import java.util.List;

import org.jivesoftware.smackx.jingle.JingleSession;
import org.jivesoftware.smackx.jingle.media.JingleMediaManager;
import org.jivesoftware.smackx.jingle.media.JingleMediaSession;
import org.jivesoftware.smackx.jingle.media.PayloadType;
import org.jivesoftware.smackx.jingle.nat.JingleTransportManager;
import org.jivesoftware.smackx.jingle.nat.TransportCandidate;

import android.util.Log;

public class AndroidJingleMediaManager extends JingleMediaManager {
	private static final String TAG = "JingleMediaManager";

	public AndroidJingleMediaManager(JingleTransportManager transportManager) {
		super(transportManager);
		Log.d(TAG, "ctr");
		// TODO Auto-generated constructor stub
	}

	@Override
	public JingleMediaSession createMediaSession(PayloadType payloadType,
			TransportCandidate remote, TransportCandidate local,
			JingleSession jingleSession) {
		Log.d(TAG, "createMediaSession");
		return new AndroidJingleMediaSession(payloadType, remote, local, null,
				jingleSession);
	}

	@Override
	public List<PayloadType> getPayloads() {
		Log.d(TAG, "getPayloads");
		final List<PayloadType> payloads = new ArrayList<PayloadType>();
		payloads.add(new PayloadType.Audio(8, "PCMA", 1, 8000));
		return payloads;
	}

}
