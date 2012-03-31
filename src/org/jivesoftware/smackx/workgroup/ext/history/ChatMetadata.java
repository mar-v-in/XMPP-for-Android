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

package org.jivesoftware.smackx.workgroup.ext.history;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.provider.IQProvider;
import org.jivesoftware.smackx.workgroup.util.MetaDataUtils;
import org.xmlpull.v1.XmlPullParser;

public class ChatMetadata extends IQ {

	/**
	 * An IQProvider for Metadata packets.
	 * 
	 * @author Derek DeMoro
	 */
	public static class Provider implements IQProvider {

		public Provider() {
			super();
		}

		@Override
		public IQ parseIQ(XmlPullParser parser) throws Exception {
			final ChatMetadata chatM = new ChatMetadata();

			boolean done = false;
			while (!done) {
				final int eventType = parser.next();
				if (eventType == XmlPullParser.START_TAG) {
					if (parser.getName().equals("sessionID")) {
						chatM.setSessionID(parser.nextText());
					} else if (parser.getName().equals("metadata")) {
						final Map<String, List<String>> map = MetaDataUtils
								.parseMetaData(parser);
						chatM.setMetadata(map);
					}
				} else if (eventType == XmlPullParser.END_TAG) {
					if (parser.getName().equals(ELEMENT_NAME)) {
						done = true;
					}
				}
			}

			return chatM;
		}
	}

	/**
	 * Element name of the packet extension.
	 */
	public static final String ELEMENT_NAME = "chat-metadata";

	/**
	 * Namespace of the packet extension.
	 */
	public static final String NAMESPACE = "http://jivesoftware.com/protocol/workgroup";

	private String sessionID;

	private Map<String, List<String>> map = new HashMap<String, List<String>>();

	@Override
	public String getChildElementXML() {
		final StringBuilder buf = new StringBuilder();

		buf.append("<").append(ELEMENT_NAME).append(" xmlns=\"")
				.append(NAMESPACE).append("\">");
		buf.append("<sessionID>").append(getSessionID()).append("</sessionID>");
		buf.append("</").append(ELEMENT_NAME).append("> ");

		return buf.toString();
	}

	public Map<String, List<String>> getMetadata() {
		return map;
	}

	public String getSessionID() {
		return sessionID;
	}

	public void setMetadata(Map<String, List<String>> metadata) {
		map = metadata;
	}

	public void setSessionID(String sessionID) {
		this.sessionID = sessionID;
	}
}
