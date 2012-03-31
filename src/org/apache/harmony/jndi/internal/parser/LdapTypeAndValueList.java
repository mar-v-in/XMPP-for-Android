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

package org.apache.harmony.jndi.internal.parser;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.apache.harmony.javax.naming.directory.BasicAttribute;
import org.apache.harmony.javax.naming.ldap.Rdn;
import org.apache.harmony.jndi.internal.nls.Messages;

/**
 * This class maintains a list of relative distinguished names it supports
 * multiple values for any attribute
 */
public class LdapTypeAndValueList implements Map {

	/**
	 * Its a wrapper for String/ByteArray that implements the Comparable
	 * interface and uses an upper case string value to compare
	 * 
	 * @author Juan Giannuzzo
	 * @author Osvaldo C. Demo
	 */
	private class ValueWrapper implements Comparable {

		private final Object value;

		/**
		 * Constructor
		 * 
		 * @param value
		 *            String value to make case insensitive
		 */
		ValueWrapper(Object value) {
			this.value = value;
		}

		/**
		 * Used to compare CaseInsensitiveStrings
		 * 
		 * @param obj
		 *            object to compare
		 * @return 0 when its equal, 1 when its greater, -1 otherwise
		 * @throws ClassCastException
		 *             when the object is not an instance of
		 *             CaseInsensitiveString
		 * 
		 */
		@Override
		public int compareTo(Object obj) {
			return getStringValue().toUpperCase().compareTo(
					((ValueWrapper) obj).getStringValue().toUpperCase());
		}

		/**
		 * Returns a String Value for the stored object value
		 * 
		 * @return String value
		 */
		public String getStringValue() {
			if (value instanceof String) {
				return (String) value;
			}
			return Rdn.escapeValue(value);
		}

		/**
		 * Getter for value
		 * 
		 * @return the value object (String or ByteArray)
		 */
		public Object getValue() {
			return value;
		}
	}

	private List list = null;

	private final Map attributes = new TreeMap();

	/**
	 * Clears all contents of the list
	 */
	@Override
	public void clear() {
		attributes.clear();
	}

	/**
	 * Used to check if a key exists in the list
	 * 
	 * @return true if the key exists, false otherwise.
	 */
	@Override
	public boolean containsKey(Object key) {
		return attributes.containsKey(key);
	}

	/**
	 * Used to check if a value exists in the list
	 * 
	 * @return true if the value exists, false otherwise.
	 */
	@Override
	public boolean containsValue(Object value) {
		return attributes.containsValue(value);
	}

	@Override
	public Set entrySet() {
		return attributes.entrySet();
	}

	/**
	 * Used to get the values list from a key
	 * 
	 * @return the list of values corresponding to the key
	 */
	@Override
	public Object get(Object key) {
		return attributes.get(key);
	}

	/**
	 * @return false when is not empty, true otherwise.
	 */
	@Override
	public boolean isEmpty() {
		return attributes.isEmpty();
	}

	@Override
	public Set keySet() {
		return attributes.keySet();
	}

	/**
	 * Used to insert Key/Value pairs
	 * 
	 * @param key
	 *            the key
	 * @param value
	 *            a value
	 * @return the list of values corresponding to this key
	 */
	@Override
	public Object put(Object key, Object value) {
		if (attributes.get(new ValueWrapper(key)) == null) {
			list = new ArrayList();
			list.add(new ValueWrapper(value));
			attributes.put(new ValueWrapper(key), list);
		} else {
			list = (List) attributes.get(new ValueWrapper(key));
			list.add(new ValueWrapper(value));
			Collections.sort(list);
			attributes.put(new ValueWrapper(key), list);
		}
		return list;
	}

	@Override
	public void putAll(Map map) {
		throw new UnsupportedOperationException(Messages.getString("ldap.1B"));
	}

	/**
	 * Removes the list of values from the given key
	 */
	@Override
	public Object remove(Object key) {
		return attributes.remove(key);
	}

	/**
	 * @return the list size
	 */
	@Override
	public int size() {
		return attributes.size();
	}

	/**
	 * A list of attributes, each attribute can contain more than one value
	 * 
	 * @return a list of Attribute
	 */
	public List toAttributeList() {
		final List list = new ArrayList();
		for (final Iterator iter = keySet().iterator(); iter.hasNext();) {
			final ValueWrapper element = (ValueWrapper) iter.next();
			final BasicAttribute ba = new BasicAttribute(
					element.getStringValue(), true);
			final List list2 = (List) attributes.get(element);
			for (final Iterator iterator = list2.iterator(); iterator.hasNext();) {
				final ValueWrapper elementList = (ValueWrapper) iterator.next();
				ba.add(elementList.getValue());
			}
			list.add(ba);
		}
		return list;
	}

	@Override
	public String toString() {
		return attributes.toString();
	}

	@Override
	public Collection values() {
		throw new UnsupportedOperationException(Messages.getString("ldap.1B"));
	}

}