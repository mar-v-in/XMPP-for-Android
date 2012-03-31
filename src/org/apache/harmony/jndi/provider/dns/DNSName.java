/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @author Alexei Y. Zakharov
 */

package org.apache.harmony.jndi.provider.dns;

import java.util.Enumeration;
import java.util.Vector;

import org.apache.harmony.javax.naming.InvalidNameException;
import org.apache.harmony.javax.naming.Name;
import org.apache.harmony.jndi.internal.nls.Messages;

/**
 * Represents the name in Domain Name System. The most significant part is the
 * rightmost part of string representation.
 * 
 * TODO add escapes checking for name components (?)
 */
public class DNSName implements Name, Cloneable {

	private static final long serialVersionUID = -5931312723719884197L;

	/**
	 * Checks if the given string is a correct DNS name component.
	 * 
	 * @param comp
	 *            the string component to check
	 * @return <code>true</code> or <code>false</code>
	 */
	static boolean componentIsOk(String comp) {
		if (comp.indexOf('.') != -1
				|| comp.length() > ProviderConstants.LABEL_MAX_CHARS) {
			return false;
		}
		return true;
	}

	private final Vector<String> components;

	/**
	 * Constructs an empty DNS name.
	 */
	public DNSName() {
		super();
		components = new Vector<String>();
	}

	/**
	 * Constructs new DNS name with given components.
	 * 
	 * @param compVect
	 *            the vector of name components
	 */
	DNSName(Vector<String> compVect) {
		components = compVect;
	}

	/**
	 * Adds the given component to the list of components at the specified
	 * index.
	 * 
	 * @param posn
	 *            an index to insert at
	 * @param comp
	 *            the component to insert
	 * @return updated name (<code>this</code> object)
	 * @throws InvalidNameException
	 *             if the given string can't be used as a DNS name component
	 * @throws ArrayIndexOutOfBoundsException
	 *             if <code>posn</code> index is out of range
	 * @see org.apache.harmony.javax.naming.Name#add(int, java.lang.String)
	 */
	@Override
	public Name add(int posn, String comp) throws InvalidNameException {
		if (!componentIsOk(comp)) {
			// jndi.30={0} can't be used as a component for DNS name
			throw new InvalidNameException(Messages.getString("jndi.30", comp)); //$NON-NLS-1$
		}
		components.insertElementAt(comp, posn);
		return this;
	}

	/**
	 * Adds the given component to the end of the current name.
	 * 
	 * @param comp
	 *            the component to insert
	 * @return updated name (<code>this</code> object)
	 * @throws InvalidNameException
	 *             if the given string can't be used as a DNS name component
	 * @see org.apache.harmony.javax.naming.Name#add(java.lang.String)
	 */
	@Override
	public Name add(String comp) throws InvalidNameException {
		if (!componentIsOk(comp)) {
			// jndi.30={0} can't be used as a component for DNS name
			throw new InvalidNameException(Messages.getString("jndi.30", comp));//$NON-NLS-1$
		}
		components.addElement(comp);
		return this;
	}

	/**
	 * Add given components to the current name. The order is preserved.
	 * 
	 * @param posn
	 *            the index at which given components should be added
	 * @param name
	 *            components this name should be added
	 * @return <code>this</code> object
	 * @throws InvalidNameException
	 *             if the name given is not an instance of <code>DNSName</code>
	 *             class
	 * @see org.apache.harmony.javax.naming.Name#addAll(int,
	 *      org.apache.harmony.javax.naming.Name)
	 */
	@Override
	public Name addAll(int posn, Name name) throws InvalidNameException {
		Vector<String> newComps;

		if (!(name instanceof DNSName)) {
			// jndi.31=Given name is not an instance of DNSName class
			throw new InvalidNameException(Messages.getString("jndi.31")); //$NON-NLS-1$
		}
		newComps = ((DNSName) name).components;
		components.addAll(posn, newComps);
		return this;
	}

