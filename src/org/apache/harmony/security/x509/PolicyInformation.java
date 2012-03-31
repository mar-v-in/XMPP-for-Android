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

package org.apache.harmony.security.x509;

import org.apache.harmony.security.asn1.ASN1Any;
import org.apache.harmony.security.asn1.ASN1Oid;
import org.apache.harmony.security.asn1.ASN1Sequence;
import org.apache.harmony.security.asn1.ASN1Type;
import org.apache.harmony.security.asn1.BerInputStream;
import org.apache.harmony.security.asn1.ObjectIdentifier;

/**
 * The class encapsulates the ASN.1 DER encoding/decoding work with
 * PolicyInformation structure which is a subpart of certificatePolicies (as
 * specified in RFC 3280 - Internet X.509 Public Key Infrastructure. Certificate
 * and Certificate Revocation List (CRL) Profile.
 * http://www.ietf.org/rfc/rfc3280.txt):
 * 
 * <pre>
 *  PolicyInformation ::= SEQUENCE {
 *       policyIdentifier   CertPolicyId,
 *       policyQualifiers   SEQUENCE SIZE (1..MAX) OF
 *                               PolicyQualifierInfo OPTIONAL 
 *  }
 * </pre>
 * 
 * TODO: This class is not fully implemented, implemented only work with OIDs.
 */

public class PolicyInformation {

	// the value of policyIdentifier field of the structure
	private final String policyIdentifier;
	// the ASN.1 encoded form of PolicyInformation
	private byte[] encoding;

	/**
	 * ASN.1 DER X.509 PolicyInformation encoder/decoder class.
	 */
	public static final ASN1Sequence ASN1 = new ASN1Sequence(new ASN1Type[] {
			ASN1Oid.getInstance(), ASN1Any.getInstance() }) {
		{
			setOptional(1);
		}

		@Override
		protected Object getDecodedObject(BerInputStream in) {
			final Object[] values = (Object[]) in.content;
			return new PolicyInformation(
					ObjectIdentifier.toString((int[]) values[0]));
		}

		@Override
		protected void getValues(Object object, Object[] values) {

			final PolicyInformation pi = (PolicyInformation) object;

			values[0] = ObjectIdentifier.toIntArray(pi.policyIdentifier);
		}
	};

	/**
	 * TODO
	 * 
	 * @param policyIdentifier
	 *            : String
	 */
	public PolicyInformation(String policyIdentifier) {
		this.policyIdentifier = policyIdentifier;
	}

	/**
	 * Places the string representation of extension value into the StringBuffer
	 * object.
	 */
	public void dumpValue(StringBuffer buffer) {
		buffer.append("Policy Identifier [") //$NON-NLS-1$
				.append(policyIdentifier).append(']');
	}

	/**
	 * Returns ASN.1 encoded form of this X.509 PolicyInformation value.
	 * 
	 * @return a byte array containing ASN.1 encode form.
	 */
	public byte[] getEncoded() {
		if (encoding == null) {
			encoding = ASN1.encode(this);
		}
		return encoding;
	}

	/**
	 * Returns the value of policyIdentifier field of the structure.
	 * 
	 * @return policyIdentifier
	 */
	public String getPolicyIdentifier() {
		return policyIdentifier;
	}
}
