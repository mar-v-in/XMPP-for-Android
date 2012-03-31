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

package org.apache.harmony.jndi.provider.ldap.sasl;

import java.util.Hashtable;

import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.PasswordCallback;
import javax.security.auth.callback.UnsupportedCallbackException;

import org.apache.harmony.javax.naming.Context;
import org.apache.harmony.javax.security.auth.callback.NameCallback;
import org.apache.harmony.javax.security.sasl.RealmCallback;
import org.apache.harmony.javax.security.sasl.RealmChoiceCallback;
import org.apache.harmony.jndi.provider.ldap.asn1.Utils;

/*
 * Default callback handler, may be customized through
 * "java.naming.security.sasl.realm".
 */
class DefaultCallbackHandler implements CallbackHandler {

	private static final String JAVA_NAMING_SECURITY_SASL_REALM = "java.naming.security.sasl.realm";

	private Hashtable env;

	private String realm = "";

	public DefaultCallbackHandler() {

	}

	public DefaultCallbackHandler(Hashtable env) {
		this.env = env;
	}

	@Override
	public void handle(Callback[] callbacks) throws java.io.IOException,
			UnsupportedCallbackException {
		for (final Callback callback : callbacks) {
			if (callback instanceof RealmChoiceCallback) {
				// TODO what to do here?
				// RealmChoiceCallback rcc = (RealmChoiceCallback) callbacks[i];

			} else if (callback instanceof RealmCallback) {
				final RealmCallback rc = (RealmCallback) callback;
				if (env.get(JAVA_NAMING_SECURITY_SASL_REALM) != null) {
					realm = (String) env.get(JAVA_NAMING_SECURITY_SASL_REALM);
					rc.setText(realm);
				} else {
					rc.setText(realm);
				}
			} else if (callback instanceof PasswordCallback) {
				final PasswordCallback pc = (PasswordCallback) callback;
				pc.setPassword(Utils.getCharArray(env
						.get(Context.SECURITY_CREDENTIALS)));
			} else if (callback instanceof NameCallback) {
				// authentication Id
				final NameCallback nc = (NameCallback) callback;
				nc.setName((String) env.get(Context.SECURITY_PRINCIPAL));
			} else {
				throw new UnsupportedCallbackException(callback);
			}
		}
	}

	public void setRealm(String realm) {
		this.realm = realm;
	}
}
