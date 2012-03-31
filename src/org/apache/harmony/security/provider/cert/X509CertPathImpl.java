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
 * @author Alexander Y. Kleymenov
 */

package org.apache.harmony.security.provider.cert;

import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertPath;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.apache.harmony.security.asn1.ASN1Any;
import org.apache.harmony.security.asn1.ASN1Explicit;
import org.apache.harmony.security.asn1.ASN1Implicit;
import org.apache.harmony.security.asn1.ASN1Oid;
import org.apache.harmony.security.asn1.ASN1Sequence;
import org.apache.harmony.security.asn1.ASN1SequenceOf;
import org.apache.harmony.security.asn1.ASN1Type;
import org.apache.harmony.security.asn1.BerInputStream;
import org.apache.harmony.security.internal.nls.Messages;
import org.apache.harmony.security.pkcs7.ContentInfo;
import org.apache.harmony.security.pkcs7.SignedData;
import org.apache.harmony.security.x509.Certificate;

/**
 * This class is an implementation of X.509 CertPath. This implementation
 * provides ability to create the instance of X.509 Certification Path by
 * several means:<br>
 * 
 * &nbsp; 1. It can be created over the list of X.509 certificates
 * (implementations of X509Certificate class) provided in constructor.<br>
 * 
 * &nbsp; 2. It can be created by means of <code>getInstance</code> methods on
 * the base of the following ASN.1 DER encoded forms:<br>
 * 
 * &nbsp;&nbsp; - PkiPath as defined in ITU-T Recommendation X.509(2000)
 * Corrigendum 1(2001) (can be seen at
 * ftp://ftp.bull.com/pub/OSIdirectory/DefectResolution
 * /TechnicalCorrigenda/ApprovedTechnicalCorrigendaToX
 * .509/8%7CX.509-TC1(4th).pdf) <br>
 * &nbsp;&nbsp; - PKCS #7 SignedData object provided in the form of ContentInfo
 * structure. CertPath object is generated on the base of certificates presented
 * in <code>certificates</code> field of the SignedData object which in its turn
 * is retrieved from ContentInfo structure. (see
 * http://www.ietf.org/rfc/rfc2315.txt for more info on PKCS #7) <br>
 * &nbsp;
 */
public class X509CertPathImpl extends CertPath {

	/**
	 * @serial
	 */
	private static final long serialVersionUID = 7989755106209515436L;

	// supported encoding types:
	public static final int PKI_PATH = 0;
	public static final int PKCS7 = 1;

	// supported encoding names
	private static final String[] encodingsArr = new String[] {
			"PkiPath", "PKCS7" }; //$NON-NLS-1$ //$NON-NLS-2$
	static final List<String> encodings = Collections.unmodifiableList(Arrays
			.asList(encodingsArr));

	/**
	 * Generates certification path object on the base of PkiPath encoded form
	 * provided via array of bytes.
	 * 
	 * @throws CertificateException
	 *             if some problems occurred during the decoding.
	 */
	public static X509CertPathImpl getInstance(byte[] in)
			throws CertificateException {
		try {
			return (X509CertPathImpl) ASN1.decode(in);
		} catch (final IOException e) {
			throw new CertificateException(Messages.getString("security.15E", //$NON-NLS-1$
					e.getMessage()));
		}
	}

	/**
	 * Generates certification path object on the base of encoding provided via
	 * array of bytes. The format of provided encoded form is specified by
	 * parameter <code>encoding</code>.
	 * 
	 * @throws CertificateException
	 *             if specified encoding form is not supported, or some problems
	 *             occurred during the decoding.
	 */
	public static X509CertPathImpl getInstance(byte[] in, String encoding)
			throws CertificateException {
		if (!encodings.contains(encoding)) {
			throw new CertificateException(Messages.getString(
					"security.15F", encoding)); //$NON-NLS-1$
		}
		try {
			if (encodingsArr[0].equals(encoding)) {
				// generate the object from PkiPath encoded form
				return (X509CertPathImpl) ASN1.decode(in);
			} else {
				// generate the object from PKCS #7 encoded form
				final ContentInfo ci = (ContentInfo) ContentInfo.ASN1
						.decode(in);
				final SignedData sd = ci.getSignedData();
				if (sd == null) {
					throw new CertificateException(
							Messages.getString("security.160")); //$NON-NLS-1$
				}
				List<Certificate> certs = sd.getCertificates();
				if (certs == null) {
					certs = new ArrayList<Certificate>();
				}
				final List<X509Certificate> result = new ArrayList<X509Certificate>();
				for (int i = 0; i < certs.size(); i++) {
					result.add(new X509CertImpl(certs.get(i)));
				}
				return new X509CertPathImpl(result, PKCS7, ci.getEncoded());
			}
		} catch (final IOException e) {
			throw new CertificateException(Messages.getString("security.15E", //$NON-NLS-1$
					e.getMessage()));
		}
	}

