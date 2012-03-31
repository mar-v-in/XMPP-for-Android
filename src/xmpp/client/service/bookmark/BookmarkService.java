package xmpp.client.service.bookmark;

import java.util.Collection;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smackx.bookmark.BookmarkManager;
import org.jivesoftware.smackx.bookmark.BookmarkedConference;

import xmpp.client.service.chat.multi.MultiUserChatInfo;
import xmpp.client.service.chat.multi.MultiUserChatInfoList;

public class BookmarkService {
	private BookmarkManager mBookmarkManager;
	public BookmarkService(Connection connection) {
		try {
			mBookmarkManager = BookmarkManager.getBookmarkManager(connection);
		} catch (XMPPException e) {
			throw new RuntimeException(e);
		}
	}
	public MultiUserChatInfoList getConferences() {
		try {
			Collection<BookmarkedConference> bcc = mBookmarkManager.getBookmarkedConferences();
			MultiUserChatInfoList list = new MultiUserChatInfoList();
			for (BookmarkedConference bc : bcc) {
				list.add(new MultiUserChatInfo(bc));
			}
			return list;
		} catch (XMPPException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void addConference(MultiUserChatInfo mucinfo) {
		try {
			mBookmarkManager.addBookmarkedConference(mucinfo.getName(), mucinfo.getJid(), mucinfo.isAutoJoin(), mucinfo.getNickname(), mucinfo.getPassword());
		} catch (XMPPException e) {
			throw new RuntimeException(e);
		}
	}
}
