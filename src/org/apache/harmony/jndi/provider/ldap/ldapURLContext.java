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

import java.util.Hashtable;

import org.apache.harmony.javax.naming.CompositeName;
import org.apache.harmony.javax.naming.InvalidNameException;
import org.apache.harmony.javax.naming.Name;
import org.apache.harmony.javax.naming.NamingEnumeration;
import org.apache.harmony.javax.naming.NamingException;
import org.apache.harmony.javax.naming.directory.Attribute;
import org.apache.harmony.javax.naming.directory.Attributes;
import org.apache.harmony.javax.naming.directory.DirContext;
import org.apache.harmony.javax.naming.directory.ModificationItem;
import org.apache.harmony.javax.naming.directory.SearchControls;
import org.apache.harmony.javax.naming.directory.SearchResult;
import org.apache.harmony.javax.naming.spi.DirectoryManager;
import org.apache.harmony.javax.naming.spi.ResolveResult;
import org.apache.harmony.jndi.internal.nls.Messages;
import org.apache.harmony.jndi.internal.parser.AttributeTypeAndValuePair;
import org.apache.harmony.jndi.provider.GenericURLContext;
import org.apache.harmony.jndi.provider.ldap.parser.LdapUrlParser;

public class ldapURLContext extends GenericURLContext implements DirContext {

	/**
	 * Creates instance of this context with empty environment.
	 */
	public ldapURLContext() {
		super(null);
	}

	/**
	 * Creates instance of this context with specified environment.
	 * 
	 * @param environment
	 *            Environment to copy.
	 */
	public ldapURLContext(Hashtable<?, ?> environment) {
		super(environment);
	}