	/**
	 * Generates certification path object on the base of PkiPath encoded form
	 * provided via input stream.
	 * 
	 * @throws CertificateException
	 *             if some problems occurred during the decoding.
	 */
	public static X509CertPathImpl getInstance(InputStream in)
			throws CertificateException {
		try {
			return (X509CertPathImpl) ASN1.decode(in);
		} catch (final IOException e) {
			throw new CertificateException(Messages.getString("security.15E", //$NON-NLS-1$
					e.getMessage()));
		}
	}

	/**
	 * Generates certification path object on the base of encoding provided via
	 * input stream. The format of provided encoded form is specified by
	 * parameter <code>encoding</code>.
	 * 
	 * @throws CertificateException
	 *             if specified encoding form is not supported, or some problems
	 *             occurred during the decoding.
	 */
	public static X509CertPathImpl getInstance(InputStream in, String encoding)
			throws CertificateException {
		if (!encodings.contains(encoding)) {
			throw new CertificateException(Messages.getString(
					"security.15F", encoding)); //$NON-NLS-1$
		}
		try {
			if (encodingsArr[0].equals(encoding)) {
				// generate the object from PkiPath encoded form
				return (X509CertPathImpl) ASN1.decode(in);
			} else {
				// generate the object from PKCS #7 encoded form
				final ContentInfo ci = (ContentInfo) ContentInfo.ASN1
						.decode(in);
				final SignedData sd = ci.getSignedData();
				if (sd == null) {
					throw new CertificateException(
							Messages.getString("security.160")); //$NON-NLS-1$
				}
				List<?> certs = sd.getCertificates();
				if (certs == null) {
					// empty chain of certificates
					certs = new ArrayList<Object>();
				}
				final List<X509Certificate> result = new ArrayList<X509Certificate>();
				for (int i = 0; i < certs.size(); i++) {
					result.add(new X509CertImpl((Certificate) certs.get(i)));
				}
				return new X509CertPathImpl(result, PKCS7, ci.getEncoded());
			}
		} catch (final IOException e) {
			throw new CertificateException(Messages.getString("security.15E", //$NON-NLS-1$
					e.getMessage()));
		}
	}

	// the list of certificates representing this certification path
	private final List<X509Certificate> certificates;

	// PkiPath encoding of the certification path
	private byte[] pkiPathEncoding;

	// PKCS7 encoding of the certification path
	private byte[] pkcs7Encoding;

	/**
	 * ASN.1 DER Encoder/Decoder for PkiPath structure.
	 */
	public static final ASN1SequenceOf ASN1 = new ASN1SequenceOf(
			ASN1Any.getInstance()) {

		/**
		 * Builds the instance of X509CertPathImpl on the base of the list of
		 * ASN.1 encodings of X.509 certificates provided via PkiPath structure.
		 * This method participates in decoding process.
		 */
		@Override
		public Object getDecodedObject(BerInputStream in) throws IOException {
			// retrieve the decoded content
			final List<?> encodings = (List<?>) in.content;
			final int size = encodings.size();
			final List<X509Certificate> certificates = new ArrayList<X509Certificate>(
					size);
			for (int i = 0; i < size; i++) {
				// create the X.509 certificate on the base of its encoded form
				// and add it to the list.
				certificates.add(new X509CertImpl(
						(Certificate) Certificate.ASN1
								.decode((byte[]) encodings.get(i))));
			}
			// create and return the resulting object
			return new X509CertPathImpl(certificates, PKI_PATH, in.getEncoded());
		}

		/**
		 * Returns the Collection of the encoded form of certificates contained
		 * in the X509CertPathImpl object to be encoded. This method
		 * participates in encoding process.
		 */
		@Override
		public Collection<?> getValues(Object object) {
			// object to be encoded
			final X509CertPathImpl cp = (X509CertPathImpl) object;
			// if it has no certificates in it - create the sequence of size 0
			if (cp.certificates == null) {
				return new ArrayList<Object>();
			}
			final int size = cp.certificates.size();
			final List<byte[]> encodings = new ArrayList<byte[]>(size);
			try {
				for (int i = 0; i < size; i++) {
					// get the encoded form of certificate and place it into the
					// list to be encoded in PkiPath format
					encodings.add(cp.certificates.get(i).getEncoded());
				}
			} catch (final CertificateEncodingException e) {
				throw new IllegalArgumentException(
						Messages.getString("security.161")); //$NON-NLS-1$
			}
			return encodings;
		}
	};

	//
	// encoder for PKCS#7 SignedData
	// it is assumed that only certificate field is important
	// all other fields contain precalculated encodings:
	//
	// encodes X509CertPathImpl objects
	//
	private static final ASN1Sequence ASN1_SIGNED_DATA = new ASN1Sequence(
			new ASN1Type[] {
					// version ,digestAlgorithms, content info
					ASN1Any.getInstance(),
					// certificates
					new ASN1Implicit(0, ASN1),
					// set of crls is optional and is missed here
					ASN1Any.getInstance(),// signers info
			}) {

		// precalculated ASN.1 encodings for
		// version ,digestAlgorithms, content info field of SignedData
		private final byte[] PRECALCULATED_HEAD = new byte[] { 0x02, 0x01,
				0x01,// version (v1)
				0x31, 0x00,// empty set of DigestAlgorithms
				0x30, 0x03, 0x06, 0x01, 0x00 // empty ContentInfo with oid=0
		};

		// precalculated empty set of SignerInfos
		private final byte[] SIGNERS_INFO = new byte[] { 0x31, 0x00 };

		// stub to prevent using the instance as decoder
		@Override
		public Object decode(BerInputStream in) throws IOException {
			throw new RuntimeException(
					"Invalid use of encoder for PKCS#7 SignedData object");
		}

		@Override
		protected void getValues(Object object, Object[] values) {
			values[0] = PRECALCULATED_HEAD;
			values[1] = object; // pass X509CertPathImpl object
			values[2] = SIGNERS_INFO;
		}
	};

