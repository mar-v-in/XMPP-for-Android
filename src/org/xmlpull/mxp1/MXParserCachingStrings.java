/* -*-             c-basic-offset: 4; indent-tabs-mode: nil; -*-  //------100-columns-wide------>|*/
/*
 * Copyright (c) 2002-2004 Extreme! Lab, Indiana University. All rights reserved.
 *
 * This software is open source. See the bottom of this file for the licence.
 *
 * $Id: MXParserCachingStrings.java,v 1.11 2006/10/23 13:36:27 aslom Exp $
 */

package org.xmlpull.mxp1;

import java.io.Reader;

import org.xmlpull.v1.XmlPullParserException;

/**
 * Extend MXP parser to use string cache of char[] to interned String
 * <p>
 * NOTE: it is not non-validaint parser as there is no supporting internal DTD
 * parsing no full XML 1.0 (or 1.1) character classes are supported.
 * 
 * @author <a href="http://www.extreme.indiana.edu/~aslom/">Aleksander
 *         Slominski</a>
 */

public class MXParserCachingStrings extends MXParser implements Cloneable {
	protected final static boolean CACHE_STATISTICS = false;
	protected final static boolean TRACE_SIZING = false;
	protected final static int INITIAL_CAPACITY = 13;

	private static final boolean keysAreEqual(char[] a, int astart,
			int alength, char[] b, int bstart, int blength) {
		if (alength != blength) {
			return false;
		} else {
			for (int i = 0; i < alength; i++) {
				if (a[astart + i] != b[bstart + i]) {
					return false;
				}
			}
			return true;
		}
	}

	protected int cacheStatCalls;
	protected int cacheStatWalks;
	protected int cacheStatResets;

	protected int cacheStatRehash;
	/** NOTE: implemented as integers and not flot to allow to work on J2ME. */
	protected static final int CACHE_LOAD = 77; // in % ie. 77% == 77/100
	protected int cacheEntriesCount;

	protected int cacheEntriesThreshold;
	// entries are kept in a simple linear list
	protected char[][] keys;

	// private boolean global;
	// // as it is shared state ALL access to those varaibles must be
	// synchronized!
	// // global cache variables shadow per-instance variables for maximum
	// performance
	// // as cache is alway growing the access is optimized for really fast
	// unsychronized lookups
	// private static int globalCacheEntriesCount;
	// private static int globalCacheEntriesThreshold;
	// private static char[][] globalKeys;
	// private static String[] globalValues;

	protected String[] values;

	public MXParserCachingStrings() {
		super();
		allStringsInterned = true;
		initStringCache();
	}

