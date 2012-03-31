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

public class ChangedAddress extends
		MappedResponseChangedSourceAddressReflectedFrom {

	public static MessageAttribute parse(byte[] data)
			throws MessageAttributeParsingException {
		final ChangedAddress ca = new ChangedAddress();
		MappedResponseChangedSourceAddressReflectedFrom.parse(ca, data);
		return ca;
	}

	public ChangedAddress() {
		super(MessageAttribute.MessageAttributeType.ChangedAddress);
	}
}
