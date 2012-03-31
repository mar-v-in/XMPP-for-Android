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

import java.util.ArrayList;
import java.util.List;

import org.apache.harmony.jndi.internal.parser.AttributeTypeAndValuePair;
import org.apache.harmony.jndi.provider.ldap.asn1.ASN1ChoiceWrap;
import org.apache.harmony.jndi.provider.ldap.asn1.ASN1ChoiceWrap.ChosenValue;
import org.apache.harmony.jndi.provider.ldap.asn1.ASN1Encodable;
import org.apache.harmony.jndi.provider.ldap.asn1.Utils;

/**
 * This class represents Ldap search filter, and can be encoded according to
 * ASN.1. There are ten differents filter types, and two of them ('and' filter
 * and 'or' filter) is composited by several filters. So we represent filter by
 * tree: the branch of the tree should be filter of composited tye, 'and' filter
 * or 'or' filter. the leaf of the tree should be filter of atom type (contrast
 * to composited type). For one node tree, the node must be atom type filter.
 * 
 * The type number of a filter is the same as index according to Filter type,
 * defined in RFC 2251, 4.5.1. We haved defined constants for each type, such as
 * <code>AND_FILTER</code>.
 * 
 * @see org.apache.harmony.jndi.provider.ldap.asn1.LdapASN1Constant#Filter
 * @see org.apache.harmony.jndi.provider.ldap.asn1.ASN1LdapFilter
 */
public class Filter implements ASN1Encodable {
	public static class MatchingRuleAssertion implements ASN1Encodable {

		private String matchingRule;

		private String type;

		private String matchValue;

		private boolean dnAttributes = false;

		@Override
		public void encodeValues(Object[] values) {
			values[0] = Utils.getBytes(matchingRule);
			values[1] = Utils.getBytes(type);
			values[2] = Utils.getBytes(matchValue);
			values[3] = Boolean.valueOf(dnAttributes);
		}

		public String getMatchingRule() {
			return matchingRule;
		}

		public String getMatchValue() {
			return matchValue;
		}

		public String getType() {
			return type;
		}

		public boolean isDnAttributes() {
			return dnAttributes;
		}

		public void setDnAttributes(boolean dnAttributes) {
			this.dnAttributes = dnAttributes;
		}

		public void setMatchingRule(String matchingRule) {
			this.matchingRule = matchingRule;
		}

		public void setMatchValue(String matchValue) {
			this.matchValue = matchValue;
		}

		public void setType(String type) {
			this.type = type;
		}

	}

	public static class SubstringFilter implements ASN1Encodable {
		private final String type;

		private final List<ChosenValue> substrings;

		public SubstringFilter(String type) {
			this.type = type;
			substrings = new ArrayList<ChosenValue>();
		}

		public void addAny(String any) {
			substrings.add(new ChosenValue(1, any));
		}

		public void addFinal(String initial) {
			substrings.add(new ChosenValue(2, initial));
		}

		public void addInitial(String initial) {
			substrings.add(new ChosenValue(0, initial));
		}

		@Override
		public void encodeValues(Object[] values) {
			values[0] = Utils.getBytes(type);
			final ArrayList<ChosenValue> encoded = new ArrayList<ChosenValue>(
					substrings.size());
			for (final ChosenValue value : substrings) {
				// FIXME: deal with binary value
				encoded.add(new ChosenValue(value.getIndex(), Utils
						.getBytes(value.getValue())));
			}
			values[1] = encoded;
		}

		public List<ChosenValue> getSubstrings() {
			return substrings;
		}

		public String getType() {
			return type;
		}

	}

	public static final int AND_FILTER = 0;

	public static final int OR_FILTER = 1;

	public static final int NOT_FILTER = 2;

	public static final int EQUALITY_MATCH_FILTER = 3;

	public static final int SUBSTRINGS_FILTER = 4;

	public static final int GREATER_OR_EQUAL_FILTER = 5;

	public static final int LESS_OR_EQUAL_FILTER = 6;

	public static final int PRESENT_FILTER = 7;

	public static final int APPROX_MATCH_FILTER = 8;

	public static final int EXTENSIBLE_MATCH_FILTER = 9;

	/**
	 * index of the Filter type defined in RFC 2251, 4.5.1, is the same as
	 * number of filter type.
	 */
	private final int index;

	/**
	 * actual data of the filter. We use this variable hold filter data for both
	 * coposite and atom filter. If the filter is composite, <code>value</code>
	 * is <code>List<Filter></code>.
	 */
	private Object value;

	private boolean isLeaf;

	public Filter(int type) {
		if (type < 0 || type > 9) {
			// TODO: it's a internal error, should add the error message to the
			// resource file?
			throw new IllegalArgumentException(
					"Not a valided filter type: only 0 - 9 is allowed.");
		}

		index = type;
		if (0 == index || 1 == index) {
			isLeaf = false;
			value = new ArrayList<Filter>();
		} else {
			isLeaf = true;
		}
	}

	/**
	 * only for composite filter type. if invoked on atom filter, do nothing.
	 * 
	 * @param child
	 *            filter to be added as child, should not be <code>null</code>
	 */
	@SuppressWarnings("unchecked")
	public void addChild(Filter child) {
		if (!isLeaf) {
			final List<Filter> children = (List<Filter>) value;
			children.add(child);
		}
	}

	@Override
	public void encodeValues(Object[] values) {
		Object encoded;
		if (value instanceof String) {
			encoded = Utils.getBytes(value);
		} else if (value instanceof AttributeTypeAndValuePair) {
			final AttributeTypeAndValuePair pair = (AttributeTypeAndValuePair) value;
			final Object[] objs = new Object[2];
			objs[0] = Utils.getBytes(pair.getType());
			objs[1] = pair.getValue();
			if (objs[1] instanceof String) {
				objs[1] = Utils.getBytes(objs[1]);
			}
			encoded = objs;
		} else {
			encoded = value;
		}

		values[0] = new ASN1ChoiceWrap.ChosenValue(index, encoded);
	}

	/**
	 * get all children filters
	 * 
	 * @return all children filters. If the filter is atom, <code>null</code>
	 *         will be return. If the filter is composite but no child has been
	 *         added, empty of <code>List<Filter></code> will be returned.
	 */
	@SuppressWarnings("unchecked")
	public List<Filter> getChildren() {
		if (!isLeaf) {
			return (List<Filter>) value;
		}
		return null;

	}

	public int getType() {
		return index;
	}

	public Object getValue() {
		return value;
	}

	/**
	 * test whether this filter is atom filter.
	 * 
	 * @return true if this filter is atom
	 */
	public boolean isLeaf() {
		return isLeaf;
	}

	public void setValue(Object value) {
		this.value = value;
	}

}
