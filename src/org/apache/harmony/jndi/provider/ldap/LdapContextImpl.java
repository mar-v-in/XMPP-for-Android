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

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.EventObject;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.TreeMap;

import org.apache.harmony.javax.naming.Binding;
import org.apache.harmony.javax.naming.CannotProceedException;
import org.apache.harmony.javax.naming.CommunicationException;
import org.apache.harmony.javax.naming.CompositeName;
import org.apache.harmony.javax.naming.Context;
import org.apache.harmony.javax.naming.InvalidNameException;
import org.apache.harmony.javax.naming.LimitExceededException;
import org.apache.harmony.javax.naming.Name;
import org.apache.harmony.javax.naming.NameClassPair;
import org.apache.harmony.javax.naming.NameNotFoundException;
import org.apache.harmony.javax.naming.NameParser;
import org.apache.harmony.javax.naming.NamingEnumeration;
import org.apache.harmony.javax.naming.NamingException;
import org.apache.harmony.javax.naming.PartialResultException;
import org.apache.harmony.javax.naming.RefAddr;
import org.apache.harmony.javax.naming.Reference;
import org.apache.harmony.javax.naming.Referenceable;
import org.apache.harmony.javax.naming.ReferralException;
import org.apache.harmony.javax.naming.StringRefAddr;
import org.apache.harmony.javax.naming.directory.Attribute;
import org.apache.harmony.javax.naming.directory.Attributes;
import org.apache.harmony.javax.naming.directory.BasicAttribute;
import org.apache.harmony.javax.naming.directory.BasicAttributes;
import org.apache.harmony.javax.naming.directory.DirContext;
import org.apache.harmony.javax.naming.directory.InvalidSearchFilterException;
import org.apache.harmony.javax.naming.directory.ModificationItem;
import org.apache.harmony.javax.naming.directory.SearchControls;
import org.apache.harmony.javax.naming.directory.SearchResult;
import org.apache.harmony.javax.naming.event.EventContext;
import org.apache.harmony.javax.naming.event.EventDirContext;
import org.apache.harmony.javax.naming.event.NamespaceChangeListener;
import org.apache.harmony.javax.naming.event.NamingEvent;
import org.apache.harmony.javax.naming.event.NamingExceptionEvent;
import org.apache.harmony.javax.naming.event.NamingListener;
import org.apache.harmony.javax.naming.event.ObjectChangeListener;
import org.apache.harmony.javax.naming.ldap.Control;
import org.apache.harmony.javax.naming.ldap.ControlFactory;
import org.apache.harmony.javax.naming.ldap.ExtendedRequest;
import org.apache.harmony.javax.naming.ldap.ExtendedResponse;
import org.apache.harmony.javax.naming.ldap.LdapContext;
import org.apache.harmony.javax.naming.ldap.LdapName;
import org.apache.harmony.javax.naming.ldap.ManageReferralControl;
import org.apache.harmony.javax.naming.ldap.Rdn;
import org.apache.harmony.javax.naming.ldap.UnsolicitedNotificationEvent;
import org.apache.harmony.javax.naming.ldap.UnsolicitedNotificationListener;
import org.apache.harmony.javax.naming.spi.DirStateFactory.Result;
import org.apache.harmony.javax.naming.spi.DirectoryManager;
import org.apache.harmony.javax.naming.spi.NamingManager;
import org.apache.harmony.jndi.internal.nls.Messages;
import org.apache.harmony.jndi.internal.parser.AttributeTypeAndValuePair;
import org.apache.harmony.jndi.internal.parser.LdapNameParser;
import org.apache.harmony.jndi.provider.ldap.asn1.Utils;
import org.apache.harmony.jndi.provider.ldap.event.ECNotificationControl;
import org.apache.harmony.jndi.provider.ldap.event.PersistentSearchResult;
import org.apache.harmony.jndi.provider.ldap.ext.StartTlsResponseImpl;
import org.apache.harmony.jndi.provider.ldap.parser.FilterParser;
import org.apache.harmony.jndi.provider.ldap.parser.LdapUrlParser;
import org.apache.harmony.jndi.provider.ldap.parser.ParseException;
import org.apache.harmony.jndi.provider.ldap.parser.SchemaParser;
import org.apache.harmony.jndi.provider.ldap.sasl.SaslBind;

/**
 * This context implements LdapContext, it's main entry point of all JNDI ldap
 * operations.
 */
public class LdapContextImpl implements LdapContext, EventDirContext {

	public static interface UnsolicitedListener {
		public void receiveNotification(UnsolicitedNotificationImpl un,
				Control[] cs);
	}

	/**
	 * ldap connection
	 */
	private LdapClient client;

	private boolean isClosed;

	/**
	 * name of the context
	 */
	protected LdapName contextDn;

	private Control[] requestControls;

	private Control[] responseControls;

	/**
	 * environment properties for this context
	 */
	protected Hashtable<Object, Object> env;

	/**
	 * name parser for this context
	 */
	private NameParser parser;

	/**
	 * connection controls for this context
	 */
	private Control[] connCtls;

	private boolean isReBind = false;

	private boolean isReConnect = false;

	private HashMap<NamingListener, List<Integer>> listeners;

	private List<UnsolicitedNotificationListener> unls;

	private String[] binaryAttributes;

	private int batchSize = 0;

	private static final Control NON_CRITICAL_MANAGE_REF_CONTROL = new ManageReferralControl(
			Control.NONCRITICAL);

	private static final String LDAP_DELETE_RDN = "java.naming.ldap.deleteRDN"; //$NON-NLS-1$

	private static final String LDAP_DEREF_ALIASES = "java.naming.ldap.derefAliases"; //$NON-NLS-1$

	private static final String LDAP_CONTROL_CONNECT = "java.naming.ldap.control.connect"; //$NON-NLS-1$

	private static final String LDAP_TYPES_ONLY = "java.naming.ldap.typesOnly"; //$NON-NLS-1$

	private static final String LDAP_ATTRIBUTES_BINARY = "java.naming.ldap.attributes.binary"; //$NON-NLS-1$

	/**
	 * Some properties, such as 'java.naming.security.authentication', changed
	 * by <code>Context.addToEnvironment</code> or
	 * <code>Context.removeFromEnvironment</code> may affect connection with
	 * LDAP server. This variable contains all such properties, which need
	 * re-communication with LDAP server after changing.
	 */
	private static final HashSet<String> connectionProperties = new HashSet<String>();

	static {
		connectionProperties.add(Context.SECURITY_AUTHENTICATION);
		connectionProperties.add(Context.SECURITY_CREDENTIALS);
		connectionProperties.add(Context.SECURITY_PRINCIPAL);
		connectionProperties.add(Context.SECURITY_PROTOCOL);
		connectionProperties.add("java.naming.ldap.factory.socket"); //$NON-NLS-1$
	}

	private final Hashtable<String, Object> schemaTable = new Hashtable<String, Object>();

	private LdapSchemaContextImpl ldapSchemaCtx = null;

	protected String subschemasubentry = null;

	/**
	 * construct a new <code>LdapContextImpl</code> with a fresh
	 * <code>LdapClient</code> which didn't do ldap bind operation yet.
	 * 
	 * @param client
	 * @param environment
	 * @param dn
	 * @throws NamingException
	 */
	public LdapContextImpl(LdapClient client,
			Hashtable<Object, Object> environment, String dn)
			throws NamingException {
		initial(client, environment, dn);
		doBindOperation(connCtls);
	}

	/**
	 * construct a new inherit <code>LdapContextImpl</code>
	 * 
	 * @param context
	 * @param environment
	 * @param dn
	 * @throws InvalidNameException
	 */
	public LdapContextImpl(LdapContextImpl context,
			Hashtable<Object, Object> environment, String dn)
			throws InvalidNameException {
		initial(context.client, environment, dn);

		// connection request controls are inheritied
		connCtls = context.connCtls;
		// request controls are not inheritied
	}

	public LdapContextImpl(LdapContextImpl context, String dn)
			throws NamingException {
		this(context.client, context.env, dn);
	}

