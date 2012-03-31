/*
 * This file is part of JSTUN. 
 * 
 * Copyright (c) 2005 Thomas King <king@t-king.de> - All rights
 * reserved.
 * 
 * This software is licensed under either the GNU Public License (GPL),
 * or the Apache 2.0 license. Copies of both license agreements are
 * included in this distribution.
 */

package de.javawi.jstun.attribute;

import de.javawi.jstun.util.Utility;
import de.javawi.jstun.util.UtilityException;

public class Password extends MessageAttribute {
	public static Password parse(byte[] data) {
		final Password result = new Password();
		final String password = new String(data);
		result.setPassword(password);
		return result;
	}

	String password;

	public Password() {
		super(MessageAttribute.MessageAttributeType.Password);
	}

	public Password(String password) {
		super(MessageAttribute.MessageAttributeType.Password);
		setPassword(password);
	}

	@Override
	public byte[] getBytes() throws UtilityException {
		int length = password.length();
		// password header
		if ((length % 4) != 0) {
			length += 4 - (length % 4);
		}
		// message attribute header
		length += 4;
		final byte[] result = new byte[length];
		// message attribute header
		// type
		System.arraycopy(Utility.integerToTwoBytes(typeToInteger(type)), 0,
				result, 0, 2);
		// length
		System.arraycopy(Utility.integerToTwoBytes(length - 4), 0, result, 2, 2);

		// password header
		final byte[] temp = password.getBytes();
		System.arraycopy(temp, 0, result, 4, temp.length);
		return result;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}