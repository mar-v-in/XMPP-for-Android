package xmpp.client.service.bookmark;

import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smackx.bookmark.BookmarkManager;

import xmpp.client.service.ConnectionProvider;

public class BookmarkService {
	private BookmarkManager mBookmarkManager;
	private ConferenceBookmarkHandler mConferenceBookmarkHandler;

	public BookmarkService(ConnectionProvider connectionProvider) {
		try {
			mBookmarkManager = BookmarkManager
					.getBookmarkManager(connectionProvider.getConnection());
			mConferenceBookmarkHandler = new ConferenceBookmarkHandler(
					mBookmarkManager);
		} catch (final XMPPException e) {
			throw new RuntimeException(e);
		}
	}

	public ConferenceBookmarkHandler getConferenceHandler() {
		return mConferenceBookmarkHandler;
	}
}
