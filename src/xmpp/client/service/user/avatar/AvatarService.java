package xmpp.client.service.user.avatar;

import java.util.HashMap;

import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smackx.packet.VCard;

import xmpp.client.service.ConnectionProvider;
import xmpp.client.service.user.User;
import xmpp.client.service.user.UserState;
import android.util.Log;

public class AvatarService implements ConnectionProvider, AvatarServiceProvider {
	private static final String TAG = AvatarService.class.getName();
	ConnectionProvider mConnectionProvider;
	HashMap<String, byte[]> mCache;

	public AvatarService(ConnectionProvider connectionProvider) {
		mConnectionProvider = connectionProvider;
		mCache = new HashMap<String, byte[]>();
	}

	public byte[] getAvatar(String jid) {
		final VCard vCard = new VCard();
		try {
			vCard.load(getConnection(), jid);
			Log.i(TAG, vCard.toXML());
			final byte[] a = vCard.getAvatar();
			final String ah = vCard.getAvatarHash();
			mCache.put(ah, a);
			return a;
		} catch (final XMPPException e) {
			Log.e(TAG, "getAvatar", e);
		}
		return null;
	}

	public byte[] getAvatar(String avatarSHA, String jid) {
		if (avatarSHA == null || avatarSHA.isEmpty()) {
			return null;
		}
		if (mCache.containsKey(avatarSHA)) {
			return mCache.get(avatarSHA);
		}

		return null;
	}

	public byte[] getAvatar(User user) {

		if (mCache.containsKey(user.getUserState().getAvatarSHA())) {
			return mCache.get(user.getUserState().getAvatarSHA());
		}
		if (!user.getUserState().isOnline()) {
			return null;
		}
		return null;
		// return getAvatar(user.getUserLogin());
	}

	public byte[] getAvatar(UserState userState, String jid) {
		return getAvatar(userState.getAvatarSHA(), jid);
	}

	@Override
	public AvatarService getAvatarService() {
		return this;
	}

	@Override
	public XMPPConnection getConnection() {
		return mConnectionProvider.getConnection();
	}
}
