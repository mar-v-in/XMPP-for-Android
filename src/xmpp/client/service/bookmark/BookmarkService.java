package xmpp.client.service.bookmark;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smackx.bookmark.BookmarkManager;

import xmpp.client.service.Service;

public class BookmarkService {
	private BookmarkManager mBookmarkManager;
	private ConferenceBookmarkHandler mConferenceBookmarkHandler;

	public BookmarkService(Service service) {
		try {
			mBookmarkManager = BookmarkManager.getBookmarkManager(service.getConnection());
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
