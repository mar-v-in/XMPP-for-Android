/**
 * $Revision$
 * $Date$
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

package org.jivesoftware.smackx.workgroup.packet;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.jivesoftware.smack.packet.PacketExtension;
import org.jivesoftware.smack.provider.PacketExtensionProvider;
import org.jivesoftware.smackx.workgroup.agent.WorkgroupQueue;
import org.xmlpull.v1.XmlPullParser;

public class QueueOverview implements PacketExtension {

	public static class Provider implements PacketExtensionProvider {

		@Override
		public PacketExtension parseExtension(XmlPullParser parser)
				throws Exception {
			int eventType = parser.getEventType();
			final QueueOverview queueOverview = new QueueOverview();
			final SimpleDateFormat dateFormat = new SimpleDateFormat(
					DATE_FORMAT);

			if (eventType != XmlPullParser.START_TAG) {
				// throw exception
			}

			eventType = parser.next();
			while ((eventType != XmlPullParser.END_TAG)
					|| (!ELEMENT_NAME.equals(parser.getName()))) {
				if ("count".equals(parser.getName())) {
					queueOverview.setUserCount(Integer.parseInt(parser
							.nextText()));
				} else if ("time".equals(parser.getName())) {
					queueOverview.setAverageWaitTime(Integer.parseInt(parser
							.nextText()));
				} else if ("oldest".equals(parser.getName())) {
					queueOverview.setOldestEntry((dateFormat.parse(parser
							.nextText())));
				} else if ("status".equals(parser.getName())) {
					queueOverview.setStatus(WorkgroupQueue.Status
							.fromString(parser.nextText()));
				}

				eventType = parser.next();

				if (eventType != XmlPullParser.END_TAG) {
					// throw exception
				}
			}

			if (eventType != XmlPullParser.END_TAG) {
				// throw exception
			}

			return queueOverview;
		}
	}

	/**
	 * Element name of the packet extension.
	 */
	public static String ELEMENT_NAME = "notify-queue";

	/**
	 * Namespace of the packet extension.
	 */
	public static String NAMESPACE = "http://jabber.org/protocol/workgroup";
	private static final String DATE_FORMAT = "yyyyMMdd'T'HH:mm:ss";

	private final SimpleDateFormat dateFormat = new SimpleDateFormat(
			DATE_FORMAT);
	private int averageWaitTime;
	private Date oldestEntry;
	private int userCount;

	private WorkgroupQueue.Status status;

	QueueOverview() {
		averageWaitTime = -1;
		oldestEntry = null;
		userCount = -1;
		status = null;
	}

	public int getAverageWaitTime() {
		return averageWaitTime;
	}

	@Override
	public String getElementName() {
		return ELEMENT_NAME;
	}

	@Override
	public String getNamespace() {
		return NAMESPACE;
	}

	public Date getOldestEntry() {
		return oldestEntry;
	}

	public WorkgroupQueue.Status getStatus() {
		return status;
	}

	public int getUserCount() {
		return userCount;
	}

	void setAverageWaitTime(int averageWaitTime) {
		this.averageWaitTime = averageWaitTime;
	}

	void setOldestEntry(Date oldestEntry) {
		this.oldestEntry = oldestEntry;
	}

	void setStatus(WorkgroupQueue.Status status) {
		this.status = status;
	}

	void setUserCount(int userCount) {
		this.userCount = userCount;
	}

	@Override
	public String toXML() {
		final StringBuilder buf = new StringBuilder();
		buf.append("<").append(ELEMENT_NAME).append(" xmlns=\"")
				.append(NAMESPACE).append("\">");

		if (userCount != -1) {
			buf.append("<count>").append(userCount).append("</count>");
		}
		if (oldestEntry != null) {
			buf.append("<oldest>").append(dateFormat.format(oldestEntry))
					.append("</oldest>");
		}
		if (averageWaitTime != -1) {
			buf.append("<time>").append(averageWaitTime).append("</time>");
		}
		if (status != null) {
			buf.append("<status>").append(status).append("</status>");
		}
		buf.append("</").append(ELEMENT_NAME).append(">");

		return buf.toString();
	}
}