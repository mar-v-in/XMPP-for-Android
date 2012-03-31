/**
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

package org.jivesoftware.smackx.workgroup.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.jivesoftware.smack.util.StringUtils;
import org.jivesoftware.smackx.workgroup.MetaData;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/**
 * Utility class for meta-data parsing and writing.
 * 
 * @author Matt Tucker
 */
public class MetaDataUtils {

	/**
	 * Parses any available meta-data and returns it as a Map of String
	 * name/value pairs. The parser must be positioned at an opening meta-data
	 * tag, or the an empty map will be returned.
	 * 
	 * @param parser
	 *            the XML parser positioned at an opening meta-data tag.
	 * @return the meta-data.
	 * @throws XmlPullParserException
	 *             if an error occurs while parsing the XML.
	 * @throws IOException
	 *             if an error occurs while parsing the XML.
	 */
	public static Map<String, List<String>> parseMetaData(XmlPullParser parser)
			throws XmlPullParserException, IOException {
		int eventType = parser.getEventType();

		// If correctly positioned on an opening meta-data tag, parse meta-data.
		if ((eventType == XmlPullParser.START_TAG)
				&& parser.getName().equals(MetaData.ELEMENT_NAME)
				&& parser.getNamespace().equals(MetaData.NAMESPACE)) {
			final Map<String, List<String>> metaData = new Hashtable<String, List<String>>();

			eventType = parser.nextTag();

			// Keep parsing until we've gotten to end of meta-data.
			while ((eventType != XmlPullParser.END_TAG)
					|| (!parser.getName().equals(MetaData.ELEMENT_NAME))) {
				final String name = parser.getAttributeValue(0);
				final String value = parser.nextText();

				if (metaData.containsKey(name)) {
					final List<String> values = metaData.get(name);
					values.add(value);
				} else {
					final List<String> values = new ArrayList<String>();
					values.add(value);
					metaData.put(name, values);
				}

				eventType = parser.nextTag();
			}

			return metaData;
		}

		return Collections.emptyMap();
	}

	/**
	 * Serializes a Map of String name/value pairs into the meta-data XML
	 * format.
	 * 
	 * @param map
	 *            the Map of meta-data.
	 * @return the meta-data values in XML form.
	 */
	public static String serializeMetaData(Map<String, ?> map) {
		final StringBuilder buf = new StringBuilder();
		if (map != null && map.size() > 0) {
			buf.append("<metadata xmlns=\"http://jivesoftware.com/protocol/workgroup\">");
			for (final Iterator<String> i = map.keySet().iterator(); i
					.hasNext();) {
				final Object key = i.next();
				final Object value = map.get(key);
				if (value instanceof List) {
					@SuppressWarnings("unchecked")
					final List<String> values = (List<String>) map.get(key);
					for (final String string : values) {
						final String v = string;
						buf.append("<value name=\"").append(key).append("\">");
						buf.append(StringUtils.escapeForXML(v));
						buf.append("</value>");
					}
				} else if (value instanceof String) {
					buf.append("<value name=\"").append(key).append("\">");
					buf.append(StringUtils.escapeForXML((String) value));
					buf.append("</value>");
				}
			}
			buf.append("</metadata>");
		}
		return buf.toString();
	}
}
