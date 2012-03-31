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
import org.apache.harmony.javax.naming.ldap.Control;
import org.apache.harmony.javax.naming.ldap.UnsolicitedNotification;
import org.apache.harmony.jndi.provider.ldap.asn1.ASN1Decodable;
import org.apache.harmony.jndi.provider.ldap.asn1.Utils;

public class UnsolicitedNotificationImpl implements UnsolicitedNotification,
		ASN1Decodable {

	private static final long serialVersionUID = 3063973693971731355L;

	private LdapResult result;

	private String oid;

	private byte[] encodedValue;

	private Control[] controls;

	@Override
	public void decodeValues(Object[] values) {
		result = new LdapResult();
		result.decodeValues(values);
		if (values[4] != null) {
			oid = Utils.getString(values[4]);
		}
		if (values[5] != null) {
			encodedValue = (byte[]) values[5];
		}
	}

	@Override
	public Control[] getControls() throws NamingException {
		return controls;
	}

	@Override
	public byte[] getEncodedValue() {
		return encodedValue;
	}

	@Override
	public NamingException getException() {
		return LdapUtils.getExceptionFromResult(result);
	}

	@Override
	public String getID() {
		return oid;
	}

	@Override
	public String[] getReferrals() {
		return result.getReferrals();
	}

	public void setControls(Control[] controls) {
		this.controls = controls;
	}

}
