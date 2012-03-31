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

public class Dummy extends MessageAttribute {
	public static Dummy parse(byte[] data) {
		final Dummy dummy = new Dummy();
		dummy.setLengthValue(data.length);
		return dummy;
	}

	int lengthValue;

	public Dummy() {
		super(MessageAttributeType.Dummy);
	}

	@Override
	public byte[] getBytes() throws UtilityException {
		final byte[] result = new byte[lengthValue + 4];
		// message attribute header
		// type
		System.arraycopy(Utility.integerToTwoBytes(typeToInteger(type)), 0,
				result, 0, 2);
		// length
		System.arraycopy(Utility.integerToTwoBytes(lengthValue), 0, result, 2,
				2);
		return result;
	}

	public void setLengthValue(int length) {
		lengthValue = length;
	}
}
