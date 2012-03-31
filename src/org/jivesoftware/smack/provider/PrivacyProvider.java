package org.jivesoftware.smack.provider;

import java.util.ArrayList;

import org.jivesoftware.smack.packet.DefaultPacketExtension;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Privacy;
import org.jivesoftware.smack.packet.PrivacyItem;
import org.xmlpull.v1.XmlPullParser;

/**
 * The PrivacyProvider parses {@link Privacy} packets. {@link Privacy} Parses
 * the <tt>query</tt> sub-document and creates an instance of {@link Privacy}.
 * For each <tt>item</tt> in the <tt>list</tt> element, it creates an instance
 * of {@link PrivacyItem} and
 * {@link org.jivesoftware.smack.packet.PrivacyItem.PrivacyRule}.
 * 
 * @author Francisco Vives
 */
public class PrivacyProvider implements IQProvider {

	public PrivacyProvider() {
	}

	@Override
	public IQ parseIQ(XmlPullParser parser) throws Exception {
		final Privacy privacy = new Privacy();
		/*
		 * privacy.addExtension(PacketParserUtils.parsePacketExtension(parser
		 * .getName(), parser.getNamespace(), parser));
		 */
		privacy.addExtension(new DefaultPacketExtension(parser.getName(),
				parser.getNamespace()));
		boolean done = false;
		while (!done) {
			final int eventType = parser.next();
			if (eventType == XmlPullParser.START_TAG) {
				if (parser.getName().equals("active")) {
					final String activeName = parser.getAttributeValue("",
							"name");
					if (activeName == null) {
						privacy.setDeclineActiveList(true);
					} else {
						privacy.setActiveName(activeName);
					}
				} else if (parser.getName().equals("default")) {
					final String defaultName = parser.getAttributeValue("",
							"name");
					if (defaultName == null) {
						privacy.setDeclineDefaultList(true);
					} else {
						privacy.setDefaultName(defaultName);
					}
				} else if (parser.getName().equals("list")) {
					parseList(parser, privacy);
				}
			} else if (eventType == XmlPullParser.END_TAG) {
				if (parser.getName().equals("query")) {
					done = true;
				}
			}
		}

		return privacy;
	}

	// Parse the list complex type
	public PrivacyItem parseItem(XmlPullParser parser) throws Exception {
		boolean done = false;
		// Retrieves the required attributes
		final String actionValue = parser.getAttributeValue("", "action");
		final String orderValue = parser.getAttributeValue("", "order");
		final String type = parser.getAttributeValue("", "type");

		/*
		 * According the action value it sets the allow status. The fall-through
		 * action is assumed to be "allow"
		 */
		boolean allow = true;
		if ("allow".equalsIgnoreCase(actionValue)) {
			allow = true;
		} else if ("deny".equalsIgnoreCase(actionValue)) {
			allow = false;
		}
		// Set the order number
		final int order = Integer.parseInt(orderValue);

		// Create the privacy item
		final PrivacyItem item = new PrivacyItem(type, allow, order);
		item.setValue(parser.getAttributeValue("", "value"));

		while (!done) {
			final int eventType = parser.next();
			if (eventType == XmlPullParser.START_TAG) {
				if (parser.getName().equals("iq")) {
					item.setFilterIQ(true);
				}
				if (parser.getName().equals("message")) {
					item.setFilterMessage(true);
				}
				if (parser.getName().equals("presence-in")) {
					item.setFilterPresence_in(true);
				}
				if (parser.getName().equals("presence-out")) {
					item.setFilterPresence_out(true);
				}
			} else if (eventType == XmlPullParser.END_TAG) {
				if (parser.getName().equals("item")) {
					done = true;
				}
			}
		}
		return item;
	}

	// Parse the list complex type
	public void parseList(XmlPullParser parser, Privacy privacy)
			throws Exception {
		boolean done = false;
		final String listName = parser.getAttributeValue("", "name");
		final ArrayList<PrivacyItem> items = new ArrayList<PrivacyItem>();
		while (!done) {
			final int eventType = parser.next();
			if (eventType == XmlPullParser.START_TAG) {
				if (parser.getName().equals("item")) {
					items.add(parseItem(parser));
				}
			} else if (eventType == XmlPullParser.END_TAG) {
				if (parser.getName().equals("list")) {
					done = true;
				}
			}
		}

		privacy.setPrivacyList(listName, items);
	}
}