	@Override
	public Object clone() throws CloneNotSupportedException {
		if (reader != null) {
			if (!(reader instanceof Cloneable)) {
				throw new CloneNotSupportedException(
						"reader used in parser must implement Cloneable!");
			}
		}

		final MXParserCachingStrings cloned = (MXParserCachingStrings) super
				.clone();

		// protected Reader reader;
		if (reader != null) {
			// why Cloneable has no clone() inside? good question and needs for
			// stupid CloneableReader ...
			// cloned.reader = (Reader) ((Cloneable)reader).clone(); //BING BONG
			// doe snot work ...
			// use reflection to call clone() -- this is getting ugly!!!!
			// more background on this in
			// http://www.artima.com/intv/issues3.html "The clone Dilemma"
			try {
				final Object o = reader.getClass().getMethod("clone", null)
						.invoke(reader, null);
				cloned.reader = (Reader) o;
			} catch (final Exception e) {
				// throw new
				// CloneNotSupportedException("failed to call clone() on reader "+reader+e);
				final CloneNotSupportedException ee = new CloneNotSupportedException(
						"failed to call clone() on reader " + reader + ":" + e);
				ee.initCause(e);
				throw ee;

			}
		}

		// NOTE: "A clone of a multidimensional array is shallow, which is to
		// say that
		// "it creates only a single new array. Subarrays are shared, ..."
		// http://java.sun.com/docs/books/jls/second_edition/html/arrays.doc.html#64347

		// protected char[][] keys;
		if (keys != null) {
			// TODO REVISIT: it seems cloneCCArr() is not needed
			cloned.keys = keys.clone();
		}

		// protected String[] values;
		if (values != null) {
			cloned.values = values.clone();
		}

		// ---- base class

		// protected char[] elRawName[];
		if (elRawName != null) {
			cloned.elRawName = cloneCCArr(elRawName);
		}

		// protected int elRawNameEnd[];
		if (elRawNameEnd != null) {
			cloned.elRawNameEnd = elRawNameEnd.clone();
		}

		// protected int elRawNameLine[];
		if (elRawNameLine != null) {
			cloned.elRawNameLine = elRawNameLine.clone();
		}

		// protected String elName[];
		if (elName != null) {
			cloned.elName = elName.clone();
		}

		// protected String elPrefix[];
		if (elPrefix != null) {
			cloned.elPrefix = elPrefix.clone();
		}

		// protected String elUri[];
		if (elUri != null) {
			cloned.elUri = elUri.clone();
		}

		// protected int elNamespaceCount[];
		if (elNamespaceCount != null) {
			cloned.elNamespaceCount = elNamespaceCount.clone();
		}

		// protected String attributeName[];
		if (attributeName != null) {
			cloned.attributeName = attributeName.clone();
		}

		// protected int attributeNameHash[];
		if (attributeNameHash != null) {
			cloned.attributeNameHash = attributeNameHash.clone();
		}

		// protected String attributePrefix[];
		if (attributePrefix != null) {
			cloned.attributePrefix = attributePrefix.clone();
		}

		// protected String attributeUri[];
		if (attributeUri != null) {
			cloned.attributeUri = attributeUri.clone();
		}

		// protected String attributeValue[];
		if (attributeValue != null) {
			cloned.attributeValue = attributeValue.clone();
		}

		// protected String namespacePrefix[];
		if (namespacePrefix != null) {
			cloned.namespacePrefix = namespacePrefix.clone();
		}

		// protected int namespacePrefixHash[];
		if (namespacePrefixHash != null) {
			cloned.namespacePrefixHash = namespacePrefixHash.clone();
		}

		// protected String namespaceUri[];
		if (namespaceUri != null) {
			cloned.namespaceUri = namespaceUri.clone();
		}

		// protected String entityName[];
		if (entityName != null) {
			cloned.entityName = entityName.clone();
		}

		// protected char[] entityNameBuf[];
		if (entityNameBuf != null) {
			cloned.entityNameBuf = cloneCCArr(entityNameBuf);
		}

		// protected int entityNameHash[];
		if (entityNameHash != null) {
			cloned.entityNameHash = entityNameHash.clone();
		}

		// protected char[] entityReplacementBuf[];
		if (entityReplacementBuf != null) {
			cloned.entityReplacementBuf = cloneCCArr(entityReplacementBuf);
		}

		// protected String entityReplacement[];
		if (entityReplacement != null) {
			cloned.entityReplacement = entityReplacement.clone();
		}

		// protected char buf[];
		if (buf != null) {
			cloned.buf = buf.clone();
		}

		// protected char pc[];
		if (pc != null) {
			cloned.pc = pc.clone();
		}

		// protected char[] charRefOneCharBuf;
		if (charRefOneCharBuf != null) {
			cloned.charRefOneCharBuf = charRefOneCharBuf.clone();
		}

		return cloned;
	}

	private char[][] cloneCCArr(char[][] ccarr) {
		final char[][] cca = ccarr.clone();
		for (int i = 0; i < cca.length; i++) {
			if (cca[i] != null) {
				cca[i] = cca[i].clone();
			}
		}
		return cca;
	}

