/* -*-             c-basic-offset: 4; indent-tabs-mode: nil; -*-  //------100-columns-wide------>|*/
/*
 * Copyright (c) 2002-2004 Extreme! Lab, Indiana University. All rights reserved.
 *
 * This software is open source. See the bottom of this file for the licence.
 *
 * $Id: MXParserNonValidating.java,v 1.6 2004/03/02 09:14:41 aslom Exp $
 */

package org.xmlpull.mxp1;

import java.io.IOException;

import org.xmlpull.v1.XmlPullParserException;

/**
 * Extend MXP parser to be full non validating XML 1.0 parser (added internal
 * DTD parsing and support for full XML 1.0 (or 1.1) character classes).
 * 
 * @author <a href="http://www.extreme.indiana.edu/~aslom/">Aleksander
 *         Slominski</a>
 */

public class MXParserNonValidating extends MXParserCachingStrings {
	private boolean processDocDecl;

	public MXParserNonValidating() {
		super();
	}

	@Override
	public boolean getFeature(String name) {
		if (FEATURE_PROCESS_DOCDECL.equals(name)) {
			return processDocDecl;
		} else {
			return super.getFeature(name);
		}
	}

	@Override
	protected char[] lookuEntityReplacement(int entitNameLen)
			throws XmlPullParserException, IOException

	{
		if (!allStringsInterned) {
			final int hash = fastHash(buf, posStart, posEnd - posStart);
			LOOP: for (int i = entityEnd - 1; i >= 0; --i) {
				if (hash == entityNameHash[i]
						&& entitNameLen == entityNameBuf[i].length) {
					final char[] entityBuf = entityNameBuf[i];
					for (int j = 0; j < entitNameLen; j++) {
						if (buf[posStart + j] != entityBuf[j]) {
							continue LOOP;
						}
					}
					if (tokenize) {
						text = entityReplacement[i];
					}
					return entityReplacementBuf[i];
				}
			}
		} else {
			entityRefName = newString(buf, posStart, posEnd - posStart);
			for (int i = entityEnd - 1; i >= 0; --i) {
				// take advantage that interning for newStirng is enforced
				if (entityRefName == entityName[i]) {
					if (tokenize) {
						text = entityReplacement[i];
					}
					return entityReplacementBuf[i];
				}
			}
		}
		return null;
	}

	// will need to overwrite more() and processEntityRef ...
	@Override
	protected char more() throws IOException, XmlPullParserException {
		return super.more();
	}

	@Override
	protected void parseDocdecl() throws XmlPullParserException, IOException {
		// make sure that tokenize flag is disabled temporarily!!!!
		final boolean oldTokenize = tokenize;
		try {
			// ASSUMPTION: seen <!D
			char ch = more();
			if (ch != 'O') {
				throw new XmlPullParserException("expected <!DOCTYPE", this,
						null);
			}
			ch = more();
			if (ch != 'C') {
				throw new XmlPullParserException("expected <!DOCTYPE", this,
						null);
			}
			ch = more();
			if (ch != 'T') {
				throw new XmlPullParserException("expected <!DOCTYPE", this,
						null);
			}
			ch = more();
			if (ch != 'Y') {
				throw new XmlPullParserException("expected <!DOCTYPE", this,
						null);
			}
			ch = more();
			if (ch != 'P') {
				throw new XmlPullParserException("expected <!DOCTYPE", this,
						null);
			}
			ch = more();
			if (ch != 'E') {
				throw new XmlPullParserException("expected <!DOCTYPE", this,
						null);
			}
			posStart = pos;
			// do simple and crude scanning for end of doctype

			// [28] doctypedecl ::= '<!DOCTYPE' S Name (S ExternalID)? S? ('['
			// (markupdecl | DeclSep)* ']' S?)? '>'
			ch = requireNextS();
			ch = readName(ch);
			ch = skipS(ch);
			// [75] ExternalID ::= 'SYSTEM' S SystemLiteral | 'PUBLIC' S
			// PubidLiteral S SystemLiteral
			if (ch == 'S' || ch == 'P') {
				ch = processExternalId(ch);
				ch = skipS(ch);
			}
			if (ch == '[') {
				processInternalSubset();
			}
			ch = skipS(ch);
			if (ch != '>') {
				throw new XmlPullParserException(
						"expected > to finish <[DOCTYPE but got "
								+ printable(ch), this, null);
			}
			posEnd = pos - 1;
		} finally {
			tokenize = oldTokenize;
		}
	}

	protected void processAttlistDecl(char ch) throws XmlPullParserException,
			IOException {
		// [52] AttlistDecl ::= '<!ATTLIST' S Name AttDef* S? '>'
		// [53] AttDef ::= S Name S AttType S DefaultDecl
		// [54] AttType ::= StringType | TokenizedType | EnumeratedType
		// [55] StringType ::= 'CDATA'
		// [56] TokenizedType ::= 'ID' | 'IDREF' | 'IDREFS' | 'ENTITY' |
		// 'ENTITIES' | 'NMTOKEN'
		// | 'NMTOKENS'
		// [57] EnumeratedType ::= NotationType | Enumeration
		// [58] NotationType ::= 'NOTATION' S '(' S? Name (S? '|' S? Name)* S?
		// ')'
		// [59] Enumeration ::= '(' S? Nmtoken (S? '|' S? Nmtoken)* S? ')'
		// [60] DefaultDecl ::= '#REQUIRED' | '#IMPLIED' | (('#FIXED' S)?
		// AttValue)
		// [WFC: No < in Attribute Values]

		// assert ch == 'A'

	}

