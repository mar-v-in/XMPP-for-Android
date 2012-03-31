package xmpp.client.service.bookmark;

import java.util.Collection;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smackx.bookmark.BookmarkManager;
import org.jivesoftware.smackx.bookmark.BookmarkedConference;

public class BookmarkService {
	private BookmarkManager mBookmarkManager;
	public BookmarkService(Connection connection) {
		try {
			mBookmarkManager = BookmarkManager.getBookmarkManager(connection);
		} catch (XMPPException e) {
			throw new RuntimeException(e);
		}
	}
	public Collection<BookmarkedConference> getConferences() {
		try {
			return mBookmarkManager.getBookmarkedConferences();
		} catch (XMPPException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void addConference(String name, String jid, boolean isAutoJoin, String nickname, String password) {
		try {
			mBookmarkManager.addBookmarkedConference(name, jid, isAutoJoin, nickname, password);
		} catch (XMPPException e) {
			throw new RuntimeException(e);
		}
	}
}
