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
 * @author Vladimir N. Molotkov, Stepan M. Mishura
 */

package org.apache.harmony.security.asn1;

import java.io.IOException;

import org.apache.harmony.security.internal.nls.Messages;

/**
 * This class represents ASN.1 Bitstring type.
 * 
 * @see http://asn1.elibel.tm.fr/en/standards/index.htm
 */

public class ASN1BitString extends ASN1StringType {

	/**
	 * Default implementation for ASN.1 Named Bitstring type
	 * 
	 * The default implementation works with encoding that is mapped to array of
	 * boolean.
	 */
	public static class ASN1NamedBitList extends ASN1BitString {

		private static final byte[] SET_MASK = { (byte) 128, 64, 32, 16, 8, 4,
				2, 1 };

		private static final BitString emptyString = new BitString(
				new byte[] {}, 0);

		private static final int INDEFINITE_SIZE = -1;

		private final int minBits;

		private final int maxBits;

		public ASN1NamedBitList() {
			minBits = INDEFINITE_SIZE;
			maxBits = INDEFINITE_SIZE;
		}

		public ASN1NamedBitList(int minBits) {
			this.minBits = minBits;
			maxBits = INDEFINITE_SIZE;
		}

		public ASN1NamedBitList(int minBits, int maxBits) {
			this.minBits = minBits;
			this.maxBits = maxBits;
		}

		@Override
		public Object getDecodedObject(BerInputStream in) throws IOException {

			boolean[] value = null;

			final int unusedBits = in.buffer[in.contentOffset];
			final int bitsNumber = (in.length - 1) * 8 - unusedBits;

			if (maxBits == INDEFINITE_SIZE) {
				if (minBits == INDEFINITE_SIZE) {
					value = new boolean[bitsNumber];
				} else {
					if (bitsNumber > minBits) {
						value = new boolean[bitsNumber];
					} else {
						value = new boolean[minBits];
					}
				}
			} else {
				if (bitsNumber > maxBits) {
					throw new ASN1Exception(Messages.getString("security.97")); //FIXME message //$NON-NLS-1$
				}
				value = new boolean[maxBits];
			}

			if (bitsNumber == 0) {
				// empty bit string
				return value;
			}

			int i = 1;
			int j = 0;
			byte octet = in.buffer[in.contentOffset + i];
			for (final int size = in.length - 1; i < size; i++) {

				for (int k = 0; k < 8; k++, j++) {
					value[j] = (SET_MASK[k] & octet) != 0;
				}
				i++;
				octet = in.buffer[in.contentOffset + i];
			}

			// final octet
			for (int k = 0; k < (8 - unusedBits); k++, j++) {
				value[j] = (SET_MASK[k] & octet) != 0;
			}

			return value;
		}

		@Override
		public void setEncodingContent(BerOutputStream out) {

			final boolean[] toEncode = (boolean[]) out.content;

			int index = toEncode.length - 1;
			while (index > -1 && !toEncode[index]) {
				index--;
			}

			if (index == -1) {
				out.content = emptyString;
				out.length = 1;
			} else {
				final int unusedBits = 7 - index % 8;
				final byte[] bytes = new byte[index / 8 + 1];

				int j = 0;
				index = bytes.length - 1;
				for (int i = 0; i < index; i++) {
					for (int k = 0; k < 8; k++, j++) {
						if (toEncode[j]) {
							bytes[i] = (byte) (bytes[i] | SET_MASK[k]);
						}
					}
				}

				// final octet
				for (int k = 0; k < (8 - unusedBits); k++, j++) {
					if (toEncode[j]) {
						bytes[index] = (byte) (bytes[index] | SET_MASK[k]);
					}
				}

				out.content = new BitString(bytes, unusedBits);
				out.length = bytes.length + 1;
			}
		}
	}

	// default implementation
	private static final ASN1BitString ASN1 = new ASN1BitString();

	/**
	 * Returns ASN.1 Bitstring type default implementation
	 * 
	 * The default implementation works with encoding that is represented as
	 * BitString object.
	 * 
	 * @return ASN.1 Bitstring type default implementation
	 * @see org.apache.harmony.security.asn1.BitString
	 */
	public static ASN1BitString getInstance() {
		return ASN1;
	}

	//
	//
	// Decode
	//
	//

	/**
	 * Constructs ASN.1 Bitstring type
	 * 
	 * The constructor is provided for inheritance purposes when there is a need
	 * to create a custom ASN.1 Bitstring type. To get a default implementation
	 * it is recommended to use getInstance() method.
	 */
	public ASN1BitString() {
		super(TAG_BITSTRING);
	}

	@Override
	public Object decode(BerInputStream in) throws IOException {

		in.readBitString();

		if (in.isVerify) {
			return null;
		}
		return getDecodedObject(in);
	}

	//
	// Encode
	//

	@Override
	public void encodeContent(BerOutputStream out) {
		out.encodeBitString();
	}

	/**
	 * Extracts BitString object from BER input stream.
	 * 
	 * @param in
	 *            - BER input stream
	 * @return BitString object
	 */
	@Override
	public Object getDecodedObject(BerInputStream in) throws IOException {
		final byte[] bytes = new byte[in.length - 1];
		System.arraycopy(in.buffer, in.contentOffset + 1, bytes, 0,
				in.length - 1);
		return new BitString(bytes, in.buffer[in.contentOffset]);
	}

	//
	//
	// Named Bit List
	//
	//

	@Override
	public void setEncodingContent(BerOutputStream out) {
		out.length = ((BitString) out.content).bytes.length + 1;
	}
}