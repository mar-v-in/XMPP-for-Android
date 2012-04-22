package org.jivesoftware.smackx.packet;

import java.util.ArrayList;
import java.util.List;

import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.provider.IQProvider;
import org.xmlpull.v1.XmlPullParser;

/**
 * IQ packet used for discovering the user's shared groups and for getting the
 * answer back from the server.
 * <p>
 * 
 * Important note: This functionality is not part of the XMPP spec and it will
 * only work with Wildfire.
 * 
 * @author Gaston Dombiak
 */
public class SharedGroupsInfo extends IQ {

	/**
	 * Internal Search service Provider.
	 */
	public static class Provider implements IQProvider {

		/**
		 * Provider Constructor.
		 */
		public Provider() {
			super();
		}

		@Override
		public IQ parseIQ(XmlPullParser parser) throws Exception {
			final SharedGroupsInfo groupsInfo = new SharedGroupsInfo();

			boolean done = false;
			while (!done) {
				final int eventType = parser.next();
				if (eventType == XmlPullParser.START_TAG
						&& parser.getName().equals("group")) {
					groupsInfo.getGroups().add(parser.nextText());
				} else if (eventType == XmlPullParser.END_TAG) {
					if (parser.getName().equals("sharedgroup")) {
						done = true;
					}
				}
			}
			return groupsInfo;
		}
	}

	private final List<String> groups = new ArrayList<String>();

	@Override
	public String getChildElementXML() {
		final StringBuilder buf = new StringBuilder();
		buf.append("<sharedgroup xmlns=\"http://www.jivesoftware.org/protocol/sharedgroup\">");
		for (final String string : groups) {
			buf.append("<group>").append(string).append("</group>");
		}
		buf.append("</sharedgroup>");
		return buf.toString();
	}

	/**
	 * Returns a collection with the shared group names returned from the
	 * server.
	 * 
	 * @return collection with the shared group names returned from the server.
	 */
	public List<String> getGroups() {
		return groups;
	}
}
