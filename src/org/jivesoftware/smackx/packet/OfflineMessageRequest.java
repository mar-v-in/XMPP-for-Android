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

package org.jivesoftware.smackx.packet;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.provider.IQProvider;
import org.xmlpull.v1.XmlPullParser;

/**
 * Represents a request to get some or all the offline messages of a user. This
 * class can also be used for deleting some or all the offline messages of a
 * user.
 * 
 * @author Gaston Dombiak
 */
public class OfflineMessageRequest extends IQ {

	/**
	 * Item child that holds information about offline messages to view or
	 * delete.
	 * 
	 * @author Gaston Dombiak
	 */
	public static class Item {
		private String action;
		private String jid;
		private final String node;

		/**
		 * Creates a new item child.
		 * 
		 * @param node
		 *            the actor's affiliation to the room
		 */
		public Item(String node) {
			this.node = node;
		}

		/**
		 * Returns "view" or "remove" that indicate if the server should return
		 * the specified offline message or delete it.
		 * 
		 * @return "view" or "remove" that indicate if the server should return
		 *         the specified offline message or delete it.
		 */
		public String getAction() {
			return action;
		}

		public String getJid() {
			return jid;
		}

		public String getNode() {
			return node;
		}

		/**
		 * Sets if the server should return the specified offline message or
		 * delete it. Possible values are "view" or "remove".
		 * 
		 * @param action
		 *            if the server should return the specified offline message
		 *            or delete it.
		 */
		public void setAction(String action) {
			this.action = action;
		}

		public void setJid(String jid) {
			this.jid = jid;
		}

		public String toXML() {
			final StringBuilder buf = new StringBuilder();
			buf.append("<item");
			if (getAction() != null) {
				buf.append(" action=\"").append(getAction()).append("\"");
			}
			if (getJid() != null) {
				buf.append(" jid=\"").append(getJid()).append("\"");
			}
			if (getNode() != null) {
				buf.append(" node=\"").append(getNode()).append("\"");
			}
			buf.append("/>");
			return buf.toString();
		}
	}

	public static class Provider implements IQProvider {

		@Override
		public IQ parseIQ(XmlPullParser parser) throws Exception {
			final OfflineMessageRequest request = new OfflineMessageRequest();
			boolean done = false;
			while (!done) {
				final int eventType = parser.next();
				if (eventType == XmlPullParser.START_TAG) {
					if (parser.getName().equals("item")) {
						request.addItem(parseItem(parser));
					} else if (parser.getName().equals("purge")) {
						request.setPurge(true);
					} else if (parser.getName().equals("fetch")) {
						request.setFetch(true);
					}
				} else if (eventType == XmlPullParser.END_TAG) {
					if (parser.getName().equals("offline")) {
						done = true;
					}
				}
			}

			return request;
		}

		private Item parseItem(XmlPullParser parser) throws Exception {
			boolean done = false;
			final Item item = new Item(parser.getAttributeValue("", "node"));
			item.setAction(parser.getAttributeValue("", "action"));
			item.setJid(parser.getAttributeValue("", "jid"));
			while (!done) {
				final int eventType = parser.next();
				if (eventType == XmlPullParser.END_TAG) {
					if (parser.getName().equals("item")) {
						done = true;
					}
				}
			}
			return item;
		}
	}

	private final List<Item> items = new ArrayList<Item>();

	private boolean purge = false;

	private boolean fetch = false;

	/**
	 * Adds an item child that holds information about offline messages to view
	 * or delete.
	 * 
	 * @param item
	 *            the item child that holds information about offline messages
	 *            to view or delete.
	 */
	public void addItem(Item item) {
		synchronized (items) {
			items.add(item);
		}
	}

	@Override
	public String getChildElementXML() {
		final StringBuilder buf = new StringBuilder();
		buf.append("<offline xmlns=\"http://jabber.org/protocol/offline\">");
		synchronized (items) {
			for (int i = 0; i < items.size(); i++) {
				final Item item = items.get(i);
				buf.append(item.toXML());
			}
		}
		if (purge) {
			buf.append("<purge/>");
		}
		if (fetch) {
			buf.append("<fetch/>");
		}
		// Add packet extensions, if any are defined.
		buf.append(getExtensionsXML());
		buf.append("</offline>");
		return buf.toString();
	}

	/**
	 * Returns an Iterator for item childs that holds information about offline
	 * messages to view or delete.
	 * 
	 * @return an Iterator for item childs that holds information about offline
	 *         messages to view or delete.
	 */
	public Iterator<Item> getItems() {
		synchronized (items) {
			return Collections.unmodifiableList(new ArrayList<Item>(items))
					.iterator();
		}
	}

	/**
	 * Returns true if all the offline messages of the user should be retrieved.
	 * 
	 * @return true if all the offline messages of the user should be retrieved.
	 */
	public boolean isFetch() {
		return fetch;
	}

	/**
	 * Returns true if all the offline messages of the user should be deleted.
	 * 
	 * @return true if all the offline messages of the user should be deleted.
	 */
	public boolean isPurge() {
		return purge;
	}

	/**
	 * Sets if all the offline messages of the user should be retrieved.
	 * 
	 * @param fetch
	 *            true if all the offline messages of the user should be
	 *            retrieved.
	 */
	public void setFetch(boolean fetch) {
		this.fetch = fetch;
	}

	/**
	 * Sets if all the offline messages of the user should be deleted.
	 * 
	 * @param purge
	 *            true if all the offline messages of the user should be
	 *            deleted.
	 */
	public void setPurge(boolean purge) {
		this.purge = purge;
	}
}