	/**
	 * Add given components to the end of current name. The order is preserved.
	 * 
	 * @param name
	 *            components this name should be added
	 * @return <code>this</code> object
	 * @throws InvalidNameException
	 *             if the name given is not an instance of <code>DNSName</code>
	 *             class
	 * @see org.apache.harmony.javax.naming.Name#addAll(javax.naming.Name)
	 */
	@Override
	public Name addAll(Name name) throws InvalidNameException {
		Vector<String> newComps;

		if (!(name instanceof DNSName)) {
			// jndi.31=Given name is not an instance of DNSName class
			throw new InvalidNameException(Messages.getString("jndi.31")); //$NON-NLS-1$
		}
		newComps = ((DNSName) name).components;
		components.addAll(newComps);
		return this;
	}

	/**
	 * Returns clone of the current name.
	 * 
	 * @see java.lang.Object#clone()
	 */
	@Override
	public Object clone() {
		final Vector<String> compClone = new Vector<String>();
		final Enumeration<String> compEnum = components.elements();

		while (compEnum.hasMoreElements()) {
			compClone.addElement(compEnum.nextElement());
		}
		return new DNSName(compClone);
	}

	/**
	 * Compares the specified name with the current name. It checks all
	 * components beginning at the most significant one. The method
	 * <code>compareToIgnoreCase</code> of underlying <code>String</code> object
	 * will be used for the real comparison of components. If two names have
	 * different sizes and the longer name begins with the shorter name then the
	 * longer name will be "bigger" than shorter.
	 * 
	 * @param name
	 *            the name to compare with
	 * @return negative number; zero or positive number
	 * @throws ClassCastException
	 *             if the <code>name</code> has class other than
	 *             <code>DNSName</code>
	 * @throws NullPointerException
	 *             if the <code>name</code> is null
	 * @see org.apache.harmony.javax.naming.Name#compareTo(java.lang.Object)
	 * @see java.lang.String#compareToIgnoreCase(java.lang.String)
	 */
	@Override
	public int compareTo(Object name) {
		DNSName nameToCompareWith = null;
		Enumeration<String> enum1;
		Enumeration<String> enum2;

		if (name == null) {
			// jndi.2E=The name is null
			throw new NullPointerException(Messages.getString("jndi.2E")); //$NON-NLS-1$
		}
		if (!(name instanceof DNSName)) {
			// jndi.2F=Given name is not an instance of DNSName class
			throw new ClassCastException(Messages.getString("jndi.2F")); //$NON-NLS-1$
		}
		nameToCompareWith = (DNSName) name;
		enum1 = getAll();
		enum2 = nameToCompareWith.getAll();
		while (enum1.hasMoreElements()) {
			final String comp1 = enum1.nextElement();
			String comp2;
			int k;

			if (!enum2.hasMoreElements()) {
				return 1;
			}
			comp2 = enum2.nextElement();
			k = comp1.compareToIgnoreCase(comp2);
			if (k != 0) {
				return k;
			}
		}
		if (enum2.hasMoreElements()) {
			return -1;
		}
		return 0;
	}

	/**
	 * Checks if the current name ends with the given name. Returns
	 * <code>false</code> if the given name is <code>null</code> or not an
	 * instance of <code>DNSName</code> class.
	 * 
	 * @param name
	 *            the name to compare the end of the current message with
	 * @return <code>true</code> or <code>false</code>
	 * @see org.apache.harmony.javax.naming.Name#endsWith(javax.naming.Name)
	 */
	@Override
	public boolean endsWith(Name name) {
		int k = -1;
		int len1;
		int len2;

		if (name == null) {
			return false;
		}
		if (!(name instanceof DNSName)) {
			return false;
		}
		len1 = size();
		len2 = name.size();
		if (len1 == len2) {
			try {
				k = compareTo(name);
			} catch (final ClassCastException e) {
				// impossible case
				// ProviderMgr.logger.log(Level.SEVERE, "impossible case", e);
			}
		} else if (len1 > len2) {
			final Name suffix = getSuffix(len1 - len2);

			k = suffix.compareTo(name);
		}
		return (k == 0 ? true : false);
	}

	/**
	 * @param posn
	 *            index of the component to return
	 * @return name component at index <code>posn</code>
	 * @throws ArrayIndexOutOfBoundsException
	 *             if <code>posn</code> index is out of range
	 * @see org.apache.harmony.javax.naming.Name#get(int)
	 */
	@Override
	public String get(int posn) {
		return components.elementAt(posn);
	}

