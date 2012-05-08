package xmpp.client.service.bookmark;

import java.util.Collection;

import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smackx.bookmark.BookmarkManager;
import org.jivesoftware.smackx.bookmark.BookmarkedConference;

import xmpp.client.service.chat.multi.MultiChatInfo;
import xmpp.client.service.chat.multi.MultiChatInfoList;

public class ConferenceBookmarkHandler {

	BookmarkManager mBookmarkManager;

	public ConferenceBookmarkHandler(BookmarkManager bm) {
		mBookmarkManager = bm;
	}

	public void addConference(MultiChatInfo mucinfo) {
		try {
			mBookmarkManager.addBookmarkedConference(mucinfo.getName(),
					mucinfo.getJid(), mucinfo.isAutoJoin(),
					mucinfo.getNickname(), mucinfo.getPassword());
		} catch (final XMPPException e) {
			throw new RuntimeException(e);
		}
	}

	public MultiChatInfo getMultiUserChatInfo(String id) {
		for (final MultiChatInfo mucinfo : getMultiUserChatInfoList()) {
			if (mucinfo.getJid().equalsIgnoreCase(id)) {
				return mucinfo;
			}
		}
		return null;
	}

	public MultiChatInfoList getMultiUserChatInfoList() {
		try {
			final Collection<BookmarkedConference> bcc = mBookmarkManager
					.getBookmarkedConferences();
			final MultiChatInfoList list = new MultiChatInfoList();
			for (final BookmarkedConference bc : bcc) {
				list.add(new MultiChatInfo(bc));
			}
			return list;
		} catch (final XMPPException e) {
			throw new RuntimeException(e);
		}
	}

}
