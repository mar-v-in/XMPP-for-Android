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

package org.apache.harmony.jndi.provider.ldap;

import org.apache.harmony.jndi.provider.ldap.asn1.ASN1ChoiceWrap.ChosenValue;
import org.apache.harmony.jndi.provider.ldap.asn1.ASN1Decodable;
import org.apache.harmony.jndi.provider.ldap.asn1.ASN1Encodable;
import org.apache.harmony.jndi.provider.ldap.asn1.LdapASN1Constant;
import org.apache.harmony.jndi.provider.ldap.asn1.Utils;
import org.apache.harmony.security.asn1.ASN1Integer;

/**
 * Ldap Bind operation
 */
public class BindOp implements LdapOperation {

	private class AuthenticationChoice implements ASN1Encodable {

		private final int index;

		private SaslCredentials sasl;

		private String password;

		public AuthenticationChoice(int index, SaslCredentials sasl) {
			this.index = index;
			this.sasl = sasl;
		}

		public AuthenticationChoice(int index, String password) {
			this.index = index;
			this.password = password;
		}

		@Override
		public void encodeValues(Object[] values) {
			Object value;

			if (index == 0) {
				value = Utils.getBytes(password);
			} else {
				value = sasl;
			}
			values[0] = new ChosenValue(index, value);

		}

		public void setSaslCredentials(byte[] credentials) {
			sasl.setCredentials(credentials);
		}

	}

	private class SaslCredentials implements ASN1Encodable {

		private String mechanism;

		private byte[] credentials;

		public SaslCredentials(String mech, byte[] creds) {
			mechanism = mech;
			credentials = creds;
		}

		@Override
		public void encodeValues(Object[] values) {
			values[0] = Utils.getBytes(mechanism);
			values[1] = credentials;
		}

		public byte[] getCredentials() {
			return credentials;
		}

		public void setCredentials(byte[] credentials) {
			this.credentials = credentials;
		}

	}

	private final String name;

	private byte[] serverSaslCreds; // server's challenge

	private LdapResult result; // result from this Bind operation

	AuthenticationChoice authChoice;

	public BindOp(String dn, String pwd, String saslMechanism, byte[] res) {
		name = dn;

		if (saslMechanism == null) {
			authChoice = new AuthenticationChoice(0, pwd);
		} else {
			final SaslCredentials saslCreds = new SaslCredentials(
					saslMechanism, res);
			authChoice = new AuthenticationChoice(1, saslCreds);
		}
	}

	@Override
	public ASN1Encodable getRequest() {
		return new ASN1Encodable() {
			@Override
			public void encodeValues(Object[] values) {
				values[0] = ASN1Integer.fromIntValue(3);
				values[1] = Utils.getBytes(name);
				values[2] = authChoice;
			}
		};
	}

	@Override
	public int getRequestId() {
		return LdapASN1Constant.OP_BIND_REQUEST;
	}

	@Override
	public ASN1Decodable getResponse() {

		return new ASN1Decodable() {
			@Override
			public void decodeValues(Object[] values) {
				result = new LdapResult();
				result.decodeValues(values);
				if (values[4] != null) {
					serverSaslCreds = (byte[]) values[4];

				}

			}

		};
	}

	@Override
	public int getResponseId() {
		return LdapASN1Constant.OP_BIND_RESPONSE;
	}

	@Override
	public LdapResult getResult() {
		return result;
	}

	public byte[] getServerSaslCreds() {
		return serverSaslCreds;
	}

	public void setSaslCredentials(byte[] credentials) {
		authChoice.setSaslCredentials(credentials);
	}
}