	/**
	 * Hook to GC finalization to print statistics about pool cache impl. perf.
	 */
	@Override
	public void finalize() {
		if (CACHE_STATISTICS) {
			if (cacheStatCalls > 0) {
				System.out.println("statistics: average walk:" + cacheStatWalks
						+ "/" + cacheStatCalls + " ("
						+ ((double) cacheStatWalks) / cacheStatCalls + ")"
						+ " resets=" + cacheStatResets + " rehash="
						+ cacheStatRehash);
			} else {
				System.out.println("statistics: cache was not used");
			}
		}
	}

	@Override
	public boolean getFeature(String name) {
		if (FEATURE_NAMES_INTERNED.equals(name)) {
			return allStringsInterned;
		} else {
			return super.getFeature(name);
		}
	}

	@SuppressWarnings("unused")
	protected void initStringCache() {
		if (keys == null) {
			// int initialCapacity = 13;
			if (INITIAL_CAPACITY < 0) {
				throw new IllegalArgumentException("Illegal initial capacity: "
						+ INITIAL_CAPACITY);
			}
			if (CACHE_LOAD < 0 || CACHE_LOAD > 99) {
				throw new IllegalArgumentException("Illegal load factor: "
						+ CACHE_LOAD);
			}
			cacheEntriesThreshold = ((INITIAL_CAPACITY * CACHE_LOAD) / 100);
			if (cacheEntriesThreshold >= INITIAL_CAPACITY) {
				throw new RuntimeException(
						"internal error: threshold must be less than capacity: "
								+ INITIAL_CAPACITY);
			}
			keys = new char[INITIAL_CAPACITY][];
			values = new String[INITIAL_CAPACITY];
			cacheEntriesCount = 0;
		}
	}

	/**
	 * If feature name interning is enabled then this funtion MUST return
	 * interned string.
	 */
	@Override
	protected String newString(char[] cbuf, int off, int len) {
		if (allStringsInterned) {
			return newStringIntern(cbuf, off, len);
		} else {
			return super.newString(cbuf, off, len);
		}
	}

	/**
	 * This is <b>efficient</b> implementation of pool that returns interned
	 * String based on char[] input.
	 */
	@Override
	protected String newStringIntern(char[] cbuf, int off, int len) {
		// return (new String(cbuf, off, len)).intern();
		if (CACHE_STATISTICS) {
			++cacheStatCalls;
		}
		if (cacheEntriesCount >= cacheEntriesThreshold) {
			rehash();
		}
		int offset = fastHash(cbuf, off, len) % keys.length;
		char[] k = null;
		while ((k = keys[offset]) != null
				&& !keysAreEqual(k, 0, k.length, cbuf, off, len)) {
			offset = (offset + 1) % keys.length;
			if (CACHE_STATISTICS) {
				++cacheStatWalks;
			}
		}
		if (k != null) {
			return values[offset];
		} else {
			k = new char[len];
			System.arraycopy(cbuf, off, k, 0, len);
			final String v = new String(k).intern();
			keys[offset] = k;
			values[offset] = v;
			++cacheEntriesCount;
			return v;
		}

	}

	private void rehash() {
		if (CACHE_STATISTICS) {
			++cacheStatRehash;
		}
		final int newSize = 2 * keys.length + 1;
		cacheEntriesThreshold = ((newSize * CACHE_LOAD) / 100);
		if (cacheEntriesThreshold >= newSize) {
			throw new RuntimeException(
					"internal error: threshold must be less than capacity: "
							+ newSize);
		}
		if (TRACE_SIZING) {
			System.err.println("resized " + keys.length + " => " + newSize);
		}
		final char[][] newKeys = new char[newSize][];
		final String[] newValues = new String[newSize];
		for (int i = 0; i < keys.length; i++) {
			final char[] k = keys[i];
			keys[i] = null;
			final String v = values[i];
			values[i] = null;
			if (k != null) {
				int newOffset = fastHash(k, 0, k.length) % newSize;
				char[] newk = null;
				while ((newk = newKeys[newOffset]) != null) {
					if (keysAreEqual(newk, 0, newk.length, k, 0, k.length)) {
						throw new RuntimeException(
								"internal cache error: duplicated keys: "
										+ new String(newk) + " and "
										+ new String(k));
					}
					newOffset = (newOffset + 1) % newSize;
				}

				newKeys[newOffset] = k;
				newValues[newOffset] = v;
			}
		}
		keys = newKeys;
		values = newValues;
	}

