/**
 * $RCSfile: JingleTransport.java,v $
 * $Revision: 1.1 $
 * $Date: 2007/07/02 17:41:08 $
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
import org.jivesoftware.smackx.jingle.nat.ICECandidate;
import org.jivesoftware.smackx.jingle.nat.TransportCandidate;

/**
 * A jingle transport extension
 * 
 * @author Alvaro Saurin <alvaro.saurin@gmail.com>
 */
public class JingleTransport implements PacketExtension {

	// static

	/**
	 * RTP-ICE profile
	 */
	public static class Ice extends JingleTransport {
		public static class Candidate extends JingleTransportCandidate {
			/**
			 * Default constructor
			 */
			public Candidate() {
				super();
			}

			/**
			 * Constructor with a transport candidate.
			 */
			public Candidate(final TransportCandidate tc) {
				super(tc);
			}

			/**
			 * Get the elements of this candidate.
			 */
			@Override
			protected String getChildElements() {
				final StringBuilder buf = new StringBuilder();

				if (transportCandidate != null) {// && transportCandidate
													// instanceof ICECandidate)
													// {
					final ICECandidate tci = (ICECandidate) transportCandidate;

					// We convert the transportElement candidate to XML here...
					buf.append(" generation=\"").append(tci.getGeneration())
							.append("\"");
					buf.append(" ip=\"").append(tci.getIp()).append("\"");
					buf.append(" port=\"").append(tci.getPort()).append("\"");
					buf.append(" network=\"").append(tci.getNetwork())
							.append("\"");
					buf.append(" username=\"").append(tci.getUsername())
							.append("\"");
					buf.append(" password=\"").append(tci.getPassword())
							.append("\"");
					buf.append(" preference=\"").append(tci.getPreference())
							.append("\"");
					buf.append(" type=\"").append(tci.getType()).append("\"");

					// Optional elements
					if (transportCandidate.getName() != null) {
						buf.append(" name=\"").append(tci.getName())
								.append("\"");
					}
				}

				return buf.toString();
			}

		}

		public static final String NAMESPACE = "urn:xmpp:tmp:jingle:transports:ice-udp";

		public Ice() {
			super();
			setNamespace(NAMESPACE);
		}

		/**
		 * Add a transport candidate
		 * 
		 * @see org.jivesoftware.smackx.packet.JingleTransport#addCandidate(org.jivesoftware.smackx.packet.JingleTransport.JingleTransportCandidate)
		 */
		@Override
		public void addCandidate(final JingleTransportCandidate candidate) {
			super.addCandidate(candidate);
		}

		/**
		 * Get the list of candidates. As a "raw-udp" transport can only contain
		 * one candidate, we use the first in the list...
		 * 
		 * @see org.jivesoftware.smackx.packet.JingleTransport#getCandidates()
		 */
		@Override
		public List<JingleTransportCandidate> getCandidatesList() {
			final List<JingleTransportCandidate> copy = new ArrayList<JingleTransportCandidate>();
			final List<JingleTransportCandidate> superCandidatesList = super
					.getCandidatesList();
			for (int i = 0; i < superCandidatesList.size(); i++) {
				copy.add(superCandidatesList.get(i));
			}

			return copy;
		}
	}

	// non-static

	/**
	 * Candidate element in the transport. This class acts as a view of the
	 * "TransportCandidate" in the Jingle space.
	 * 
	 * @author Alvaro Saurin
	 * @see TransportCandidate
	 */
	public static abstract class JingleTransportCandidate {

		public static final String NODENAME = "candidate";

		/**
		 * Returns the XML element name of the element.
		 * 
		 * @return the XML element name of the element.
		 */
		public static String getElementName() {
			return NODENAME;
		}

		// The transport candidate contained in the element.
		protected TransportCandidate transportCandidate;

		/**
		 * Creates a new TransportNegotiator child.
		 */
		public JingleTransportCandidate() {
			super();
		}

		/**
		 * Creates a new TransportNegotiator child.
		 * 
		 * @param candidate
		 *            the jmf transport candidate
		 */
		public JingleTransportCandidate(final TransportCandidate candidate) {
			super();
			setMediaTransport(candidate);
		}

		/**
		 * Get the list of attributes.
		 * 
		 * @return a string with the list of attributes.
		 */
		protected String getChildElements() {
			return null;
		}

		/**
		 * Get the current transportElement candidate.
		 * 
		 * @return the transportElement candidate
		 */
		public TransportCandidate getMediaTransport() {
			return transportCandidate;
		}

		/**
		 * Set the transportElement candidate.
		 * 
		 * @param cand
		 *            the transportElement candidate
		 */
		public void setMediaTransport(final TransportCandidate cand) {
			if (cand != null) {
				transportCandidate = cand;
			}
		}

		/**
		 * Obtain a valid XML representation of a trancport candidate
		 * 
		 * @return A string containing the XML dump of the transport candidate.
		 */
		public String toXML() {
			final StringBuilder buf = new StringBuilder();
			final String childElements = getChildElements();

			if (transportCandidate != null && childElements != null) {
				buf.append("<").append(getElementName()).append(" ");
				buf.append(childElements);
				buf.append("/>");
			}

			return buf.toString();
		}
	}

