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

public class SourceAddress extends
		MappedResponseChangedSourceAddressReflectedFrom {

	public static MessageAttribute parse(byte[] data)
			throws MessageAttributeParsingException {
		final SourceAddress sa = new SourceAddress();
		MappedResponseChangedSourceAddressReflectedFrom.parse(sa, data);
		return sa;
	}

	public SourceAddress() {
		super(MessageAttribute.MessageAttributeType.SourceAddress);
	}
}