	// ---------------------------------------------------------------------
	// ---- java.security.cert.CertPath abstract method implementations ----
	// ---------------------------------------------------------------------

	private static final ASN1Sequence PKCS7_SIGNED_DATA_OBJECT = new ASN1Sequence(
			new ASN1Type[] { ASN1Any.getInstance(), // contentType
					new ASN1Explicit(0, ASN1_SIGNED_DATA) // SignedData
			}) {

		// precalculated ASN.1 encoding for SignedData object oid
		private final byte[] SIGNED_DATA_OID = ASN1Oid.getInstance().encode(
				ContentInfo.SIGNED_DATA);

		// stub to prevent using the instance as decoder
		@Override
		public Object decode(BerInputStream in) throws IOException {
			throw new RuntimeException(
					"Invalid use of encoder for PKCS#7 SignedData object");
		}

		@Override
		protected void getValues(Object object, Object[] values) {
			values[0] = SIGNED_DATA_OID;
			values[1] = object; // pass X509CertPathImpl object
		}
	};

	/**
	 * Creates an instance of X.509 Certification Path over the specified list
	 * of certificates.
	 * 
	 * @throws CertificateException
	 *             if some of the object in the list is not an instance of
	 *             subclass of X509Certificate.
	 */
	public X509CertPathImpl(List<?> certs) throws CertificateException {
		super("X.509"); //$NON-NLS-1$
		final int size = certs.size();
		certificates = new ArrayList<X509Certificate>(size);
		for (int i = 0; i < size; i++) {
			final Object cert = certs.get(i);
			if (!(cert instanceof X509Certificate)) {
				throw new CertificateException(
						Messages.getString("security.15D")); //$NON-NLS-1$
			}
			certificates.add((X509Certificate) cert);
		}
	}

	/*
	 * Internally used constructor. Creates an X.509 Certification Path over the
	 * specified list of certificates and their encoded form of specified type.
	 * 
	 * @param certs - the list of certificates
	 * 
	 * @param type - the type of the encoded form on the base of which this list
	 * of certificates had been built.
	 * 
	 * @param encoding - encoded form of certification path.
	 */
	private X509CertPathImpl(List<X509Certificate> certs, int type,
			byte[] encoding) {
		super("X.509"); //$NON-NLS-1$
		if (type == PKI_PATH) {
			pkiPathEncoding = encoding;
		} else { // PKCS7
			pkcs7Encoding = encoding;
		}
		// We do not need the type check and list cloning here,
		// because it has been done during decoding.
		certificates = certs;
	}

	/**
	 * @see java.security.cert.CertPath#getCertificates() method documentation
	 *      for more info
	 */
	@Override
	public List<X509Certificate> getCertificates() {
		return Collections.unmodifiableList(certificates);
	}

	/**
	 * @see java.security.cert.CertPath#getEncoded() method documentation for
	 *      more info
	 */
	@Override
	public byte[] getEncoded() throws CertificateEncodingException {
		if (pkiPathEncoding == null) {
			pkiPathEncoding = ASN1.encode(this);
		}
		final byte[] result = new byte[pkiPathEncoding.length];
		System.arraycopy(pkiPathEncoding, 0, result, 0, pkiPathEncoding.length);
		return result;
	}

	/**
	 * @see java.security.cert.CertPath#getEncoded(String) method documentation
	 *      for more info
	 */
	@Override
	public byte[] getEncoded(String encoding)
			throws CertificateEncodingException {
		if (!encodings.contains(encoding)) {
			throw new CertificateEncodingException(Messages.getString(
					"security.15F", encoding)); //$NON-NLS-1$
		}
		if (encodingsArr[0].equals(encoding)) {
			// PkiPath encoded form
			return getEncoded();
		} else {
			// PKCS7 encoded form
			if (pkcs7Encoding == null) {
				pkcs7Encoding = PKCS7_SIGNED_DATA_OBJECT.encode(this);
			}
			final byte[] result = new byte[pkcs7Encoding.length];
			System.arraycopy(pkcs7Encoding, 0, result, 0, pkcs7Encoding.length);
			return result;
		}
	}

	/**
	 * @see java.security.cert.CertPath#getEncodings() method documentation for
	 *      more info
	 */
	@Override
	public Iterator<String> getEncodings() {
		return encodings.iterator();
	}
}
