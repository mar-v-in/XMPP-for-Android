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

package org.apache.harmony.javax.security.sasl;

import java.security.Provider;
import java.security.Security;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

import javax.security.auth.callback.CallbackHandler;

import org.apache.harmony.auth.internal.nls.Messages;

public class Sasl {
	// SaslClientFactory service name
	private static final String CLIENTFACTORYSRV = "SaslClientFactory"; //$NON-NLS-1$

	// SaslServerFactory service name
	private static final String SERVERFACTORYSRV = "SaslServerFactory"; //$NON-NLS-1$

	public static final String POLICY_NOPLAINTEXT = "org.apache.harmony.javax.security.sasl.policy.noplaintext"; //$NON-NLS-1$

	public static final String POLICY_NOACTIVE = "org.apache.harmony.javax.security.sasl.policy.noactive"; //$NON-NLS-1$

	public static final String POLICY_NODICTIONARY = "org.apache.harmony.javax.security.sasl.policy.nodictionary"; //$NON-NLS-1$

	public static final String POLICY_NOANONYMOUS = "org.apache.harmony.javax.security.sasl.policy.noanonymous"; //$NON-NLS-1$

	public static final String POLICY_FORWARD_SECRECY = "org.apache.harmony.javax.security.sasl.policy.forward"; //$NON-NLS-1$

	public static final String POLICY_PASS_CREDENTIALS = "org.apache.harmony.javax.security.sasl.policy.credentials"; //$NON-NLS-1$

	public static final String MAX_BUFFER = "org.apache.harmony.javax.security.sasl.maxbuffer"; //$NON-NLS-1$

	public static final String RAW_SEND_SIZE = "org.apache.harmony.javax.security.sasl.rawsendsize"; //$NON-NLS-1$

	public static final String REUSE = "org.apache.harmony.javax.security.sasl.reuse"; //$NON-NLS-1$

	public static final String QOP = "org.apache.harmony.javax.security.sasl.qop"; //$NON-NLS-1$

	public static final String STRENGTH = "org.apache.harmony.javax.security.sasl.strength"; //$NON-NLS-1$

	public static final String SERVER_AUTH = "org.apache.harmony.javax.security.sasl.server.authentication"; //$NON-NLS-1$    

	/**
	 * @since 1.6
	 */
	public static final String CREDENTIALS = "org.apache.harmony.javax.security.sasl.credentials"; //$NON-NLS-1$

	public static SaslClient createSaslClient(String[] mechanisms,
			String authanticationID, String protocol, String serverName,
			Map<String, ?> prop, CallbackHandler cbh) throws SaslException {
		if (mechanisms == null) {
			throw new NullPointerException(Messages.getString("auth.33")); //$NON-NLS-1$
		}
		final Collection<?> res = findFactories(CLIENTFACTORYSRV);
		if (res.isEmpty()) {
			return null;
		}

		final Iterator<?> iter = res.iterator();
		while (iter.hasNext()) {
			final SaslClientFactory fact = (SaslClientFactory) iter.next();
			final String[] mech = fact.getMechanismNames(null);
			boolean is = false;
			if (mech != null) {
				for (final String element : mech) {
					for (final String mechanism : mechanisms) {
						if (element.equals(mechanism)) {
							is = true;
							break;
						}
					}
				}
			}
			if (is) {
				final SaslClient saslC = fact.createSaslClient(mechanisms,
						authanticationID, protocol, serverName, prop, cbh);
				if (saslC != null) {
					return saslC;
				}
			}
		}
		return null;
	}

	public static SaslServer createSaslServer(String mechanism,
			String protocol, String serverName, Map<String, ?> prop,
			CallbackHandler cbh) throws SaslException {
		if (mechanism == null) {
			throw new NullPointerException(Messages.getString("auth.32")); //$NON-NLS-1$
		}
		final Collection<?> res = findFactories(SERVERFACTORYSRV);
		if (res.isEmpty()) {
			return null;
		}

		final Iterator<?> iter = res.iterator();
		while (iter.hasNext()) {
			final SaslServerFactory fact = (SaslServerFactory) iter.next();
			final String[] mech = fact.getMechanismNames(null);
			boolean is = false;
			if (mech != null) {
				for (final String element : mech) {
					if (element.equals(mechanism)) {
						is = true;
						break;
					}
				}
			}
			if (is) {
				final SaslServer saslS = fact.createSaslServer(mechanism,
						protocol, serverName, prop, cbh);
				if (saslS != null) {
					return saslS;
				}
			}
		}
		return null;
	}

	/**
	 * This method forms the list of SaslClient/SaslServer factories which are
	 * implemented in used providers
	 */
	private static Collection<?> findFactories(String service) {
		final HashSet<Object> fact = new HashSet<Object>();
		final Provider[] pp = Security.getProviders();
		if ((pp == null) || (pp.length == 0)) {
			return fact;
		}
		final HashSet<String> props = new HashSet<String>();
		for (final Provider element : pp) {
			final String prName = element.getName();
			final Enumeration<Object> keys = element.keys();
			while (keys.hasMoreElements()) {
				final String s = (String) keys.nextElement();
				if (s.startsWith(service)) {
					final String prop = element.getProperty(s);
					try {
						if (props.add(prName.concat(prop))) {
							fact.add(newInstance(prop, element));
						}
					} catch (final SaslException e) {
						// ignore this factory
						e.printStackTrace();
					}
				}
			}
		}
		return fact;
	}

	@SuppressWarnings("unchecked")
	public static Enumeration<SaslClientFactory> getSaslClientFactories() {
		final Collection<SaslClientFactory> res = (Collection<SaslClientFactory>) findFactories(CLIENTFACTORYSRV);
		return Collections.enumeration(res);

	}

	@SuppressWarnings("unchecked")
	public static Enumeration<SaslServerFactory> getSaslServerFactories() {
		final Collection<SaslServerFactory> res = (Collection<SaslServerFactory>) findFactories(SERVERFACTORYSRV);
		return Collections.enumeration(res);
	}

	// Forms new instance of factory
	private static Object newInstance(String factoryName, Provider prv)
			throws SaslException {
		final String msg = Messages.getString("auth.31"); //$NON-NLS-1$
		Object factory;
		ClassLoader cl = prv.getClass().getClassLoader();
		if (cl == null) {
			cl = ClassLoader.getSystemClassLoader();
		}
		try {
			factory = (Class.forName(factoryName, true, cl)).newInstance();
			return factory;
		} catch (final IllegalAccessException e) {
			throw new SaslException(msg + factoryName, e);
		} catch (final ClassNotFoundException e) {
			throw new SaslException(msg + factoryName, e);
		} catch (final InstantiationException e) {
			throw new SaslException(msg + factoryName, e);
		}
	}

	// Default public constructor is overridden
	private Sasl() {
		super();
	}
}