	/**
	 * Returns all components of the current name.
	 * 
	 * @return enumeration of strings
	 * @see org.apache.harmony.javax.naming.Name#getAll()
	 */
	@Override
	public Enumeration<String> getAll() {
		return components.elements();
	}

	/**
	 * @param posn
	 *            index to stop at
	 * @return a <code>DNSName</code> object that consists of components of the
	 *         current name with indexes from <code>0</code> to and not
	 *         including <code>posn</code>.
	 * @throws ArrayIndexOutOfBoundsException
	 *             if <code>posn</code> index is out of range
	 * @see org.apache.harmony.javax.naming.Name#getPrefix(int)
	 */
	@Override
	public Name getPrefix(int posn) {
		final Vector<String> prefix = new Vector<String>();

		for (int i = 0; i < posn; i++) {
			prefix.addElement(components.elementAt(i));
		}
		return new DNSName(prefix);
	}

	/**
	 * @param posn
	 *            index to start at
	 * @return a <code>DNSName</code> object that consists of components of the
	 *         current name with indexes from <code>posn</code> to and not
	 *         including <code>#size()</code>.
	 * @throws ArrayIndexOutOfBoundsException
	 *             if <code>posn</code> index is out of range
	 * @see org.apache.harmony.javax.naming.Name#getSuffix(int)
	 */
	@Override
	public Name getSuffix(int posn) {
		final Vector<String> prefix = new Vector<String>();

		for (int i = posn; i < components.size(); i++) {
			prefix.addElement(components.elementAt(i));
		}
		return new DNSName(prefix);
	}

	/**
	 * @return <code>true</code> if this name is an absolute DNS name, i.e.
	 *         starts with empty label
	 */
	public boolean isAbsolute() {
		if (components.size() > 0) {
			final String el0 = components.get(0);

			if (el0 != null && el0.length() == 0) {
				return true;
			}
		}
		return false;
	}

	/**
	 * @return <code>true</code> if this name is empty
	 * @see org.apache.harmony.javax.naming.Name#isEmpty()
	 */
	@Override
	public boolean isEmpty() {
		return components.isEmpty();
	}

	/**
	 * Removes component with specified number.
	 * 
	 * @param posn
	 *            index of component to remove
	 * @throws ArrayIndexOutOfBoundsException
	 *             if <code>posn</code> index is out of range
	 * @see org.apache.harmony.javax.naming.Name#remove(int)
	 */
	@Override
	public Object remove(int posn) throws InvalidNameException {
		return components.remove(posn);
	}

	/**
	 * @return size of this name
	 * @see org.apache.harmony.javax.naming.Name#size()
	 */
	@Override
	public int size() {
		return components.size();
	}

	/**
	 * Checks if the current name starts with the given name. Returns
	 * <code>false</code> if the given name is <code>null</code> or not an
	 * instance of <code>DNSName</code> class.
	 * 
	 * @param name
	 *            the name to compare the beginning of the current message with
	 * @return <code>true</code> or <code>false</code>
	 * @see org.apache.harmony.javax.naming.Name#startsWith(javax.naming.Name)
	 */
	@Override
	public boolean startsWith(Name name) {
		int k = -1;
		int len1;
		int len2;

		if (name == null) {
			return false;
		}
		if (!(name instanceof DNSName)) {
			return false;
		}
		len1 = size();
		len2 = name.size();
		if (len1 == len2) {
			try {
				k = compareTo(name);
			} catch (final ClassCastException e) {
				// impossible case
				// ProviderMgr.logger.log(Level.SEVERE, "impossible error", e);
			}
		} else if (len1 > len2) {
			final Name prefix = getPrefix(len2);

			k = prefix.compareTo(name);
		}
		return (k == 0 ? true : false);
	}

	/**
	 * Returns the string representation of this DNS name.
	 * 
	 * @return DNS name in string form
	 */
	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder();

		for (int i = components.size() - 1; i >= 0; i--) {
			final String comp = components.elementAt(i);
			if (sb.length() > 0 || i == 0) {
				sb.append('.');
			}
			if (comp.length() > 0) {
				sb.append(comp);
			}
		}
		return sb.toString();
	}
}