	@Override
	protected void resetStringCache() {
		// System.out.println("reset string cache()");
		if (CACHE_STATISTICS) {
			++cacheStatResets;
		}
		initStringCache();
	}

	/**
	 * This allows to change name iterning property in this enhanced impl.
	 */
	@Override
	public void setFeature(String name, boolean state)
			throws XmlPullParserException {
		if (FEATURE_NAMES_INTERNED.equals(name)) {
			if (eventType != START_DOCUMENT) {
				throw new XmlPullParserException(
						"interning names feature can only be changed before parsing",
						this, null);
			}
			allStringsInterned = state;
			if (state == false) {
				if (keys != null) {
					resetStringCache();
				}
			}
		} else {
			super.setFeature(name, state);
		}
	}

}

/*
 * Indiana University Extreme! Lab Software License, Version 1.2
 * 
 * Copyright (c) 2002-2004 The Trustees of Indiana University. All rights
 * reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 * 1) All redistributions of source code must retain the above copyright notice,
 * the list of authors in the original source code, this list of conditions and
 * the disclaimer listed in this license;
 * 
 * 2) All redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the disclaimer listed in this license in
 * the documentation and/or other materials provided with the distribution;
 * 
 * 3) Any documentation included with all redistributions must include the
 * following acknowledgement:
 * 
 * "This product includes software developed by the Indiana University Extreme!
 * Lab. For further information please visit http://www.extreme.indiana.edu/"
 * 
 * Alternatively, this acknowledgment may appear in the software itself, and
 * wherever such third-party acknowledgments normally appear.
 * 
 * 4) The name "Indiana University" or "Indiana University Extreme! Lab" shall
 * not be used to endorse or promote products derived from this software without
 * prior written permission from Indiana University. For written permission,
 * please contact http://www.extreme.indiana.edu/.
 * 
 * 5) Products derived from this software may not use "Indiana
 * University" name nor may "Indiana University" appear in their name, without
 * prior written permission of the Indiana University.
 * 
 * Indiana University provides no reassurances that the source code provided
 * does not infringe the patent or any other intellectual property rights of any
 * other entity. Indiana University disclaims any liability to any recipient for
 * claims brought by any other entity based on infringement of intellectual
 * property rights or otherwise.
 * 
 * LICENSEE UNDERSTANDS THAT SOFTWARE IS PROVIDED "AS IS" FOR WHICH NO
 * WARRANTIES AS TO CAPABILITIES OR ACCURACY ARE MADE. INDIANA UNIVERSITY GIVES
 * NO WARRANTIES AND MAKES NO REPRESENTATION THAT SOFTWARE IS FREE OF
 * INFRINGEMENT OF THIRD PARTY PATENT, COPYRIGHT, OR OTHER PROPRIETARY RIGHTS.
 * INDIANA UNIVERSITY MAKES NO WARRANTIES THAT SOFTWARE IS FREE FROM "BUGS",
 * "VIRUSES", "TROJAN HORSES", "TRAP DOORS", "WORMS", OR OTHER HARMFUL CODE.
 * LICENSEE ASSUMES THE ENTIRE RISK AS TO THE PERFORMANCE OF SOFTWARE AND/OR
 * ASSOCIATED MATERIALS, AND TO THE PERFORMANCE AND VALIDITY OF INFORMATION
 * GENERATED USING SOFTWARE.
 */

