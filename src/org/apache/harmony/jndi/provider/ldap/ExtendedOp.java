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

import org.apache.harmony.javax.naming.NamingException;
import org.apache.harmony.javax.naming.ldap.ExtendedRequest;
import org.apache.harmony.javax.naming.ldap.ExtendedResponse;
import org.apache.harmony.jndi.provider.ldap.asn1.ASN1Decodable;
import org.apache.harmony.jndi.provider.ldap.asn1.ASN1Encodable;
import org.apache.harmony.jndi.provider.ldap.asn1.LdapASN1Constant;
import org.apache.harmony.jndi.provider.ldap.asn1.Utils;

public class ExtendedOp implements LdapOperation, ASN1Encodable, ASN1Decodable {

	private final ExtendedRequest request;

	private ExtendedResponse response;

	private LdapResult result;

	private Object[] responseValues;

	public ExtendedOp(ExtendedRequest request) {
		this.request = request;
	}

	@Override
	public void decodeValues(Object[] values) {
		result = new LdapResult();
		result.decodeValues(values);
		responseValues = values;
	}

	@Override
	public void encodeValues(Object[] values) {
		values[0] = Utils.getBytes(request.getID());
		values[1] = request.getEncodedValue();
	}

	public ExtendedRequest getExtendedRequest() {
		return request;
	}

	public ExtendedResponse getExtendedResponse() throws NamingException {

		if (result != null && result.getResultCode() == 0
				&& responseValues != null) {
			String id = null;
			if (responseValues[4] != null) {
				id = Utils.getString(responseValues[4]);
			}
			final byte[] value = (byte[]) responseValues[5];
			int length = 0;
			if (value != null) {
				length = value.length;
			}

			response = request.createExtendedResponse(id, value, 0, length);

		}
		return response;
	}

	@Override
	public ASN1Encodable getRequest() {
		return this;
	}

	@Override
	public int getRequestId() {
		return LdapASN1Constant.OP_EXTENDED_REQUEST;
	}

	@Override
	public ASN1Decodable getResponse() {
		return this;
	}

	@Override
	public int getResponseId() {
		return LdapASN1Constant.OP_EXTENDED_RESPONSE;
	}

	@Override
	public LdapResult getResult() {
		return result;
	}
}
