/**
 * $RCSfile$
 * $Revision: 7071 $
 * $Date: 2007-02-11 18:59:05 -0600 (Sun, 11 Feb 2007) $
 *
 * Copyright 2003-2007 Jive Software.
 *
 * All rights reserved. Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.jivesoftware.smackx.provider;

import org.jivesoftware.smack.packet.PacketExtension;
import org.jivesoftware.smack.provider.PacketExtensionProvider;
import org.jivesoftware.smackx.packet.MUCUser;
import org.xmlpull.v1.XmlPullParser;

/**
 * The MUCUserProvider parses packets with extended presence information about
 * roles and affiliations.
 * 
 * @author Gaston Dombiak
 */
public class MUCUserProvider implements PacketExtensionProvider {

	/**
	 * Creates a new MUCUserProvider. ProviderManager requires that every
	 * PacketExtensionProvider has a public, no-argument constructor
	 */
	public MUCUserProvider() {
	}

	private MUCUser.Decline parseDecline(XmlPullParser parser) throws Exception {
		boolean done = false;
		final MUCUser.Decline decline = new MUCUser.Decline();
		decline.setFrom(parser.getAttributeValue("", "from"));
		decline.setTo(parser.getAttributeValue("", "to"));
		while (!done) {
			final int eventType = parser.next();
			if (eventType == XmlPullParser.START_TAG) {
				if (parser.getName().equals("reason")) {
					decline.setReason(parser.nextText());
				}
			} else if (eventType == XmlPullParser.END_TAG) {
				if (parser.getName().equals("decline")) {
					done = true;
				}
			}
		}
		return decline;
	}

	private MUCUser.Destroy parseDestroy(XmlPullParser parser) throws Exception {
		boolean done = false;
		final MUCUser.Destroy destroy = new MUCUser.Destroy();
		destroy.setJid(parser.getAttributeValue("", "jid"));
		while (!done) {
			final int eventType = parser.next();
			if (eventType == XmlPullParser.START_TAG) {
				if (parser.getName().equals("reason")) {
					destroy.setReason(parser.nextText());
				}
			} else if (eventType == XmlPullParser.END_TAG) {
				if (parser.getName().equals("destroy")) {
					done = true;
				}
			}
		}
		return destroy;
	}

	/**
	 * Parses a MUCUser packet (extension sub-packet).
	 * 
	 * @param parser
	 *            the XML parser, positioned at the starting element of the
	 *            extension.
	 * @return a PacketExtension.
	 * @throws Exception
	 *             if a parsing error occurs.
	 */
	@Override
	public PacketExtension parseExtension(XmlPullParser parser)
			throws Exception {
		final MUCUser mucUser = new MUCUser();
		boolean done = false;
		while (!done) {
			final int eventType = parser.next();
			if (eventType == XmlPullParser.START_TAG) {
				if (parser.getName().equals("invite")) {
					mucUser.setInvite(parseInvite(parser));
				}
				if (parser.getName().equals("item")) {
					mucUser.setItem(parseItem(parser));
				}
				if (parser.getName().equals("password")) {
					mucUser.setPassword(parser.nextText());
				}
				if (parser.getName().equals("status")) {
					mucUser.setStatus(new MUCUser.Status(parser
							.getAttributeValue("", "code")));
				}
				if (parser.getName().equals("decline")) {
					mucUser.setDecline(parseDecline(parser));
				}
				if (parser.getName().equals("destroy")) {
					mucUser.setDestroy(parseDestroy(parser));
				}
			} else if (eventType == XmlPullParser.END_TAG) {
				if (parser.getName().equals("x")) {
					done = true;
				}
			}
		}

		return mucUser;
	}

	private MUCUser.Invite parseInvite(XmlPullParser parser) throws Exception {
		boolean done = false;
		final MUCUser.Invite invite = new MUCUser.Invite();
		invite.setFrom(parser.getAttributeValue("", "from"));
		invite.setTo(parser.getAttributeValue("", "to"));
		while (!done) {
			final int eventType = parser.next();
			if (eventType == XmlPullParser.START_TAG) {
				if (parser.getName().equals("reason")) {
					invite.setReason(parser.nextText());
				}
			} else if (eventType == XmlPullParser.END_TAG) {
				if (parser.getName().equals("invite")) {
					done = true;
				}
			}
		}
		return invite;
	}

	private MUCUser.Item parseItem(XmlPullParser parser) throws Exception {
		boolean done = false;
		final MUCUser.Item item = new MUCUser.Item(parser.getAttributeValue("",
				"affiliation"), parser.getAttributeValue("", "role"));
		item.setNick(parser.getAttributeValue("", "nick"));
		item.setJid(parser.getAttributeValue("", "jid"));
		while (!done) {
			final int eventType = parser.next();
			if (eventType == XmlPullParser.START_TAG) {
				if (parser.getName().equals("actor")) {
					item.setActor(parser.getAttributeValue("", "jid"));
				}
				if (parser.getName().equals("reason")) {
					item.setReason(parser.nextText());
				}
			} else if (eventType == XmlPullParser.END_TAG) {
				if (parser.getName().equals("item")) {
					done = true;
				}
			}
		}
		return item;
	}
}
