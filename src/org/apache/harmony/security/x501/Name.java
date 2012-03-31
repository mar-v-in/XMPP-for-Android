/*
 *  Licensed to the Apache Software Foundation (ASF) under one or more
 *  contributor license agreements.  See the NOTICE file distributed with
 *  this work for additional information regarding copyright ownership.
 *  The ASF licenses this file to You under the Apache License, Version 2.0
 *  (the "License"); you may not use this file except in compliance with
 *  the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

/**
 * @author Alexander V. Esin
 */

package org.apache.harmony.security.x501;

import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

import javax.security.auth.x500.X500Principal;

import org.apache.harmony.security.asn1.ASN1SequenceOf;
import org.apache.harmony.security.asn1.ASN1SetOf;
import org.apache.harmony.security.asn1.BerInputStream;
import org.apache.harmony.security.asn1.DerInputStream;
import org.apache.harmony.security.internal.nls.Messages;
import org.apache.harmony.security.x509.DNParser;

/**
 * X.501 Name
 */
public class Name {

	// ASN.1 DER encoding of Name
	private volatile byte[] encoded;

	// RFC1779 string
	private String rfc1779String;

	// RFC2253 string
	private String rfc2253String;

	// CANONICAL string
	private String canonicalString;

	// Collection of RDNs
	private final List rdn;

	/**
	 * According to RFC 3280 (http://www.ietf.org/rfc/rfc3280.txt) X.501 Name
	 * structure is defined as follows:
	 * 
	 * Name ::= CHOICE { RDNSequence }
	 * 
	 * RDNSequence ::= SEQUENCE OF RelativeDistinguishedName
	 * 
	 * RelativeDistinguishedName ::= SET OF AttributeTypeAndValue
	 * 
	 */

	public static final ASN1SetOf ASN1_RDN = new ASN1SetOf(
			AttributeTypeAndValue.ASN1);

	public static final ASN1SequenceOf ASN1 = new ASN1SequenceOf(ASN1_RDN) {

		@Override
		public Object getDecodedObject(BerInputStream in) {
			return new Name((List) in.content);
		}

		@Override
		public Collection getValues(Object object) {
			return ((Name) object).rdn; // FIXME what about get method?
		}
	};

	/**
	 * Creates new <code>Name</code> instance from its DER encoding
	 * 
	 * @param encoding
	 *            - ASN.1 DER encoding
	 * @throws IOException
	 *             - if encoding is wrong
	 */
	public Name(byte[] encoding) throws IOException {

		final DerInputStream in = new DerInputStream(encoding);

		if (in.getEndOffset() != encoding.length) {
			throw new IOException(Messages.getString("security.111")); //$NON-NLS-1$
		}

		ASN1.decode(in);

		rdn = (List) in.content;
	}

	// Creates Name instance
	private Name(List rdn) {
		this.rdn = rdn;
	}

	/**
	 * Creates new <code>Name</code> instance
	 * 
	 * @param name
	 *            - Name as String
	 * @throws IOException
	 *             - if string is wrong
	 */
	public Name(String name) throws IOException {
		rdn = new DNParser(name).parse();
	}

	/**
	 * Gets encoded form of DN
	 * 
	 * @return return encoding, no copying is performed
	 */
	public byte[] getEncoded() {
		if (encoded == null) {
			encoded = ASN1.encode(this);
		}
		return encoded;
	}

	/**
	 * Returns Relative Distinguished Name as <code>String</code> according the
	 * format requested
	 * 
	 * @param format
	 *            Name format requested
	 * @return Relative Distinguished Name as <code>String</code> according the
	 *         format requested
	 */
	public String getName(String format) {

		//
		// check X500Principal constants first
		//
		if (X500Principal.RFC1779.equals(format)) {

			if (rfc1779String == null) {
				rfc1779String = getName0(format);
			}
			return rfc1779String;

		} else if (X500Principal.RFC2253.equals(format)) {

			if (rfc2253String == null) {
				rfc2253String = getName0(format);
			}
			return rfc2253String;

		} else if (X500Principal.CANONICAL.equals(format)) {

			if (canonicalString == null) {
				canonicalString = getName0(format);
			}
			return canonicalString;

		}
		//
		// compare ignore case
		//
		else if (X500Principal.RFC1779.equalsIgnoreCase(format)) {

			if (rfc1779String == null) {
				rfc1779String = getName0(X500Principal.RFC1779);
			}
			return rfc1779String;

		} else if (X500Principal.RFC2253.equalsIgnoreCase(format)) {

			if (rfc2253String == null) {
				rfc2253String = getName0(X500Principal.RFC2253);
			}
			return rfc2253String;

		} else if (X500Principal.CANONICAL.equalsIgnoreCase(format)) {

			if (canonicalString == null) {
				canonicalString = getName0(X500Principal.CANONICAL);
			}
			return canonicalString;

		} else {
			throw new IllegalArgumentException(Messages.getString(
					"security.177", format)); //$NON-NLS-1$
		}
	}

	/**
	 * Returns Relative Distinguished Name as <code>String</code> according the
	 * format requested, format is int value
	 * 
	 * @param format
	 *            Name format requested
	 * @return Relative Distinguished Name as <code>String</code> according the
	 *         format requested
	 */
	private String getName0(String format) {

		final StringBuffer name = new StringBuffer();

		// starting with the last element and moving to the first.
		for (int i = rdn.size() - 1; i >= 0; i--) {
			List atavList = (List) rdn.get(i);

			if (X500Principal.CANONICAL == format) {
				final List sortedList = new LinkedList(atavList);
				Collections.sort(sortedList,
						new AttributeTypeAndValueComparator());
				atavList = sortedList;
			}

			// Relative Distinguished Name to string
			final Iterator it = atavList.iterator();
			while (it.hasNext()) {
				final AttributeTypeAndValue _ava = (AttributeTypeAndValue) it
						.next();
				_ava.appendName(format, name);
				if (it.hasNext()) {
					// multi-valued RDN
					if (X500Principal.RFC1779 == format) {
						name.append(" + "); //$NON-NLS-1$
					} else {
						name.append('+');
					}
				}
			}

			if (i != 0) {
				name.append(',');
				if (format == X500Principal.RFC1779) {
					name.append(' ');
				}
			}
		}

		String sName = name.toString();
		if (X500Principal.CANONICAL.equals(format)) {
			sName = sName.toLowerCase(Locale.US);
		}
		return sName;
	}

	/**
	 * Returns <code>X500Principal</code> instance corresponding to this
	 * <code>Name</code> instance
	 * 
	 * @return equivalent X500Principal object
	 */
	public X500Principal getX500Principal() {
		return new X500Principal(getName0(X500Principal.RFC2253));
	}
}