	protected void processElementDecl(char ch) throws XmlPullParserException,
			IOException {
		// [45] elementdecl ::= '<!ELEMENT' S Name S contentspec S? '>'
		// ???? [VC: Unique Element Type Declaration]
		// [46] contentspec ::= 'EMPTY' | 'ANY' | Mixed | children
		// [47] children ::= (choice | seq) ('?' | '*' | '+')?
		// [48] cp ::= (Name | choice | seq) ('?' | '*' | '+')?
		// [49] choice ::= '(' S? cp ( S? '|' S? cp )+ S? ')'
		// [50] seq ::= '(' S? cp ( S? ',' S? cp )* S? ')'
		// [51] Mixed ::= '(' S? '#PCDATA' (S? '|' S? Name)* S? ')*'
		// | '(' S? '#PCDATA' S? ')'

		// assert ch == 'L'
		ch = requireNextS();
		readName(ch);
		ch = requireNextS();
		// readContentSpec(ch);
	}

	protected void processEntityDecl(char ch) throws XmlPullParserException,
			IOException {

		// [70] EntityDecl ::= GEDecl | PEDecl
		// [71] GEDecl ::= '<!ENTITY' S Name S EntityDef S? '>'
		// [72] PEDecl ::= '<!ENTITY' S '%' S Name S PEDef S? '>'
		// [73] EntityDef ::= EntityValue | (ExternalID NDataDecl?)
		// [74] PEDef ::= EntityValue | ExternalID
		// [75] ExternalID ::= 'SYSTEM' S SystemLiteral | 'PUBLIC' S
		// PubidLiteral S SystemLiteral

		// [9] EntityValue ::= '"' ([^%&"] | PEReference | Reference)* '"'
		// | "'" ([^%&'] | PEReference | Reference)* "'"

		// assert ch == 'N'

	}

	protected char processExternalId(char ch) throws XmlPullParserException,
			IOException {
		// [75] ExternalID ::= 'SYSTEM' S SystemLiteral | 'PUBLIC' S
		// PubidLiteral S SystemLiteral
		// [11] SystemLiteral ::= ('"' [^"]* '"') | ("'" [^']* "'")
		// [12] PubidLiteral ::= '"' PubidChar* '"' | "'" (PubidChar - "'")* "'"
		// [13] PubidChar ::= #x20 | #xD | #xA | [a-zA-Z0-9] |
		// [-'()+,./:=?;!*#@$_%]

		// TODO

		return ch;
	}

	protected void processInternalSubset() throws XmlPullParserException,
			IOException {
		// [28] ... (markupdecl | DeclSep)* ']' // [WFC: External Subset]
		// [28a] DeclSep ::= PEReference | S // [WFC: PE Between Declarations]

		// [69] PEReference ::= '%' Name ';' //[WFC: No Recursion] [WFC: In DTD]
		while (true) {
			char ch = more(); // firs ttime called it will skip initial "["
			if (ch == ']') {
				break;
			}
			if (ch == '%') {
				processPEReference();
			} else if (isS(ch)) {
				ch = skipS(ch);
			} else {
				processMarkupDecl(ch);
			}
		}
	}

	protected void processMarkupDecl(char ch) throws XmlPullParserException,
			IOException {
		// [29] markupdecl ::= elementdecl | AttlistDecl | EntityDecl |
		// NotationDecl | PI | Comment
		// [WFC: PEs in Internal Subset]

		// BIG SWITCH statement
		if (ch != '<') {
			throw new XmlPullParserException(
					"expected < for markupdecl in DTD not " + printable(ch),
					this, null);
		}
		ch = more();
		if (ch == '?') {
			parsePI();
		} else if (ch == '!') {
			ch = more();
			if (ch == '-') {
				// note: if(tokenize == false) posStart/End is NOT changed!!!!
				parseComment();
			} else {
				ch = more();
				if (ch == 'A') {
					processAttlistDecl(ch); // A-TTLIST
				} else if (ch == 'E') {
					ch = more();
					if (ch == 'L') {
						processElementDecl(ch); // EL-EMENT
					} else if (ch == 'N') {
						processEntityDecl(ch); // EN-TITY
					} else {
						throw new XmlPullParserException(
								"expected ELEMENT or ENTITY after <! in DTD not "
										+ printable(ch), this, null);
					}
				} else if (ch == 'N') {
					processNotationDecl(ch); // N-OTATION
				} else {
					throw new XmlPullParserException(
							"expected markupdecl after <! in DTD not "
									+ printable(ch), this, null);
				}
			}

		} else {
			throw new XmlPullParserException("expected markupdecl in DTD not "
					+ printable(ch), this, null);
		}
	}

	protected void processNotationDecl(char ch) throws XmlPullParserException,
			IOException {

		// [82] NotationDecl ::= '<!NOTATION' S Name S (ExternalID | PublicID)
		// S? '>'
		// [83] PublicID ::= 'PUBLIC' S PubidLiteral

		// assert ch == 'N'
	}

	protected void processPEReference() throws XmlPullParserException,
			IOException {
		// TODO
	}

	protected char readName(char ch) throws XmlPullParserException, IOException {
		if (isNameStartChar(ch)) {
			throw new XmlPullParserException(
					"XML name must start with name start character not "
							+ printable(ch), this, null);
		}
		while (isNameChar(ch)) {
			ch = more();
		}
		return ch;
	}

	/**
	 * This allows to change processing DOCDECL (controls if parser is
	 * non-validating).
	 */
	@Override
	public void setFeature(String name, boolean state)
			throws XmlPullParserException {
		if (FEATURE_PROCESS_DOCDECL.equals(name)) {
			if (eventType != START_DOCUMENT) {
				throw new XmlPullParserException(
						"process DOCDECL feature can only be changed before parsing",
						this, null);
			}
			processDocDecl = state;
			if (state == false) {
				//
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