	/**
	 * Raw UDP profile.
	 */
	public static class RawUdp extends JingleTransport {
		/**
		 * Raw-udp transport candidate.
		 */
		public static class Candidate extends JingleTransportCandidate {
			/**
			 * Default constructor
			 */
			public Candidate() {
				super();
			}

			/**
			 * Constructor with a transport candidate.
			 */
			public Candidate(final TransportCandidate tc) {
				super(tc);
			}

			/**
			 * Get the elements of this candidate.
			 */
			@Override
			protected String getChildElements() {
				final StringBuilder buf = new StringBuilder();

				if (transportCandidate != null
						&& transportCandidate instanceof TransportCandidate.Fixed) {
					final TransportCandidate.Fixed tcf = (TransportCandidate.Fixed) transportCandidate;

					buf.append(" generation=\"").append(tcf.getGeneration())
							.append("\"");
					buf.append(" ip=\"").append(tcf.getIp()).append("\"");
					buf.append(" port=\"").append(tcf.getPort()).append("\"");

					// Optional parameters
					final String name = tcf.getName();
					if (name != null) {
						buf.append(" name=\"").append(name).append("\"");
					}
				}
				return buf.toString();
			}

		}

		public static final String NAMESPACE = "http://www.xmpp.org/extensions/xep-0177.html#ns";

		public RawUdp() {
			super();
			setNamespace(NAMESPACE);
		}

		/**
		 * Add a transport candidate
		 * 
		 * @see org.jivesoftware.smackx.packet.JingleTransport#addCandidate(org.jivesoftware.smackx.packet.JingleTransport.JingleTransportCandidate)
		 */
		@Override
		public void addCandidate(final JingleTransportCandidate candidate) {
			candidates.clear();
			super.addCandidate(candidate);
		}

		/**
		 * Get the list of candidates. As a "raw-udp" transport can only contain
		 * one candidate, we use the first in the list...
		 * 
		 * @see org.jivesoftware.smackx.packet.JingleTransport#getCandidates()
		 */
		@Override
		public List<JingleTransportCandidate> getCandidatesList() {
			final List<JingleTransportCandidate> copy = new ArrayList<JingleTransportCandidate>();
			final List<JingleTransportCandidate> superCandidatesList = super
					.getCandidatesList();
			if (superCandidatesList.size() > 0) {
				copy.add(superCandidatesList.get(0));
			}

			return copy;
		}
	}

	public static final String NODENAME = "transport";

	protected String namespace;

	protected final List<JingleTransportCandidate> candidates = new ArrayList<JingleTransportCandidate>();

	/**
	 * Default constructor.
	 */
	public JingleTransport() {
		super();
	}

	/**
	 * Copy constructor.
	 * 
	 * @param tr
	 *            the other jingle transport.
	 */
	public JingleTransport(final JingleTransport tr) {
		if (tr != null) {
			namespace = tr.namespace;

			if (tr.candidates.size() > 0) {
				candidates.addAll(tr.candidates);
			}
		}
	}

	/**
	 * Utility constructor, with a transport candidate element.
	 * 
	 * @param candidate
	 *            A transport candidate element to add.
	 */
	public JingleTransport(final JingleTransportCandidate candidate) {
		super();
		addCandidate(candidate);
	}

	/**
	 * Adds a transport candidate.
	 * 
	 * @param candidate
	 *            the candidate
	 */
	public void addCandidate(final JingleTransportCandidate candidate) {
		if (candidate != null) {
			synchronized (candidates) {
				candidates.add(candidate);
			}
		}
	}

	/**
	 * Get an iterator for the candidates
	 * 
	 * @return an iterator
	 */
	public Iterator getCandidates() {
		return Collections.unmodifiableList(getCandidatesList()).iterator();
	}

	/**
	 * Get the number of transport candidates.
	 * 
	 * @return The number of transport candidates contained.
	 */
	public int getCandidatesCount() {
		return getCandidatesList().size();
	}

	/**
	 * Get the list of candidates.
	 * 
	 * @return The candidates list.
	 */
	public List<JingleTransportCandidate> getCandidatesList() {
		ArrayList<JingleTransportCandidate> res = null;
		synchronized (candidates) {
			res = new ArrayList<JingleTransportCandidate>(candidates);
		}
		return res;
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
	 * Get the namespace.
	 * 
	 * @return The namespace
	 */
	@Override
	public String getNamespace() {
		return namespace;
	}

	// Subclasses

	/**
	 * Set the namespace.
	 * 
	 * @param ns
	 *            The namespace
	 */
	protected void setNamespace(final String ns) {
		namespace = ns;
	}

	/**
	 * Return the XML representation for this element.
	 */
	@Override
	public String toXML() {
		final StringBuilder buf = new StringBuilder();

		buf.append("<").append(getElementName()).append(" xmlns=\"");
		buf.append(getNamespace()).append("\" ");

		synchronized (candidates) {
			if (getCandidatesCount() > 0) {
				buf.append(">");
				final Iterator iter = getCandidates();

				while (iter.hasNext()) {
					final JingleTransportCandidate candidate = (JingleTransportCandidate) iter
							.next();
					buf.append(candidate.toXML());
				}
				buf.append("</").append(getElementName()).append(">");
			} else {
				buf.append("/>");
			}
		}

		return buf.toString();
	}
}