	@Override
	public void addNamingListener(Name name, int scope,
			NamingListener namingListener) throws NamingException {
		checkName(name);

		if (namingListener == null) {
			return;
		}

		// only ldap name is supportted
		if (!(name instanceof LdapName)) {
			if (name instanceof CompositeName && name.size() == 1) {
				name = name.getPrefix(0);
			} else {
				// ldap.32=Target cannot span multiple namespaces: {0}
				throw new InvalidNameException(Messages.getString("ldap.32", //$NON-NLS-1$
						new Object[] { name.toString() }));
			}
		}

		if (namingListener instanceof UnsolicitedNotificationListener) {
			if (unls == null) {
				unls = new ArrayList<UnsolicitedNotificationListener>();
				addUnsolicitedListener();
			}

			unls.add((UnsolicitedNotificationListener) namingListener);

			if (!(namingListener instanceof NamespaceChangeListener)
					&& !(namingListener instanceof ObjectChangeListener)) {
				return;
			}
		}

		// ri is silent in this case
		if (scope != EventContext.OBJECT_SCOPE
				&& scope != EventContext.ONELEVEL_SCOPE
				&& scope != EventContext.SUBTREE_SCOPE) {
			// ldap.33=Scope should be one of 'OBJECT_SCOPE', 'ONELEVEL_SCOPE'
			// or 'SUBTREE_SCOPE'
			throw new IllegalArgumentException(Messages.getString("ldap.33")); //$NON-NLS-1$
		}

		final String targetDN = getTargetDN(name, contextDn);

		final Filter filter = new Filter(Filter.PRESENT_FILTER);
		filter.setValue("objectClass");

		final SearchControls controls = new SearchControls();
		controls.setSearchScope(scope);

		final Name tempName = new LdapName(contextDn.toString());
		tempName.addAll(name);
		final String baseDN = tempName.toString();

		final int messageId = doPersistentSearch(targetDN, baseDN, filter,
				controls, namingListener);

		if (listeners == null) {
			listeners = new HashMap<NamingListener, List<Integer>>();
		}

		List<Integer> idList = listeners.get(namingListener);
		if (idList == null) {
			idList = new ArrayList<Integer>();
			listeners.put(namingListener, idList);
		}

		idList.add(Integer.valueOf(messageId));

	}

	@Override
	public void addNamingListener(Name name, String filter,
			Object[] filterArgs, SearchControls searchControls,
			NamingListener namingListener) throws NamingException {
		checkName(name);

		if (namingListener == null) {
			return;
		}

		if (!(name instanceof LdapName)) {
			if (name instanceof CompositeName && name.size() == 1) {
				name = name.getPrefix(1);
			} else {
				// FIXME: read message from file
				throw new InvalidNameException(
						"Target cannot span multiple namespaces: "
								+ name.toString());
			}
		}

		if (namingListener instanceof UnsolicitedNotificationListener) {
			if (unls == null) {
				unls = new ArrayList<UnsolicitedNotificationListener>();
				addUnsolicitedListener();
			}

			unls.add((UnsolicitedNotificationListener) namingListener);

			if (!(namingListener instanceof NamespaceChangeListener)
					&& !(namingListener instanceof ObjectChangeListener)) {
				return;
			}
		}

		if (searchControls == null) {
			searchControls = new SearchControls();
		}

		final Filter f = LdapUtils.parseFilter(filter, filterArgs);

		final String targetDN = getTargetDN(name, contextDn);

		final Name tempName = new LdapName(contextDn.toString());
		tempName.addAll(name);
		final String baseDN = tempName.toString();

		final int messageId = doPersistentSearch(targetDN, baseDN, f,
				searchControls, namingListener);

		if (listeners == null) {
			listeners = new HashMap<NamingListener, List<Integer>>();
		}

		List<Integer> idList = listeners.get(namingListener);
		if (idList == null) {
			idList = new ArrayList<Integer>();
		}

		idList.add(Integer.valueOf(messageId));
	}

	@Override
	public void addNamingListener(Name name, String filter,
			SearchControls searchControls, NamingListener namingListener)
			throws NamingException {
		addNamingListener(name, filter, new Object[0], searchControls,
				namingListener);
	}

	@Override
	public void addNamingListener(String s, int i, NamingListener namingListener)
			throws NamingException {
		addNamingListener(convertFromStringToName(s), i, namingListener);
	}

	@Override
	public void addNamingListener(String name, String filter,
			Object[] filterArgs, SearchControls searchControls,
			NamingListener namingListener) throws NamingException {
		addNamingListener(convertFromStringToName(name), filter, filterArgs,
				searchControls, namingListener);
	}

	@Override
	public void addNamingListener(String name, String filter,
			SearchControls searchControls, NamingListener namingListener)
			throws NamingException {
		addNamingListener(convertFromStringToName(name), filter,
				searchControls, namingListener);
	}

	@Override
	public Object addToEnvironment(String s, Object o) throws NamingException {
		if (s == null || o == null) {
			throw new NullPointerException();
		}

		if (s.equals(Context.BATCHSIZE)) {
			batchSize = Integer.parseInt((String) o);
		} else if (s.equals(LDAP_ATTRIBUTES_BINARY)) {
			final String value = (String) o;
			binaryAttributes = value.trim().split(" ");
		}

		final Object preValue = env.put(s, o);

		// if preValue equals o, do nothing
		if ((preValue != null && preValue.equals(o))
				|| (preValue == null && o == null)) {
			return preValue;
		}

		if (connectionProperties.contains(s)) {
			if (s.equals(Context.SECURITY_PROTOCOL)
					|| s.equals("java.naming.ldap.factory.socket")) {
				isReConnect = true;
			}
			isReBind = true;
		}

		return preValue;
	}

	private void addUnsolicitedListener() {
		client.addUnsolicitedListener(new UnsolicitedListener() {

			@Override
			public void receiveNotification(UnsolicitedNotificationImpl un,
					Control[] cs) {
				EventObject event = null;
				try {
					un.setControls(narrowingControls(cs));
					event = new UnsolicitedNotificationEvent(
							LdapContextImpl.this, un);
				} catch (final NamingException e) {
					event = new NamingExceptionEvent(LdapContextImpl.this, e);
				}

				for (final UnsolicitedNotificationListener listener : unls) {
					notifyNamingListener(listener, event);
				}

			}

		});
	}

	private void applyEnvChange() throws NamingException {
		if (isReBind) {
			try {
				reconnect(connCtls);
			} finally {
				isReBind = false;
			}
		}
	}

	@Override
	public void bind(Name n, Object o) throws NamingException {
		bind(n, o, null);
	}