	@Override
	public void bind(Name name, Object obj, Attributes attributes)
			throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			bind(name.get(0), obj, attributes);
			return;
		}

		final DirContext context = getContinuationContext(name);

		try {
			context.bind(name.getSuffix(1), obj, attributes);

		} finally {
			context.close();
		}

	}

	@Override
	public void bind(String url, Object obj, Attributes attributes)
			throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			context.bind(result.getRemainingName(), obj, attributes);
			return;
		} finally {
			context.close();
		}
	}

	@Override
	public DirContext createSubcontext(Name name, Attributes attributes)
			throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return createSubcontext(name.get(0), attributes);
		}
		final DirContext context = getContinuationContext(name);

		try {
			return context.createSubcontext(name.getSuffix(1), attributes);
		} finally {
			context.close();
		}
	}

	@Override
	public DirContext createSubcontext(String url, Attributes attributes)
			throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			return context.createSubcontext(result.getRemainingName(),
					attributes);
		} finally {
			context.close();
		}
	}

	@Override
	public Attributes getAttributes(Name name) throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return getAttributes(name.get(0));
		}
		final DirContext context = getContinuationContext(name);

		try {
			return context.getAttributes(name.getSuffix(1));
		} finally {
			context.close();
		}
	}

	@Override
	public Attributes getAttributes(Name name, String[] as)
			throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return getAttributes(name.get(0), as);
		}
		final DirContext context = getContinuationContext(name);

		try {
			return context.getAttributes(name.getSuffix(1), as);
		} finally {
			context.close();
		}
	}

	@Override
	public Attributes getAttributes(String url) throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			return context.getAttributes(result.getRemainingName());
		} finally {
			context.close();
		}
	}

	@Override
	public Attributes getAttributes(String url, String[] as)
			throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			return context.getAttributes(result.getRemainingName(), as);
		} finally {
			context.close();
		}
	}

	@Override
	protected DirContext getContinuationContext(Name name)
			throws NamingException {
		return DirectoryManager
				.getContinuationDirContext(createCannotProceedException(name));
	}

	@Override
	protected ResolveResult getRootURLContext(String url, Hashtable<?, ?> env)
			throws NamingException {
		Hashtable<?, ?> myEnv = null;
		if (env == null) {
			myEnv = environment;
		} else {
			myEnv = (Hashtable<?, ?>) env.clone();
		}

		final LdapUrlParser parser = LdapUtils.parserURL(url, false);

		final String host = parser.getHost();
		final int port = parser.getPort();
		final String dn = parser.getBaseObject();

		final LdapClient client = LdapClient.newInstance(host, port, myEnv,
				LdapUtils.isLdapsURL(url));

		final LdapContextImpl context = new LdapContextImpl(client,
				(Hashtable<Object, Object>) myEnv, dn);

		// not support ldap url + other namespace name
		return new ResolveResult(context, "");
	}

	@Override
	public DirContext getSchema(Name name) throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return getSchema(name.get(0));
		}
		final DirContext context = getContinuationContext(name);

		try {
			return context.getSchema(name.getSuffix(1));
		} finally {
			context.close();
		}
	}

	@Override
	public DirContext getSchema(String url) throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			return context.getSchema(result.getRemainingName());
		} finally {
			context.close();
		}
	}

	@Override
	public DirContext getSchemaClassDefinition(Name name)
			throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return getSchemaClassDefinition(name.get(0));
		}
		final DirContext context = getContinuationContext(name);

		try {
			return context.getSchemaClassDefinition(name.getSuffix(1));
		} finally {
			context.close();
		}
	}

	@Override
	public DirContext getSchemaClassDefinition(String url)
			throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			return context.getSchema(result.getRemainingName());
		} finally {
			context.close();
		}
	}

	@Override
	public void modifyAttributes(Name name, int i, Attributes attributes)
			throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			modifyAttributes(name.get(0), i, attributes);
			return;
		}
		final DirContext context = getContinuationContext(name);

		try {
			context.modifyAttributes(name.getSuffix(1), i, attributes);
			return;
		} finally {
			context.close();
		}

	}

	@Override
	public void modifyAttributes(Name name, ModificationItem[] modificationItems)
			throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			modifyAttributes(name.get(0), modificationItems);
			return;
		}
		final DirContext context = getContinuationContext(name);

		try {
			context.modifyAttributes(name.getSuffix(1), modificationItems);
			return;
		} finally {
			context.close();
		}

	}

	@Override
	public void modifyAttributes(String url, int i, Attributes attributes)
			throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			context.modifyAttributes(result.getRemainingName(), i, attributes);
		} finally {
			context.close();
		}

	}

	@Override
	public void modifyAttributes(String url,
			ModificationItem[] modificationItems) throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			context.modifyAttributes(result.getRemainingName(),
					modificationItems);
		} finally {
			context.close();
		}
	}

	@Override
	public void rebind(Name name, Object obj, Attributes attributes)
			throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			rebind(name.get(0), obj, attributes);
			return;
		}

		final DirContext context = getContinuationContext(name);

		try {
			context.rebind(name.getSuffix(1), obj, attributes);

		} finally {
			context.close();
		}

	}

	@Override
	public void rebind(String url, Object obj, Attributes attributes)
			throws NamingException {
		final ResolveResult result = getRootURLContext(url, environment);
		final DirContext context = (DirContext) result.getResolvedObj();

		try {
			context.rebind(result.getRemainingName(), obj, attributes);
		} finally {
			context.close();
		}

	}

	@Override
	public NamingEnumeration<SearchResult> search(Name name,
			Attributes attributes) throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return search(name.get(0), attributes);
		}

		final DirContext context = getContinuationContext(name);

		try {
			return context.search(name.getSuffix(1), attributes);

		} finally {
			context.close();
		}
	}

	@Override
	public NamingEnumeration<SearchResult> search(Name name,
			Attributes attributes, String[] as) throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return search(name.get(0), attributes, as);
		}

		final DirContext context = getContinuationContext(name);

		try {
			return context.search(name.getSuffix(1), attributes, as);

		} finally {
			context.close();
		}
	}

	@Override
	public NamingEnumeration<SearchResult> search(Name name, String filter,
			Object[] objs, SearchControls searchControls)
			throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return search(name.get(0), filter, objs, searchControls);
		}

		final DirContext context = getContinuationContext(name);

		try {
			return context.search(name.getSuffix(1), filter, objs,
					searchControls);

		} finally {
			context.close();
		}
	}

	@Override
	public NamingEnumeration<SearchResult> search(Name name, String filter,
			SearchControls searchControls) throws NamingException {
		if (!(name instanceof CompositeName)) {
			// jndi.26=URL context can't accept non-composite name: {0}
			throw new InvalidNameException(Messages.getString("jndi.26", name)); //$NON-NLS-1$
		}

		if (name.size() == 1) {
			return search(name.get(0), filter, searchControls);
		}

		final DirContext context = getContinuationContext(name);

		try {
			return context.search(name.getSuffix(1), filter, searchControls);

		} finally {
			context.close();
		}
	}

	@Override
	public NamingEnumeration<SearchResult> search(String url,
			Attributes attributes) throws NamingException {
		return search(url, attributes, null);
	}

	/**
	 * <code>url</code> is an LDAP URL, which may contains query ('?') parts,
	 * and any parts in URL should override corresponding arguments. For
	 * example, if <code>url</code> contains filter parts, the
	 * <code>attributes</code> arguments would be useless, LDAP search will use
	 * filter from url.
	 * 
	 */
	@Override
	public NamingEnumeration<SearchResult> search(String url,
			Attributes attributes, String[] as) throws NamingException {
		final LdapUrlParser parser = LdapUtils.parserURL(url, true);
		final String dn = parser.getBaseObject();
		final String host = parser.getHost();
		final int port = parser.getPort();

		final LdapClient client = LdapClient.newInstance(host, port,
				environment, LdapUtils.isLdapsURL(url));
		LdapContextImpl context = null;
		try {
			context = new LdapContextImpl(client, environment, dn);

			SearchControls controls = parser.getControls();
			if (controls == null) {
				controls = new SearchControls();
				controls.setReturningAttributes(as);
			} else if (!parser.hasAttributes()) {
				controls.setReturningAttributes(as);
			}

			// construct filter
			Filter filter = null;
			if (parser.hasFilter()) {
				// use filter in url
				filter = parser.getFilter();
			} else {
				// construct filter from attributes
				if (attributes == null || attributes.size() == 0) {
					// no attributes, use default filter "(objectClass=*)"
					filter = new Filter(Filter.PRESENT_FILTER);
					filter.setValue("objectClass");
				} else {
					if (attributes.size() == 1) {
						filter = new Filter(Filter.EQUALITY_MATCH_FILTER);
						final Attribute att = attributes.getAll().next();
						filter.setValue(new AttributeTypeAndValuePair(att
								.getID(), att.get()));
					} else {
						final NamingEnumeration<? extends Attribute> attrs = attributes
								.getAll();
						filter = new Filter(Filter.AND_FILTER);
						while (attrs.hasMore()) {
							final Attribute attr = attrs.next();
							final String type = attr.getID();
							final NamingEnumeration<?> enuValues = attr
									.getAll();
							while (enuValues.hasMore()) {
								final Object value = enuValues.next();
								final Filter child = new Filter(
										Filter.EQUALITY_MATCH_FILTER);
								child.setValue(new AttributeTypeAndValuePair(
										type, value));
								filter.addChild(child);
							}
						}
					}
				}
			}

			final LdapSearchResult result = context.doSearch(dn, filter,
					controls);

			if (result.isEmpty() && result.getException() != null) {
				throw result.getException();
			}

			return result.toSearchResultEnumeration(dn);
		} finally {
			if (context != null) {
				context.close();
			}
		}
	}

	@Override
	public NamingEnumeration<SearchResult> search(String url, String filter,
			Object[] objs, SearchControls searchControls)
			throws NamingException {
		final LdapUrlParser parser = LdapUtils.parserURL(url, true);
		final String dn = parser.getBaseObject();
		final String host = parser.getHost();
		final int port = parser.getPort();

		final LdapClient client = LdapClient.newInstance(host, port,
				environment, LdapUtils.isLdapsURL(url));
		LdapContextImpl context = null;

		try {
			context = new LdapContextImpl(client, environment, dn);

			Filter f = parser.getFilter();
			if (f == null) {
				f = LdapUtils.parseFilter(filter, objs);
			}

			if (searchControls == null) {
				searchControls = new SearchControls();
			}
			if (parser.getControls() != null) {
				final SearchControls controls = parser.getControls();
				if (parser.hasAttributes()) {
					searchControls.setReturningAttributes(controls
							.getReturningAttributes());
				}
				if (parser.hasScope()) {
					searchControls.setSearchScope(controls.getSearchScope());
				}
			}

			final LdapSearchResult result = context.doSearch(dn, f,
					searchControls);

			if (result.isEmpty() && result.getException() != null) {
				throw result.getException();
			}

			return result.toSearchResultEnumeration(dn);
		} finally {
			if (context != null) {
				context.close();
			}
		}
	}

	@Override
	public NamingEnumeration<SearchResult> search(String url, String filter,
			SearchControls searchControls) throws NamingException {
		return search(url, filter, new Object[0], searchControls);
	}

}
