/**
 * $RCSfile$
 * $Revision: 7329 $
 * $Date: 2007-02-28 20:59:28 -0300 (qua, 28 fev 2007) $
 *
 * Copyright 2003-2005 Jive Software.
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

import org.jivesoftware.smack.packet.PacketExtension;
import org.jivesoftware.smackx.jingle.media.PayloadType;

/**
 * Jingle content description.
 * 
 * @author Alvaro Saurin <alvaro.saurin@gmail.com>
 */
public abstract class JingleContentDescription implements PacketExtension {

	// static

	/**
	 * Jingle audio description
	 */
	public static class Audio extends JingleContentDescription {

		public static final String NAMESPACE = "urn:xmpp:tmp:jingle:apps:rtp";

		public Audio() {
			super();
		}

		/**
		 * Utility constructor, with a JinglePayloadType
		 */
		public Audio(final JinglePayloadType pt) {
			super();
			addJinglePayloadType(pt);
		}

		@Override
		public String getNamespace() {
			return NAMESPACE;
		}
	}

	// non-static

	/**
	 * A payload type, contained in a descriptor.
	 * 
	 * @author Alvaro Saurin
	 */
	public static class JinglePayloadType {

		/**
		 * Audio payload type element
		 */
		public static class Audio extends JinglePayloadType {
			public Audio(final PayloadType.Audio audio) {
				super(audio);
			}

			@Override
			protected String getChildAttributes() {
				final StringBuilder buf = new StringBuilder();
				final PayloadType pt = getPayloadType();
				if (pt instanceof PayloadType.Audio) {
					final PayloadType.Audio pta = (PayloadType.Audio) pt;

					buf.append(" clockrate=\"").append(pta.getClockRate())
							.append("\" ");
				}
				return buf.toString();
			}
		}

		public static final String NODENAME = "payload-type";

		/**
		 * Returns the XML element name of the element.
		 * 
		 * @return the XML element name of the element.
		 */
		public static String getElementName() {
			return NODENAME;
		}

		private PayloadType payload;

		/**
		 * Create an empty payload type.
		 */
		public JinglePayloadType() {
			this(null);
		}

		/**
		 * Create a payload type.
		 * 
		 * @param payload
		 *            the payload
		 */
		public JinglePayloadType(final PayloadType payload) {
			super();
			this.payload = payload;
		}

		protected String getChildAttributes() {
			return null;
		}

		/**
		 * Get the payload represented.
		 * 
		 * @return the payload
		 */
		public PayloadType getPayloadType() {
			return payload;
		}

		/**
		 * Set the payload represented.
		 * 
		 * @param payload
		 *            the payload to set
		 */
		public void setPayload(final PayloadType payload) {
			this.payload = payload;
		}

		public String toXML() {
			final StringBuilder buf = new StringBuilder();

			if (payload != null) {
				buf.append("<").append(getElementName()).append(" ");

				// We covert here the payload type to XML
				if (payload.getId() != PayloadType.INVALID_PT) {
					buf.append(" id=\"").append(payload.getId()).append("\"");
				}
				if (payload.getName() != null) {
					buf.append(" name=\"").append(payload.getName())
							.append("\"");
				}
				if (payload.getChannels() != 0) {
					buf.append(" channels=\"").append(payload.getChannels())
							.append("\"");
				}
				if (getChildAttributes() != null) {
					buf.append(getChildAttributes());
				}
				buf.append("/>");
			}
			return buf.toString();
		}
	}

	public static final String NODENAME = "description";

	private final List payloads = new ArrayList();

	/**
	 * Creates a content description..
	 */
	public JingleContentDescription() {
		super();
	}

	/**
	 * Adds a list of payloads to the packet.
	 * 
	 * @param pts
	 *            the payloads to add.
	 */
	public void addAudioPayloadTypes(final List pts) {
		synchronized (payloads) {
			final Iterator ptIter = pts.iterator();
			while (ptIter.hasNext()) {
				final PayloadType.Audio pt = (PayloadType.Audio) ptIter.next();
				addJinglePayloadType(new JinglePayloadType.Audio(pt));
			}
		}
	}

	/**
	 * Adds a audio payload type to the packet.
	 * 
	 * @param pt
	 *            the audio payload type to add.
	 */
	public void addJinglePayloadType(final JinglePayloadType pt) {
		synchronized (payloads) {
			payloads.add(pt);
		}
	}

	/**
	 * Return the list of Payload types contained in the description.
	 * 
	 * @return a list of PayloadType.Audio
	 */
	public ArrayList getAudioPayloadTypesList() {
		final ArrayList result = new ArrayList();
		final Iterator jinglePtsIter = getJinglePayloadTypes();

		while (jinglePtsIter.hasNext()) {
			final JinglePayloadType jpt = (JinglePayloadType) jinglePtsIter
					.next();
			if (jpt instanceof JinglePayloadType.Audio) {
				final JinglePayloadType.Audio jpta = (JinglePayloadType.Audio) jpt;
				result.add(jpta.getPayloadType());
			}
		}

		return result;
	}

	/**
	 * Returns the XML element name of the element.
	 * 
	 * @return the XML element name of the element.
	 */
	@Override
	public String getElementName() {
		return NODENAME;
	}

	/**
	 * Returns an Iterator for the audio payloads in the packet.
	 * 
	 * @return an Iterator for the audio payloads in the packet.
	 */
	public Iterator getJinglePayloadTypes() {
		return Collections.unmodifiableList(getJinglePayloadTypesList())
				.iterator();
	}

	/**
	 * Returns a count of the audio payloads in the Jingle packet.
	 * 
	 * @return the number of audio payloads in the Jingle packet.
	 */
	public int getJinglePayloadTypesCount() {
		synchronized (payloads) {
			return payloads.size();
		}
	}

	/**
	 * Returns a list for the audio payloads in the packet.
	 * 
	 * @return a list for the audio payloads in the packet.
	 */
	public ArrayList getJinglePayloadTypesList() {
		synchronized (payloads) {
			return new ArrayList(payloads);
		}
	}

	/**
	 * Return the namespace.
	 * 
	 * @return The namespace
	 */
	@Override
	public abstract String getNamespace();

	/**
	 * Convert a Jingle description to XML.
	 * 
	 * @return a string with the XML representation
	 */
	@Override
	public String toXML() {
		final StringBuilder buf = new StringBuilder();

		synchronized (payloads) {
			if (payloads.size() > 0) {
				buf.append("<").append(getElementName());
				buf.append(" xmlns=\"").append(getNamespace()).append("\" >");

				final Iterator pt = payloads.listIterator();
				while (pt.hasNext()) {
					final JinglePayloadType pte = (JinglePayloadType) pt.next();
					buf.append(pte.toXML());
				}
				buf.append("</").append(getElementName()).append(">");
			}
		}

		return buf.toString();
	}
}