	@Override
	public void bind(Name name, Object obj, Attributes attributes)
			throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * contex
			 */
			final DirContext nns = (DirContext) findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			nns.bind(remainingName, attributes);
			return;
		}

		/*
		 * there is only one ldap ns
		 */
		if (obj == null && attributes == null) {
			// ldap.2E=cannot bind null object without attributes
			throw new IllegalArgumentException(Messages.getString("ldap.2E")); //$NON-NLS-1$
		}

		if (obj == null) {
			createSubcontext(name, attributes);
			return;
		}

		final Result result = DirectoryManager.getStateToBind(obj, name, this,
				env, attributes);
		final Object o = result.getObject();

		Attributes attrs = null;

		if (o instanceof Reference) {
			attrs = convertRefToAttribute((Reference) o);
		} else if (o instanceof Referenceable) {
			attrs = convertRefToAttribute(((Referenceable) o).getReference());
		} else if (o instanceof Serializable) {
			attrs = convertSerialToAttribute((Serializable) o);
		} else if (o instanceof DirContext) {
			final DirContext cxt = (DirContext) o;
			attrs = cxt.getAttributes("");
		} else {
			throw new IllegalArgumentException(Messages.getString("ldap.24")); //$NON-NLS-1$
		}

		final NamingEnumeration<? extends Attribute> enu = attrs.getAll();
		if (result.getAttributes() != null) {
			final Attributes resultAttributes = result.getAttributes();

			while (enu.hasMore()) {
				Attribute element = enu.next();
				if (element.getID().equalsIgnoreCase("objectClass")) {
					element = mergeAttribute(
							resultAttributes.get("objectClass"), element);
					final Attribute oc = resultAttributes.get("objectClass");
					if (oc != null) {
						if (!oc.contains("javaContainer") && oc.size() > 0) {
							element.remove("javaContainer");
						}
					}
					resultAttributes.put(element);
				} else if (resultAttributes.get(element.getID()) == null) {
					resultAttributes.put(element);
				}
			}

			createSubcontext(name, resultAttributes);
		} else {
			createSubcontext(name, attrs);
		}
	}

	@Override
	public void bind(String s, Object o) throws NamingException {
		bind(convertFromStringToName(s), o);
	}

	@Override
	public void bind(String s, Object obj, Attributes attributes)
			throws NamingException {
		bind(convertFromStringToName(s), obj, attributes);
	}

	private void changeConnection() throws NamingException {

		// use new socket factory to connect server
		final String address = client.getAddress();
		final int port = client.getPort();
		client.unuse();
		client = LdapClient.newInstance(address, port, env);
		client.use();
	}

	private void checkName(Name name) throws InvalidNameException {
		if (name == null) {
			// jndi.2E=The name is null
			throw new NullPointerException(Messages.getString("jndi.2E")); //$NON-NLS-1$
		}

		if (!(name instanceof LdapName) && !(name instanceof CompositeName)) {
			throw new InvalidNameException(Messages.getString("ldap.26")); //$NON-NLS-1$
		}

		// the first part of CompositeName must be ldap name
		if (name instanceof CompositeName && name.size() > 0) {
			new LdapName(name.get(0));
		}
	}

	@Override
	public void close() throws NamingException {
		if (!isClosed) {
			isClosed = true;
			client.unuse();
			client = null;
		}
	}

	/**
	 * Only instance of LdapName or CompositeName are acceptable. If both
	 * <code>name</code> and <code>prefix</code> are LdapName, a new LdapName
	 * instance composed of the two name will be return , else a CompositeName
	 * will be return.
	 */
	@Override
	public Name composeName(Name name, Name prefix) throws NamingException {
		if (name == null || prefix == null) {
			// jndi.2E=The name is null
			throw new NullPointerException(Messages.getString("jndi.2E")); //$NON-NLS-1$
		}

		Name result = null;
		if (name instanceof LdapName && prefix instanceof LdapName) {
			result = (LdapName) prefix.clone();
			result.addAll(name);
		} else if (name instanceof LdapName && prefix instanceof CompositeName) {
			result = new CompositeName();
			result.addAll(prefix);
			result.add(name.toString());
		} else if (prefix instanceof LdapName && name instanceof CompositeName) {
			result = new CompositeName();
			result.add(prefix.toString());
			result.addAll(name);
		} else if (prefix instanceof CompositeName
				&& name instanceof CompositeName) {
			result = new CompositeName();
			result.addAll(prefix);
			result.addAll(name);
		} else {
			throw new NamingException(Messages.getString("ldap.26")); //$NON-NLS-1$
		}
		return result;
	}

	@Override
	public String composeName(String s, String pfx) throws NamingException {
		return composeName(convertFromStringToName(s),
				convertFromStringToName(pfx)).toString();
	}

	private NamingEvent constructNamingEvent(PersistentSearchResult result,
			ECNotificationControl control, String baseDN)
			throws InvalidNameException, NamingException {
		Binding newBinding = null;
		Binding oldBinding = null;

		switch (control.getChangeType()) {
		case ECNotificationControl.ADD:
			final String newName = LdapUtils.convertToRelativeName(
					result.getDn(), baseDN);
			newBinding = new Binding(newName, null);
			newBinding.setNameInNamespace(result.getDn());
			break;
		case ECNotificationControl.DELETE:
			final String deleteName = LdapUtils.convertToRelativeName(
					result.getDn(), baseDN);
			oldBinding = new Binding(deleteName, null);
			oldBinding.setNameInNamespace(result.getDn());
			break;
		case ECNotificationControl.MODIFY_DN:
			if (result.getDn() != null) {
				newBinding = new Binding(LdapUtils.convertToRelativeName(
						result.getDn(), baseDN), null);
				newBinding.setNameInNamespace(result.getDn());
			}

			if (control.getPreviousDN() != null) {
				oldBinding = new Binding(LdapUtils.convertToRelativeName(
						control.getPreviousDN(), baseDN), null);
				oldBinding.setNameInNamespace(control.getPreviousDN());
			}
			break;
		case ECNotificationControl.MODIFY:
			final String relativeName = LdapUtils.convertToRelativeName(
					result.getDn(), baseDN);
			newBinding = new Binding(relativeName, null);
			newBinding.setNameInNamespace(result.getDn());
			// FIXME: how to get old binding?
			oldBinding = new Binding(relativeName, null);
			oldBinding.setNameInNamespace(result.getDn());
		}

		final NamingEvent event = new NamingEvent(this,
				control.getJNDIChangeType(), newBinding, oldBinding,
				Integer.valueOf(control.getChangeNumber()));

		return event;
	}

	/**
	 * convert <code>String</code> name to <code>Name</code> instance, we assume
	 * the <code>String</code> name parameter is using composite name syntax
	 * (see LDAP service providers guidlines, part 4).
	 * 
	 * @param s
	 *            <code>String</code> name to be converted
	 * @return <code>Name</code> instance equivalent to <code>s</code>
	 * @throws InvalidNameException
	 *             occurs error while converting
	 */
	protected Name convertFromStringToName(String s)
			throws InvalidNameException {
		if (s == null) {
			// jndi.2E=The name is null
			throw new NullPointerException(Messages.getString("jndi.2E")); //$NON-NLS-1$
		}

		final CompositeName name = new CompositeName(s);
		if (name.size() == 0) {
			// return empty name
			return new LdapName(""); //$NON-NLS-1$
		}

		return name;
	}

	private Attributes convertRefToAttribute(Reference ref) {
		final Attributes attrs = new BasicAttributes(true);

		final Attribute objectClass = new BasicAttribute("objectClass");
		objectClass.add("top");
		objectClass.add("javaContainer");
		objectClass.add("javaObject");
		objectClass.add("javaNamingReference");
		attrs.put(objectClass);

		final Attribute className = new BasicAttribute("javaClassName");
		className.add(ref.getClassName());
		attrs.put(className);

		final Attribute address = new BasicAttribute("javaReferenceAddress");
		final Enumeration<RefAddr> enu = ref.getAll();
		int index = 0;
		String separator = (String) env.get("java.naming.ldap.ref.separator");
		if (separator == null) {
			// use default separator '#'
			separator = "#";
		}
		while (enu.hasMoreElements()) {
			final RefAddr addr = enu.nextElement();
			final StringBuilder builder = new StringBuilder();
			builder.append(separator + index);
			builder.append(separator + addr.getType());
			builder.append(separator + addr.getContent());
			address.add(builder.toString());
			index++;
		}
		attrs.put(address);

		return attrs;
	}

	private Attributes convertSerialToAttribute(Serializable serializable)
			throws NamingException {
		final Attributes attrs = new BasicAttributes(true);

		final Attribute objectClass = new BasicAttribute("objectClass");
		objectClass.add("top");
		objectClass.add("javaContainer");
		objectClass.add("javaObject");
		objectClass.add("javaSerializedObject");
		attrs.put(objectClass);

		final Attribute javaClassNames = new BasicAttribute("javaClassNames");
		javaClassNames.add(serializable.getClass().getName());
		javaClassNames.add(Object.class.getName());

		final Class[] cs = serializable.getClass().getInterfaces();
		for (final Class c : cs) {
			javaClassNames.add(c.getName());
		}

		// add all ancestors class
		Class sup = serializable.getClass().getSuperclass();
		while (sup != null && !sup.getName().equals(Object.class.getName())) {
			javaClassNames.add(sup.getName());
			sup = sup.getSuperclass();
		}
		attrs.put(javaClassNames);

		attrs.put("javaClassName", serializable.getClass().getName());

		final ByteArrayOutputStream bout = new ByteArrayOutputStream();

		try {
			final ObjectOutputStream out = new ObjectOutputStream(bout);
			out.writeObject(serializable);
			out.close();
		} catch (final IOException e) {
			// TODO need add more detail messages?
			final NamingException ex = new NamingException();
			ex.setRootCause(e);
			throw ex;
		}

		final byte[] bytes = bout.toByteArray();
		attrs.put("javaSerializedData", bytes);

		return attrs;
	}

	private Control[] copyControls(Control[] controls) {
		if (controls == null) {
			return null;
		}

		final Control[] rtValue = new Control[controls.length];
		System.arraycopy(controls, 0, rtValue, 0, controls.length);
		return rtValue;
	}

	@Override
	public Context createSubcontext(Name name) throws NamingException {
		return createSubcontext(name, null);
	}

	@Override
	public DirContext createSubcontext(Name name, Attributes attributes)
			throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final DirContext nns = (DirContext) findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			return nns.createSubcontext(remainingName, attributes);
		}

		/*
		 * there is only one ldap ns
		 */

		if (attributes == null) {
			attributes = new BasicAttributes(true);
			final Attribute attr = new LdapAttribute("objectClass", this);
			attr.add("top");
			attr.add("javaContainer");
			attributes.put(attr);
		}

		// get absolute dn name
		final String targetDN = getTargetDN(name, contextDn);
		// merge attributes from dn and args
		final Attributes attrs = mergeAttributes(attributes,
				getAttributesFromDN(name));

		// convert to LdapAttribute
		final List<LdapAttribute> la = new ArrayList<LdapAttribute>(
				attrs.size());
		final NamingEnumeration<? extends Attribute> enu = attrs.getAll();
		while (enu.hasMore()) {
			final Attribute att = enu.next();
			if (att.size() > 0) {
				la.add(new LdapAttribute(att, this));
			}
		}

		// do add operation
		final AddOp op = new AddOp(targetDN, la);
		try {
			doBasicOperation(op);
		} catch (final ReferralException e) {
			if (isFollowReferral(e)) {
				final DirContext referralContext = getReferralContext(e);
				return referralContext.createSubcontext(name, attributes);
			}
			throw e;
		}

		final LdapResult result = op.getResult();
		return new LdapContextImpl(this, env, result.getMachedDN());
	}

	@Override
	public Context createSubcontext(String s) throws NamingException {
		return createSubcontext(convertFromStringToName(s));
	}

	@Override
	public DirContext createSubcontext(String s, Attributes attributes)
			throws NamingException {
		return createSubcontext(convertFromStringToName(s), attributes);
	}

	@Override
	public void destroySubcontext(Name name) throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final Context nns = findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			nns.destroySubcontext(remainingName);
			return;
		}

		/*
		 * there is only one ldap ns
		 */
		// absolute dn name to list
		final String targetDN = getTargetDN(name, contextDn);
		final DeleteOp op = new DeleteOp(targetDN);
		try {
			doBasicOperation(op);
		} catch (final ReferralException e) {
			if (isFollowReferral(e)) {
				final DirContext referralContext = getReferralContext(e);
				referralContext.destroySubcontext(name);
				return;
			}
			throw e;
		} catch (final NameNotFoundException e) {
			// target dn doesn't exist, do nothing
		}
	}

	@Override
	public void destroySubcontext(String s) throws NamingException {
		destroySubcontext(convertFromStringToName(s));
	}

	/**
	 * Do operations with one request and one response which contains
	 * LdapResult. This is the convenience way to do the most of ldap operation
	 * except search opeartion which has multi-response, bind operation, abandon
	 * and unbind operations which have no response.
	 * 
	 * @param op
	 * @throws NamingException
	 */
	protected void doBasicOperation(LdapOperation op) throws NamingException {
		applyEnvChange();

		LdapMessage message = null;
		try {
			message = client.doOperation(op, requestControls);
		} catch (final IOException e) {
			final CommunicationException ex = new CommunicationException();
			ex.setRootCause(e);
			// operation failed, clear responseControls
			responseControls = null;
			throw ex;
		}

		final Control[] rawControls = message.getControls();
		responseControls = narrowingControls(rawControls);

		final LdapResult result = op.getResult();
		if (result.getResultCode() == LdapResult.REFERRAL) {
			throw new ReferralExceptionImpl(contextDn.toString(),
					result.getReferrals(), env);
		}

		if (LdapUtils.getExceptionFromResult(result) != null) {
			throw LdapUtils.getExceptionFromResult(result);
		}
	}

	/**
	 * Perform a LDAP Bind operation.
	 * 
	 * @param env
	 * @throws IOException
	 * @throws IOException
	 * @throws NamingException
	 * @throws ParseException
	 */
	private void doBindOperation(Control[] connCtsl) throws NamingException {
		if (client.getReferCount() > 1) {
			changeConnection();
		}

		final SaslBind saslBind = new SaslBind();
		LdapResult result = null;

		final SaslBind.AuthMech authMech = saslBind.valueAuthMech(env);
		try {
			if (authMech == SaslBind.AuthMech.None) {
				final BindOp bind = new BindOp("", "", null, null);
				client.doOperation(bind, connCtsl);
				result = bind.getResult();
			} else if (authMech == SaslBind.AuthMech.Simple) {
				final String principal = (String) env
						.get(Context.SECURITY_PRINCIPAL);
				final String credential = Utils.getString(env
						.get(Context.SECURITY_CREDENTIALS));
				final BindOp bind = new BindOp(principal, credential, null,
						null);
				client.doOperation(bind, connCtsl);
				result = bind.getResult();
			} else if (authMech == SaslBind.AuthMech.SASL) {
				result = saslBind.doSaslBindOperation(env, client, connCtsl);
			}
		} catch (final IOException e) {
			final CommunicationException ex = new CommunicationException();
			ex.setRootCause(e);
			throw ex;
		}

		if (LdapUtils.getExceptionFromResult(result) != null) {
			throw LdapUtils.getExceptionFromResult(result);
		}
	}

	private int doPersistentSearch(String targetDN, final String baseDN,
			Filter filter, SearchControls controls,
			NamingListener namingListener) throws NamingException {
		applyEnvChange();

		final SearchOp op = new SearchOp(targetDN, controls, filter);

		final NamingListener listener = namingListener;
		op.setSearchResult(new PersistentSearchResult() {

			@Override
			public void receiveNotificationHook(Object obj) {
				EventObject event = null;
				// construct event
				if (obj instanceof ECNotificationControl) {
					final ECNotificationControl control = (ECNotificationControl) obj;
					try {
						event = constructNamingEvent(this, control, baseDN);
					} catch (final NamingException e) {
						// FIXME may never reach
					}
				}

				if (obj instanceof LdapResult) {
					final LdapResult ldapResult = (LdapResult) obj;
					final NamingException ex = LdapUtils
							.getExceptionFromResult(ldapResult);
					// may not happen
					if (ex == null) {
						return;
					}

					event = new NamingExceptionEvent(LdapContextImpl.this, ex);
				}

				// notify listener
				notifyNamingListener(listener, event);
			}

		});

		try {
			return client.addPersistentSearch(op);
		} catch (final IOException e) {
			final CommunicationException ex = new CommunicationException();
			ex.setRootCause(e);
			throw ex;
		}
	}

	LdapSearchResult doSearch(SearchOp op) throws NamingException {
		applyEnvChange();

		op.setBatchSize(batchSize);
		if (env.get(LDAP_DEREF_ALIASES) != null) {
			final String derefAliases = (String) env.get(LDAP_DEREF_ALIASES);
			if (derefAliases.equals("always")) {
				op.setDerefAliases(0);
			} else if (derefAliases.equals("never")) {
				op.setDerefAliases(1);
			} else if (derefAliases.equals("finding")) {
				op.setDerefAliases(2);
			} else if (derefAliases.equals("searching")) {
				op.setDerefAliases(3);
			} else {
				throw new IllegalArgumentException(Messages.getString(
						"ldap.30", new Object[] { env.get(LDAP_DEREF_ALIASES), //$NON-NLS-1$
								LDAP_DEREF_ALIASES }));
			}

		}

		if (env.containsKey(LDAP_TYPES_ONLY)) {
			final String typesOnly = (String) env.get(LDAP_TYPES_ONLY);
			if ("true".equals(typesOnly)) {
				op.setTypesOnly(true);
			} else if ("false".equals(typesOnly)) {
				op.setTypesOnly(false);
			} else {
				throw new IllegalArgumentException(Messages.getString(
						"ldap.30", new Object[] { env.get(LDAP_TYPES_ONLY), //$NON-NLS-1$
								LDAP_TYPES_ONLY }));
			}
		}

		op.getSearchResult().setBinaryAttributes(binaryAttributes);

		LdapMessage message = null;
		try {
			message = client.doOperation(op, requestControls);
		} catch (final IOException e) {
			final CommunicationException ex = new CommunicationException(
					e.getMessage());
			ex.setRootCause(e);
			if (op.getSearchResult() == null || op.getSearchResult().isEmpty()) {
				throw ex;
			}
			op.getSearchResult().setException(ex);
			// occurs errors, just return, doesn't deal with referral and
			// controls
			return op.getSearchResult();
		}

		// TODO: assume response controls returned in last message, it may
		// be not correct
		final Control[] rawControls = message.getControls();
		responseControls = narrowingControls(rawControls);

		final LdapResult result = op.getResult();

		if (result != null) {
			op.getSearchResult().setException(
					LdapUtils.getExceptionFromResult(result));

			// has error, not deal with referrals
			if (result.getResultCode() != LdapResult.REFERRAL
					&& op.getSearchResult().getException() != null) {
				return op.getSearchResult();
			}

			// baseObject is not located at the server
			if (result.getResultCode() == LdapResult.REFERRAL) {
				final ReferralException ex = new ReferralExceptionImpl(
						contextDn.toString(), result.getReferrals(), env);
				try {
					if (isFollowReferral(ex)) {
						final LdapContextImpl ctx = (LdapContextImpl) getReferralContext(ex);
						return ctx.doSearch(op);
					} else {
						op.getSearchResult().setException(ex);
						return op.getSearchResult();
					}
				} catch (final PartialResultException e) {
					op.getSearchResult().setException(e);
					return op.getSearchResult();
				}
			}
		}
		// there are SearchResultReference in search result
		if (op.getSearchResult().getRefURLs() != null
				&& op.getSearchResult().getRefURLs().size() != 0) {
			final ReferralException ex = new ReferralExceptionImpl(
					contextDn.toString(), op.getSearchResult().getRefURLs()
							.toArray(new String[0]), env);
			try {
				if (isFollowReferral(ex)) {
					processSearchRef(op, ex);
				} else {
					op.getSearchResult().setException(ex);
					return op.getSearchResult();
				}
			} catch (final PartialResultException e) {
				op.getSearchResult().setException(e);
				return op.getSearchResult();
			}
		}

		return op.getSearchResult();
	}

	LdapSearchResult doSearch(String dn, Filter filter, SearchControls controls)
			throws NamingException {
		final SearchOp op = new SearchOp(dn, controls, filter);
		return doSearch(op);
	}

	@Override
	public ExtendedResponse extendedOperation(ExtendedRequest request)
			throws NamingException {
		final ExtendedOp op = new ExtendedOp(request);
		try {
			doBasicOperation(op);
		} catch (final ReferralException e) {
			if (isFollowReferral(e)) {
				final LdapContext referralContext = (LdapContext) getReferralContext(e);
				return referralContext.extendedOperation(request);
			}
			throw e;
		}
		final ExtendedResponse response = op.getExtendedResponse();
		// set existing underlying socket to startTls extended response
		if (response instanceof StartTlsResponseImpl) {
			((StartTlsResponseImpl) response).setSocket(client.getSocket());
		}
		return response;
	}

	@Override
	protected void finalize() {
		try {
			close();
		} catch (final NamingException e) {
			// ignore
		}
	}

	protected Context findNnsContext(Name name) throws NamingException {
		CannotProceedException cpe = null;
		if (env.containsKey(NamingManager.CPE)) {
			cpe = (CannotProceedException) env.get(NamingManager.CPE);
		} else {
			cpe = new CannotProceedException();
		}

		final String dn = name.get(0);

		// seems altName always is "/"
		final Name altName = new CompositeName();
		altName.add("");

		// if the dn doesn't exist, throw NameNotFoundException
		lookup(dn);

		Name resolvedName = cpe.getResolvedName();
		if (resolvedName == null) {
			resolvedName = new CompositeName();

		}

		resolvedName.add(dn);

		Name remainingName = name.getSuffix(1);
		if (remainingName.size() == 1 && remainingName.get(0).equals("")) {
			remainingName = new CompositeName();
			if (!resolvedName.get(resolvedName.size() - 1).equals("")) {
				resolvedName.add("");
			}
		}

		final LdapContextImpl context = new LdapContextImpl(this, env,
				composeName(new LdapName(dn), contextDn).toString());

		cpe.setAltName(altName);
		cpe.setAltNameCtx(context);
		cpe.setEnvironment((Hashtable<Object, Object>) env.clone());
		cpe.setRemainingName(remainingName);
		cpe.setResolvedName(resolvedName);

		final RefAddr addr = new RefAddr("nns") { //$NON-NLS-1$

			private static final long serialVersionUID = -5428706819217461955L;

			@Override
			public Object getContent() {
				return context;
			}

		};

		// class name is always java.lang.Object in RI
		final Reference ref = new Reference(Object.class.getName(), addr);

		cpe.setResolvedObj(ref);

		return DirectoryManager.getContinuationDirContext(cpe);
	}

	@Override
	public Attributes getAttributes(Name name) throws NamingException {
		return getAttributes(name, null);
	}

	@Override
	public Attributes getAttributes(Name name, String[] as)
			throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final DirContext nns = (DirContext) findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			return nns.getAttributes(remainingName, as);
		}

		/*
		 * there is only one ldap ns
		 */
		// absolute dn name to list
		final String targetDN = getTargetDN(name, contextDn);

		// construct one-level search using filter "(objectclass=*)"
		final SearchControls controls = new SearchControls();
		controls.setSearchScope(SearchControls.OBJECT_SCOPE);

		/*
		 * none should be retrieved, send OID "1.1" to server, according to RFC
		 * 2251, 4.5.1
		 */
		if (as != null && as.length == 0) {
			// "1.1" means no attributes should return
			as = new String[] { "1.1" }; //$NON-NLS-1$
		}
		controls.setReturningAttributes(as);

		final Filter filter = new Filter(Filter.PRESENT_FILTER);
		filter.setValue("objectClass");

		final LdapSearchResult result = doSearch(targetDN, filter, controls);
		final Iterator<Attributes> it = result.getEntries().values().iterator();
		if (it.hasNext()) {
			final Attributes attributes = it.next();
			final NamingEnumeration<String> ids = attributes.getIDs();
			while (ids.hasMore()) {
				final LdapAttribute attribute = (LdapAttribute) attributes
						.get(ids.next());
				attribute.setContext(this);
			}

			// FIXME: there must be only one Attributes?
			return attributes;
		} else if (result.getException() != null) {
			throw result.getException();
		}

		// no attribute retrieved from server, return a empty Attributes
		return new BasicAttributes(true);
	}

	@Override
	public Attributes getAttributes(String s) throws NamingException {
		return getAttributes(convertFromStringToName(s));
	}

	@Override
	public Attributes getAttributes(String s, String[] as)
			throws NamingException {
		return getAttributes(convertFromStringToName(s), as);
	}

	private Attributes getAttributesFromDN(Name name)
			throws InvalidNameException {
		if (name instanceof LdapName) {
			final Rdn rdn = ((LdapName) name).getRdn(name.size() - 1);
			return rdn.toAttributes();
		}

		if (name instanceof CompositeName) {
			if (name.size() == 0) {
				return new BasicAttributes(true);
			}

			final LdapName lname = new LdapName(name.get(0));
			final Rdn rdn = lname.getRdn(lname.size() - 1);
			return rdn.toAttributes();
		}

		throw new InvalidNameException(Messages.getString("ldap.26")); //$NON-NLS-1$
	}

	@Override
	public Control[] getConnectControls() throws NamingException {
		return copyControls(connCtls);
	}

	@Override
	public Hashtable<?, ?> getEnvironment() throws NamingException {
		return (Hashtable<?, ?>) env.clone();
	}

	@Override
	public String getNameInNamespace() throws NamingException {
		return contextDn.toString();
	}

	@Override
	public NameParser getNameParser(Name name) throws NamingException {
		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final Context nns = findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			return nns.getNameParser(remainingName);
		}

		return parser;
	}

	@Override
	public NameParser getNameParser(String s) throws NamingException {
		return getNameParser(convertFromStringToName(s));
	}

	private DirContext getReferralContext(ReferralException e)
			throws LimitExceededException, NamingException {
		int limit = 0;
		if (env.get("java.naming.ldap.referral.limit") != null) {
			limit = Integer.valueOf(
					(String) env.get("java.naming.ldap.referral.limit"))
					.intValue();
		}

		if (limit == -1) {
			throw new LimitExceededException(Messages.getString("ldap.25")); //$NON-NLS-1$
		}

		if (limit == 1) {
			limit = -1;
		} else if (limit != 0) {
			limit -= 1;
		}

		final Hashtable<Object, Object> newEnv = (Hashtable<Object, Object>) env
				.clone();
		newEnv.put("java.naming.ldap.referral.limit", String.valueOf(limit));
		DirContext referralContext = null;

		while (true) {
			try {
				referralContext = (DirContext) e.getReferralContext(newEnv);
				break;
			} catch (final NamingException ex) {
				if (e.skipReferral()) {
					continue;
				}
				throw ex;
			}
		}

		return referralContext;
	}

	@Override
	public Control[] getRequestControls() throws NamingException {
		return copyControls(requestControls);
	}

	@Override
	public Control[] getResponseControls() throws NamingException {
		return copyControls(responseControls);
	}

	@Override
	public DirContext getSchema(Name name) throws NamingException {
		checkName(name);
		if (null != ldapSchemaCtx) {
			return ldapSchemaCtx;
		}

		final SearchControls searchControls = new SearchControls();
		SearchOp search = null;
		Filter filter = null;
		FilterParser filterParser = null;
		LdapSearchResult sre = null;
		Map<String, Attributes> names = null;
		Set<String> keyset = null;

		if (null == subschemasubentry) {
			filterParser = new FilterParser("(objectClass=*)");
			try {
				filter = filterParser.parse();
			} catch (final ParseException e) {
				final InvalidSearchFilterException ex = new InvalidSearchFilterException(
						Messages.getString("ldap.29")); //$NON-NLS-1$
				ex.setRootCause(e);
				throw ex;
			}

			searchControls.setSearchScope(SearchControls.OBJECT_SCOPE);
			searchControls.setReturningAttributes(new String[] {
					"namingContexts", "subschemaSubentry", "altServer", });
			search = new SearchOp(name.toString(), searchControls, filter);
			search.setBatchSize(0);
			try {
				client.doOperation(search, requestControls);
			} catch (final IOException e) {
				final CommunicationException ex = new CommunicationException(
						e.getMessage());
				ex.setRootCause(e);
				if (search.getSearchResult().isEmpty()) {
					throw ex;
				}
				search.getSearchResult().setException(ex);
			}

			sre = search.getSearchResult();
			names = sre.getEntries();

			keyset = names.keySet();

			schemaRoot: for (final String key : keyset) {
				final Attributes as = names.get(key);
				final NamingEnumeration<String> ids = as.getIDs();
				while (ids.hasMore()) {
					final String id = ids.next();
					if (id.equalsIgnoreCase("subschemasubentry")) {
						subschemasubentry = (String) as.get(id).get();
						break schemaRoot;
					}
				}
			}
		}

		if (null == subschemasubentry) {
			return getSchema(name.getPrefix(name.size() - 1));
		}

		searchControls.setSearchScope(SearchControls.OBJECT_SCOPE);
		searchControls.setReturningAttributes(new String[] { "objectclasses",
				"attributetypes", "matchingrules", "ldapsyntaxes" });
		searchControls.setReturningObjFlag(true);
		filterParser = new FilterParser("(objectClass=subschema)");
		try {
			filter = filterParser.parse();
		} catch (final ParseException e) {
			final InvalidSearchFilterException ex = new InvalidSearchFilterException(
					Messages.getString("ldap.29")); //$NON-NLS-1$
			ex.setRootCause(e);
			throw ex;
		}
		search = new SearchOp(subschemasubentry, searchControls, filter);
		search.setBatchSize(0);
		try {
			client.doOperation(search, requestControls);
		} catch (final IOException e) {
			final CommunicationException ex = new CommunicationException(
					e.getMessage());
			ex.setRootCause(e);
			if (search.getSearchResult().isEmpty()) {
				throw ex;
			}
			search.getSearchResult().setException(ex);
		}
		if (search.getResult().getResultCode() == LdapResult.INVALID_DN_SYNTAX) {
			throw new InvalidNameException(Messages.getString("ldap.34"));
		}
		sre = search.getSearchResult();
		names = sre.getEntries();

		keyset = names.keySet();
		for (final String key : keyset) {
			final Attributes as = names.get(key);
			final NamingEnumeration<String> ids = as.getIDs();

			while (ids.hasMoreElements()) {
				final String schemaType = ids.nextElement();
				if (!schemaTable.contains(schemaType.toLowerCase())) {
					schemaTable.put(schemaType.toLowerCase(),
							new Hashtable<String, String>());
				}

				final Hashtable<String, String> schemaDef = (Hashtable<String, String>) schemaTable
						.get(schemaType.toLowerCase());
				final LdapAttribute attribute = (LdapAttribute) as
						.get(schemaType);
				String value;
				String attrName;
				for (int i = 0; i < attribute.size(); i++) {
					value = (String) attribute.get(i);
					attrName = SchemaParser.getName(value);
					schemaDef.put(attrName.toLowerCase(), value);
				}
			}
		}

		ldapSchemaCtx = new LdapSchemaContextImpl(this, env, name, schemaTable,
				LdapSchemaContextImpl.SCHEMA_ROOT_LEVEL);
		return ldapSchemaCtx;
	}

	@Override
	public DirContext getSchema(String s) throws NamingException {
		return getSchema(new CompositeName(s));
	}

	@Override
	public DirContext getSchemaClassDefinition(Name name)
			throws NamingException {
		final Attributes attrs = getAttributes(name,
				new String[] { "objectClass" }); //$NON-NLS-1$
		final Attribute attr = attrs.get("objectClass"); //$NON-NLS-1$

		if (null == ldapSchemaCtx) {
			getSchema(""); //$NON-NLS-1$
		}
		return ldapSchemaCtx.getClassDefinition(attr);
	}

	@Override
	public DirContext getSchemaClassDefinition(String s) throws NamingException {
		return getSchemaClassDefinition(convertFromStringToName(s));
	}

	protected String getTargetDN(Name name, Name prefix)
			throws NamingException, InvalidNameException {
		Name target = null;
		if (name.size() == 0) {
			target = prefix;
		} else if (name instanceof LdapName) {
			target = composeName(name, prefix);
		} else if (name instanceof CompositeName) {
			final LdapName alt = new LdapName(name.get(0));
			target = composeName(alt, prefix);
		} else {
			throw new InvalidNameException(Messages.getString("ldap.26")); //$NON-NLS-1$
		}
		return target.toString();
	}

	private boolean hasAttribute(Attributes attributes, String type,
			String value) throws NamingException {
		final Attribute attr = attributes.get(type);
		if (attr == null) {
			return false;
		}

		final NamingEnumeration<?> enu = attr.getAll();
		while (enu.hasMore()) {
			final Object o = enu.next();
			if (value.equalsIgnoreCase(Utils.getString(o))) {
				return true;
			}
		}

		return false;
	}

	protected boolean hasMultiNamingSpace(Name name) {
		if (name instanceof CompositeName) {
			// name '/'
			if (name.size() == 1 && "".equals(name.get(0))) {
				return true;
			}

			if (name.size() > 1) {
				return true;
			}
		}

		return false;
	}

	private void initial(LdapClient ldapClient,
			Hashtable<Object, Object> environment, String dn)
			throws InvalidNameException {
		client = ldapClient;
		client.use();
		if (environment == null) {
			env = new Hashtable<Object, Object>();
		} else {
			env = (Hashtable<Object, Object>) environment.clone();
		}

		contextDn = new LdapName(dn);
		parser = new LdapNameParser(dn);

		if (env.get(Context.REFERRAL) == null
				|| env.get(Context.REFERRAL).equals("ignore")) { //$NON-NLS-1$
			requestControls = new Control[] { NON_CRITICAL_MANAGE_REF_CONTROL };
		}

		connCtls = (Control[]) env.get(LDAP_CONTROL_CONNECT);
	}

	private boolean isFollowReferral(ReferralException e)
			throws ReferralException, PartialResultException {
		// ignore referral
		String action = (String) env.get(Context.REFERRAL);
		if (action == null) {
			action = "ignore";
		}

		if ("follow".equals(action)) {
			return true;
		} else if ("throw".equals(action)) {
			return false;

		} else if ("ignore".equals(action)) {
			// ldap.1A=[LDAP: error code 10 - Referral]
			throw new PartialResultException(Messages.getString("ldap.1A"));

		} else {
			throw new IllegalArgumentException(Messages.getString(
					"ldap.30", new Object[] { //$NON-NLS-1$
					env.get(Context.REFERRAL), Context.REFERRAL }));
		}
	}

	private boolean isInSameNamespace(Name first, Name second) {
		if (first instanceof CompositeName && second instanceof CompositeName) {
			// TODO need more test in detail
			return first.size() == second.size();
		}

		if (first instanceof LdapName && second instanceof LdapName) {
			return true;
		}

		return false;
	}

	@Override
	public NamingEnumeration<NameClassPair> list(Name name)
			throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final Context nns = findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			return nns.list(remainingName);
		}

		/*
		 * there is only one ldap ns
		 */
		// absolute dn name to list
		final String targetDN = getTargetDN(name, contextDn);

		// construct one-level search using filter "(objectclass=*)"
		final SearchControls controls = new SearchControls();
		controls.setSearchScope(SearchControls.ONELEVEL_SCOPE);
		final Filter filter = new Filter(Filter.PRESENT_FILTER);
		filter.setValue("objectClass");

		final LdapSearchResult result = doSearch(targetDN, filter, controls);

		if (result.isEmpty() && result.getException() != null) {
			throw result.getException();
		}

		return result.toNameClassPairEnumeration(targetDN);
	}

	@Override
	public NamingEnumeration<NameClassPair> list(String s)
			throws NamingException {
		return list(convertFromStringToName(s));
	}

	@Override
	public NamingEnumeration<Binding> listBindings(Name name)
			throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * contex
			 */
			final DirContext nns = (DirContext) findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			return nns.listBindings(remainingName);
		}

		/*
		 * there is only one ldap ns
		 */

		// NamingEnumeration<NameClassPair> enu = list(name);
		// absolute dn name to list
		final String targetDN = getTargetDN(name, contextDn);

		// construct one-level search using filter "(objectclass=*)"
		final SearchControls controls = new SearchControls();
		controls.setSearchScope(SearchControls.ONELEVEL_SCOPE);
		final Filter filter = new Filter(Filter.PRESENT_FILTER);
		filter.setValue("objectClass");

		final LdapSearchResult result = doSearch(targetDN, filter, controls);

		if (result.isEmpty() && result.getException() != null) {
			throw result.getException();
		}

		return result.toBindingEnumeration(this, name);
	}

	@Override
	public NamingEnumeration<Binding> listBindings(String s)
			throws NamingException {
		return listBindings(convertFromStringToName(s));
	}

	@Override
	public Object lookup(Name name) throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final DirContext nns = (DirContext) findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			return nns.lookup(remainingName);
		}

		/*
		 * there is only one ldap ns
		 */
		final Attributes attributes = getAttributes(name);
		if (!hasAttribute(attributes, "objectClass", "javaContainer")
				&& !hasAttribute(attributes, "objectClass", "javaObject")) {
			// this is no java object, return the context

			// get absolute dn name
			final String targetDN = getTargetDN(name, contextDn);
			return new LdapContextImpl(this, env, targetDN);
		}

		Object boundObject = null;
		// serializable object
		if (hasAttribute(attributes, "objectClass", "javaSerializedObject")) {
			final byte[] data = (byte[]) attributes.get("javaSerializedData")
					.get();
			ObjectInputStream in = null;
			try {
				in = new ObjectInputStream(new ByteArrayInputStream(data));
				boundObject = in.readObject();
			} catch (final IOException e) {
				final NamingException ex = new NamingException();
				ex.setRootCause(e);
				throw ex;
			} catch (final ClassNotFoundException e) {
				// TODO use javaCodebase attribute to load class defination
			} finally {
				if (in != null) {
					try {
						in.close();
					} catch (final IOException e) {
						// ignore
					}
				}
			}
		} else if (hasAttribute(attributes, "objectClass",
				"javaNamingReference")) {
			final String className = (String) attributes.get("javaClassName")
					.get();

			Attribute temp = attributes.get("javaFactory");
			String factory = null;
			if (temp != null) {
				factory = (String) temp.get();
			}

			temp = attributes.get("javaCodebase");
			String location = null;
			if (temp != null) {
				location = (String) temp.get();
			}

			final Reference ref = new Reference(className, factory, location);
			final Attribute refAddress = attributes.get("javaReferenceAddress");
			if (refAddress != null) {
				final NamingEnumeration<?> enu = refAddress.getAll();
				String separator = (String) env
						.get("java.naming.ldap.ref.separator");
				if (separator == null) {
					separator = "#";
				}
				final TreeMap<Integer, StringRefAddr> addrsMap = new TreeMap<Integer, StringRefAddr>();

				// sort addresses to TreeMap
				while (enu.hasMore()) {
					final String address = (String) enu.next();
					final StringTokenizer st = new StringTokenizer(address,
							separator);
					final int index = Integer.parseInt(st.nextToken());
					final String type = st.nextToken();
					final String content = st.nextToken();
					final StringRefAddr refAddr = new StringRefAddr(type,
							content);
					addrsMap.put(Integer.valueOf(index), refAddr);
					// ref.add(index, refAddr);
				}

				for (final StringRefAddr addr : addrsMap.values()) {
					ref.add(addr);
				}
			}
			boundObject = ref;
		}

		try {
			boundObject = NamingManager.getObjectInstance(boundObject, name,
					this, env);
			if (boundObject == null) {
				boundObject = new LdapContextImpl(this, env, getTargetDN(name,
						contextDn));
			}
			return boundObject;

		} catch (final NamingException e) {
			throw e;
		} catch (final Exception e) {
			// jndi.83=NamingManager.getObjectInstance() failed
			throw (NamingException) new NamingException(
					Messages.getString("jndi.83")).initCause(e); //$NON-NLS-1$
		}
	}

	@Override
	public Object lookup(String s) throws NamingException {
		return lookup(convertFromStringToName(s));
	}

	@Override
	public Object lookupLink(Name name) throws NamingException {
		return lookup(name);
	}

	@Override
	public Object lookupLink(String s) throws NamingException {
		return lookupLink(convertFromStringToName(s));
	}

	/**
	 * merge two instance of <code>Attribute</code> to one
	 * 
	 * @param first
	 * @param second
	 * @return
	 * @throws NamingException
	 */
	private Attribute mergeAttribute(Attribute first, Attribute second)
			throws NamingException {
		if (first == null) {
			return second;
		}

		if (second == null) {
			return first;
		}

		final Attribute attr = new LdapAttribute(first.getID(), this);
		NamingEnumeration<?> enu = first.getAll();
		while (enu.hasMore()) {
			attr.add(enu.next());
		}

		enu = second.getAll();
		while (enu.hasMore()) {
			attr.add(enu.next());
		}

		return attr;
	}

	/**
	 * merge two instanceof <code>Attributes</code> to one
	 * 
	 * @param first
	 * @param second
	 * @return
	 * @throws NamingException
	 */
	private Attributes mergeAttributes(Attributes first, Attributes second)
			throws NamingException {
		if (first == null) {
			return second;
		}

		if (second == null) {
			return first;
		}

		final BasicAttributes attrs = new BasicAttributes(true);
		NamingEnumeration<? extends Attribute> enu = first.getAll();
		while (enu.hasMore()) {
			attrs.put(enu.next());
		}

		enu = second.getAll();
		while (enu.hasMore()) {
			Attribute element = enu.next();
			element = mergeAttribute(element, attrs.get(element.getID()));
			attrs.put(element);
		}

		return attrs;
	}

	@Override
	public void modifyAttributes(Name name, int i, Attributes attributes)
			throws NamingException {
		checkName(name);
		if (attributes == null) {
			// jndi.13=Non-null attribute is required for modification
			throw new NullPointerException(Messages.getString("jndi.13")); //$NON-NLS-1$
		}

		if (i != DirContext.ADD_ATTRIBUTE && i != DirContext.REMOVE_ATTRIBUTE
				&& i != DirContext.REPLACE_ATTRIBUTE) {
			/*
			 * jndi.14=Modification code {0} must be one of
			 * DirContext.ADD_ATTRIBUTE, DirContext.REPLACE_ATTRIBUTE and
			 * DirContext.REMOVE_ATTRIBUTE
			 */
			throw new IllegalArgumentException(Messages.getString("jndi.14", i)); //$NON-NLS-1$
		}

		final NamingEnumeration<? extends Attribute> enu = attributes.getAll();
		final ModificationItem[] items = new ModificationItem[attributes.size()];
		int index = 0;
		while (enu.hasMore()) {
			items[index++] = new ModificationItem(i, enu.next());
		}

		modifyAttributes(name, items);
	}

	@Override
	public void modifyAttributes(Name name, ModificationItem[] modificationItems)
			throws NamingException {
		checkName(name);

		if (modificationItems == null) {
			// FIXME: spec say ModificationItem may not be null, but ri
			// silence in this case
			throw new NullPointerException(Messages.getString("ldap.27")); //$NON-NLS-1$
		}

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final DirContext nns = (DirContext) findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			nns.modifyAttributes(remainingName, modificationItems);
			return;
		}

		if (modificationItems.length == 0) {
			return;
		}

		/*
		 * there is only one ldap ns
		 */
		// get absolute dn name
		final String targetDN = getTargetDN(name, contextDn);
		final ModifyOp op = new ModifyOp(targetDN);
		for (final ModificationItem item : modificationItems) {
			switch (item.getModificationOp()) {
			case DirContext.ADD_ATTRIBUTE:
				op.addModification(0, new LdapAttribute(item.getAttribute(),
						this));
				break;
			case DirContext.REMOVE_ATTRIBUTE:
				op.addModification(1, new LdapAttribute(item.getAttribute(),
						this));
				break;
			case DirContext.REPLACE_ATTRIBUTE:
				op.addModification(2, new LdapAttribute(item.getAttribute(),
						this));
				break;
			default:
				throw new IllegalArgumentException(Messages.getString(
						"jndi.14", item.getModificationOp())); //$NON-NLS-1$
			}
		}

		try {
			doBasicOperation(op);
		} catch (final ReferralException e) {
			if (isFollowReferral(e)) {
				final DirContext referralContext = getReferralContext(e);
				referralContext.modifyAttributes(name, modificationItems);
				return;
			}
			throw e;
		}
	}

	@Override
	public void modifyAttributes(String s, int i, Attributes attributes)
			throws NamingException {
		modifyAttributes(convertFromStringToName(s), i, attributes);
	}

	@Override
	public void modifyAttributes(String s, ModificationItem[] modificationItems)
			throws NamingException {
		modifyAttributes(convertFromStringToName(s), modificationItems);
	}

	/**
	 * convert raw controls to particular type of controls using
	 * <code>getControlInstance(Control, Context,
     Hashtable<?, ?>)</code>
	 * 
	 * @param rawControls
	 *            raw controls
	 * @return particular type of controls
	 * 
	 * @throws NamingException
	 */
	private Control[] narrowingControls(Control[] rawControls)
			throws NamingException {
		if (rawControls == null) {
			return null;
		}

		final Control[] controls = new Control[rawControls.length];
		for (int i = 0; i < rawControls.length; ++i) {
			controls[i] = ControlFactory.getControlInstance(rawControls[i],
					this, env);
		}

		return controls;
	}

	@Override
	public LdapContext newInstance(Control[] reqCtrls) throws NamingException {
		final LdapContextImpl instance = new LdapContextImpl(this, env,
				contextDn.toString());
		instance.setRequestControls(reqCtrls);
		return instance;
	}

	private void notifyNamingListener(final NamingListener listener,
			final EventObject event) {
		/*
		 * start new thread to notify listener, so user code may not affect
		 * dispatcher thread
		 */
		final Thread thread = new Thread(new Runnable() {

			@Override
			public void run() {
				if (event instanceof NamingEvent) {
					final NamingEvent namingEvent = (NamingEvent) event;
					namingEvent.dispatch(listener);
				} else if (event instanceof NamingExceptionEvent) {
					final NamingExceptionEvent exceptionEvent = (NamingExceptionEvent) event;
					listener.namingExceptionThrown(exceptionEvent);
				} else if (event instanceof UnsolicitedNotificationEvent) {
					final UnsolicitedNotificationEvent namingEvent = (UnsolicitedNotificationEvent) event;
					namingEvent
							.dispatch((UnsolicitedNotificationListener) listener);
				}

			}

		});

		thread.start();
	}

	/**
	 * Follow referrals in SearchResultReference. Referrals in
	 * SearchResultReference is different with LDAPResult, which may contians
	 * filter parts. Filter and dn part of url will overwrite filter and
	 * baseObject of last search operation.
	 * 
	 * @param op
	 *            last search operation
	 * @param ex
	 */
	private void processSearchRef(SearchOp op, ReferralException ex) {
		final LdapSearchResult result = op.getSearchResult();
		final List<String> urls = result.getRefURLs();

		// clean referrals
		result.setRefURLs(null);

		try {
			for (final String url : urls) {

				final LdapUrlParser urlParser = LdapUtils.parserURL(url, true);
				// if url has dn part overwrite baseObject of last search
				// operation
				if (!urlParser.getBaseObject().equals("")) {
					op.setBaseObject(urlParser.getBaseObject());
				}
				// if url has filter part overwrite filter of last search
				// operation
				if (urlParser.hasFilter()) {
					op.setFilter(urlParser.getFilter());
				}
				final LdapContextImpl ctx = (LdapContextImpl) getReferralContext(ex);
				result.setAddress("ldap://" + urlParser.getHost() + ":"
						+ urlParser.getPort() + "/");
				ctx.doSearch(op);
				result.setAddress(null);
			}
		} catch (final NamingException e) {
			/*
			 * occrus exception, set to search result and return, not continue
			 * to follow referral
			 * 
			 * TODO test the behavior of ri
			 */
			result.setException(e);
			return;
		}
	}

	@Override
	public void rebind(Name n, Object o) throws NamingException {
		rebind(n, o, null);
	}

	@Override
	public void rebind(Name name, Object obj, Attributes attributes)
			throws NamingException {
		Attributes attrs = null;
		try {
			attrs = getAttributes(name);
		} catch (final NameNotFoundException e) {
			// entry does not exist, just do bind
			bind(name, obj, attributes);
			return;
		}

		if (attributes == null && obj instanceof DirContext) {
			attributes = ((DirContext) obj).getAttributes("");
			if (attributes == null) {
				attributes = attrs;
			}
		}

		destroySubcontext(name);

		bind(name, obj, attributes);
	}

	@Override
	public void rebind(String s, Object o) throws NamingException {
		rebind(convertFromStringToName(s), o);
	}

	@Override
	public void rebind(String s, Object obj, Attributes attributes)
			throws NamingException {
		rebind(convertFromStringToName(s), obj, attributes);
	}

	@Override
	public void reconnect(Control[] ac) throws NamingException {
		connCtls = copyControls(ac);
		if (isReConnect) {
			try {
				changeConnection();
			} finally {
				isReConnect = false;
			}
		}

		doBindOperation(connCtls);
	}

	@Override
	public Object removeFromEnvironment(String s) throws NamingException {
		if (s == null) {
			throw new NullPointerException();
		}

		if (s.equals(Context.BATCHSIZE)) {
			batchSize = 0;
		} else if (s.equals(LDAP_ATTRIBUTES_BINARY)) {
			binaryAttributes = null;
		}

		final Object preValue = env.remove(s);

		// if s doesn't exist in env
		if (preValue == null) {
			return preValue;
		}

		if (connectionProperties.contains(s)) {
			if (s.equals(Context.SECURITY_PROTOCOL)
					|| s.equals("java.naming.ldap.factory.socket")) {
				isReConnect = true;
			}
			isReBind = true;
		}

		return preValue;
	}

	@Override
	public void removeNamingListener(NamingListener namingListener)
			throws NamingException {
		if (listeners == null || !listeners.containsKey(namingListener)) {
			return;
		}

		if (namingListener instanceof UnsolicitedNotificationListener) {
			unls.remove(namingListener);
		}

		final List<Integer> idList = listeners.remove(namingListener);
		if (idList == null) {
			return;
		}

		try {
			for (final Integer id : idList) {
				client.removePersistentSearch(id.intValue(), requestControls);
			}
		} catch (final IOException e) {
			final CommunicationException ex = new CommunicationException();
			ex.setRootCause(e);
		}
	}

	@Override
	public void rename(Name nOld, Name nNew) throws NamingException {
		checkName(nOld);
		checkName(nNew);

		if (!isInSameNamespace(nOld, nNew)) {
			throw new InvalidNameException(Messages.getString("ldap.2A")); //$NON-NLS-1$
		}

		if (hasMultiNamingSpace(nOld) && hasMultiNamingSpace(nNew)) {
			final Context context = findNnsContext(nOld);
			context.rename(nOld.getSuffix(1), nNew.getSuffix(1));
			return;
		}

		// get absolute dn name
		final String oldTargetDN = getTargetDN(nOld, contextDn);
		final String newTargetDN = getTargetDN(nNew, contextDn);
		final LdapName name = new LdapName(newTargetDN);
		final Rdn rdn = name.getRdn(name.size() - 1);
		final String value = (String) env.get(LDAP_DELETE_RDN);
		// true is default value
		boolean isDeleteRdn = true;
		if (value != null) {
			isDeleteRdn = Boolean.getBoolean(value);
		}

		final ModifyDNOp op = new ModifyDNOp(oldTargetDN, rdn.toString(),
				isDeleteRdn, name.getPrefix(name.size() - 1).toString());

		try {
			doBasicOperation(op);
		} catch (final ReferralException e) {
			if (isFollowReferral(e)) {
				final DirContext referralContext = getReferralContext(e);
				referralContext.rename(nOld, nNew);
				return;
			}
			throw e;
		}
	}

	@Override
	public void rename(String sOld, String sNew) throws NamingException {
		rename(convertFromStringToName(sOld), convertFromStringToName(sNew));
	}

	@Override
	public NamingEnumeration<SearchResult> search(Name name,
			Attributes attributes) throws NamingException {
		return search(name, attributes, null);
	}

	@Override
	public NamingEnumeration<SearchResult> search(Name name,
			Attributes attributes, String[] as) throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final DirContext nns = (DirContext) findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			return nns.search(remainingName, attributes, as);
		}

		/*
		 * there is only one ldap ns
		 */
		// get absolute dn name
		final String targetDN = getTargetDN(name, contextDn);
		Filter filter = null;

		// construct filter
		if (attributes == null || attributes.size() == 0) {
			filter = new Filter(Filter.PRESENT_FILTER);
			filter.setValue("objectClass");
		} else {
			// only one attribute type and value pair
			if (attributes.size() == 1
					&& attributes.getAll().next().size() == 1) {
				filter = new Filter(Filter.EQUALITY_MATCH_FILTER);
				final Attribute att = attributes.getAll().next();
				filter.setValue(new AttributeTypeAndValuePair(att.getID(), att
						.get()));
			} else {
				final NamingEnumeration<? extends Attribute> attrs = attributes
						.getAll();
				filter = new Filter(Filter.AND_FILTER);
				while (attrs.hasMore()) {
					final Attribute attr = attrs.next();
					final String type = attr.getID();
					final NamingEnumeration<?> enuValues = attr.getAll();
					while (enuValues.hasMore()) {
						final Object value = enuValues.next();
						final Filter child = new Filter(
								Filter.EQUALITY_MATCH_FILTER);
						child.setValue(new AttributeTypeAndValuePair(type,
								value));
						filter.addChild(child);
					}
				}
			}
		}

		final SearchControls controls = new SearchControls();
		controls.setReturningAttributes(as);
		final LdapSearchResult result = doSearch(targetDN, filter, controls);

		if (result.isEmpty() && result.getException() != null) {
			throw result.getException();
		}
		return result.toSearchResultEnumeration(targetDN);
	}

	@Override
	public NamingEnumeration<SearchResult> search(Name name, String filter,
			Object[] objs, SearchControls searchControls)
			throws NamingException {
		checkName(name);

		if (hasMultiNamingSpace(name)) {
			/*
			 * multi ns, find next ns context, delegate operation to the next
			 * context
			 */
			final DirContext nns = (DirContext) findNnsContext(name);
			final Name remainingName = name.getSuffix(1);
			return nns.search(remainingName, filter, objs, searchControls);
		}

		/*
		 * there is only one ldap ns
		 */

		if (searchControls == null) {
			searchControls = new SearchControls();
		}

		// get absolute dn name
		final String targetDN = getTargetDN(name, contextDn);

		final Filter f = LdapUtils.parseFilter(filter, objs);

		final LdapSearchResult result = doSearch(targetDN, f, searchControls);

		if (result.isEmpty() && result.getException() != null) {
			throw result.getException();
		}
		return result.toSearchResultEnumeration(targetDN);
	}

	@Override
	public NamingEnumeration<SearchResult> search(Name name, String filter,
			SearchControls searchControls) throws NamingException {
		return search(name, filter, new Object[0], searchControls);
	}

	@Override
	public NamingEnumeration<SearchResult> search(String name,
			Attributes attributes) throws NamingException {
		return search(convertFromStringToName(name), attributes);
	}

	@Override
	public NamingEnumeration<SearchResult> search(String name,
			Attributes attributes, String[] as) throws NamingException {
		return search(convertFromStringToName(name), attributes, as);
	}

	@Override
	public NamingEnumeration<SearchResult> search(String name, String filter,
			Object[] objs, SearchControls searchControls)
			throws NamingException {
		return search(convertFromStringToName(name), filter, objs,
				searchControls);
	}

	@Override
	public NamingEnumeration<SearchResult> search(String name, String filter,
			SearchControls searchControls) throws NamingException {
		return search(convertFromStringToName(name), filter, searchControls);
	}

	@Override
	public void setRequestControls(Control[] controls) throws NamingException {
		boolean hasManageDsaITConntrol = false;

		if (env.get(Context.REFERRAL) == null
				|| env.get(Context.REFERRAL).equals("ignore")) {
			hasManageDsaITConntrol = true;
		}

		if (controls == null) {
			if (hasManageDsaITConntrol) {
				requestControls = new Control[] { NON_CRITICAL_MANAGE_REF_CONTROL };
			} else {
				requestControls = null;
			}
			return;
		}

		if (hasManageDsaITConntrol) {
			requestControls = new Control[controls.length + 1];
			System.arraycopy(controls, 0, requestControls, 0, controls.length);
			requestControls[controls.length] = NON_CRITICAL_MANAGE_REF_CONTROL;
		} else {
			requestControls = new Control[controls.length];
			System.arraycopy(controls, 0, requestControls, 0, controls.length);
		}
	}

	@Override
	public boolean targetMustExist() throws NamingException {
		return true;
	}

	@Override
	public void unbind(Name n) throws NamingException {
		// unbind and destroySubcontext do the same thing
		destroySubcontext(n);
	}

	@Override
	public void unbind(String s) throws NamingException {
		unbind(convertFromStringToName(s));
	}
}
