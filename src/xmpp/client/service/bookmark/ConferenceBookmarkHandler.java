package xmpp.client.service.bookmark;

import java.util.Collection;

import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smackx.bookmark.BookmarkManager;
import org.jivesoftware.smackx.bookmark.BookmarkedConference;

import xmpp.client.service.chat.multi.MultiUserChatInfo;
import xmpp.client.service.chat.multi.MultiUserChatInfoList;

public class ConferenceBookmarkHandler {

	BookmarkManager mBookmarkManager;

	public ConferenceBookmarkHandler(BookmarkManager bm) {
		mBookmarkManager = bm;
	}

	public void addConference(MultiUserChatInfo mucinfo) {
		try {
			mBookmarkManager.addBookmarkedConference(mucinfo.getName(),
					mucinfo.getJid(), mucinfo.isAutoJoin(),
					mucinfo.getNickname(), mucinfo.getPassword());
		} catch (final XMPPException e) {
			throw new RuntimeException(e);
		}
	}

	public MultiUserChatInfo getMultiUserChatInfo(String id) {
		for (final MultiUserChatInfo mucinfo : getMultiUserChatInfoList()) {
			if (mucinfo.getJid().equalsIgnoreCase(id)) {
				return mucinfo;
			}
		}
		return null;
	}

	public MultiUserChatInfoList getMultiUserChatInfoList() {
		try {
			final Collection<BookmarkedConference> bcc = mBookmarkManager
					.getBookmarkedConferences();
			final MultiUserChatInfoList list = new MultiUserChatInfoList();
			for (final BookmarkedConference bc : bcc) {
				list.add(new MultiUserChatInfo(bc));
			}
			return list;
		} catch (final XMPPException e) {
			throw new RuntimeException(e);
		}
	}

}
