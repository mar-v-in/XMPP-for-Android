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

package de.javawi.jstun.test;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Timer;
import java.util.TimerTask;

import de.javawi.jstun.attribute.ChangeRequest;
import de.javawi.jstun.attribute.ErrorCode;
import de.javawi.jstun.attribute.MappedAddress;
import de.javawi.jstun.attribute.MessageAttribute;
import de.javawi.jstun.attribute.MessageAttributeException;
import de.javawi.jstun.attribute.MessageAttributeParsingException;
import de.javawi.jstun.attribute.ResponseAddress;
import de.javawi.jstun.header.MessageHeader;
import de.javawi.jstun.header.MessageHeaderParsingException;
import de.javawi.jstun.util.UtilityException;

public class BindingLifetimeTest {
	class BindingLifetimeTask extends TimerTask {

		public BindingLifetimeTask() {
			super();
		}

		public void lifetimeQuery() throws UtilityException,
				MessageAttributeException, MessageHeaderParsingException,
				MessageAttributeParsingException, IOException {
			try {
				final DatagramSocket socket = new DatagramSocket();
				socket.connect(InetAddress.getByName(stunServer), port);
				socket.setSoTimeout(timeout);

				final MessageHeader sendMH = new MessageHeader(
						MessageHeader.MessageHeaderType.BindingRequest);
				sendMH.generateTransactionID();
				final ChangeRequest changeRequest = new ChangeRequest();
				final ResponseAddress responseAddress = new ResponseAddress();
				responseAddress.setAddress(ma.getAddress());
				responseAddress.setPort(ma.getPort());
				sendMH.addMessageAttribute(changeRequest);
				sendMH.addMessageAttribute(responseAddress);
				final byte[] data = sendMH.getBytes();

				final DatagramPacket send = new DatagramPacket(data,
						data.length, InetAddress.getByName(stunServer), port);
				socket.send(send);

				MessageHeader receiveMH = new MessageHeader();
				while (!(receiveMH.equalTransactionID(sendMH))) {
					final DatagramPacket receive = new DatagramPacket(
							new byte[200], 200);
					initialSocket.receive(receive);
					receiveMH = MessageHeader.parseHeader(receive.getData());
					receiveMH.parseAttributes(receive.getData());
				}
				final ErrorCode ec = (ErrorCode) receiveMH
						.getMessageAttribute(MessageAttribute.MessageAttributeType.ErrorCode);
				if (ec != null) {
					return;
				}
				if (upperBinarySearchLifetime == (lowerBinarySearchLifetime + 1)) {
					completed = true;
					return;
				}
				lifetime = binarySearchLifetime;
				lowerBinarySearchLifetime = binarySearchLifetime;
				binarySearchLifetime = (upperBinarySearchLifetime + lowerBinarySearchLifetime) / 2;
				if (binarySearchLifetime > 0) {
					final BindingLifetimeTask task = new BindingLifetimeTask();
					timer.schedule(task, binarySearchLifetime);
				} else {
					completed = true;
				}
			} catch (final SocketTimeoutException ste) {
				if (upperBinarySearchLifetime == (lowerBinarySearchLifetime + 1)) {
					completed = true;
					return;
				}
				upperBinarySearchLifetime = binarySearchLifetime;
				binarySearchLifetime = (upperBinarySearchLifetime + lowerBinarySearchLifetime) / 2;
				if (binarySearchLifetime > 0) {
					if (bindingCommunicationInitialSocket()) {
						return;
					}
					final BindingLifetimeTask task = new BindingLifetimeTask();
					timer.schedule(task, binarySearchLifetime);
				} else {
					completed = true;
				}
			}
		}

		@Override
		public void run() {
			try {
				lifetimeQuery();
			} catch (final Exception e) {
				e.printStackTrace();
			}
		}
	}

	String stunServer;
	int port;
	int timeout = 300; // ms
	MappedAddress ma;
	Timer timer;

	DatagramSocket initialSocket;
	// start value for binary search - should be carefully choosen
	int upperBinarySearchLifetime = 345000; // ms
	int lowerBinarySearchLifetime = 0;

	int binarySearchLifetime = (upperBinarySearchLifetime + lowerBinarySearchLifetime) / 2;
	// lifetime value
	int lifetime = -1; // -1 means undefined.

	boolean completed = false;

	public BindingLifetimeTest(String stunServer, int port) {
		super();
		this.stunServer = stunServer;
		this.port = port;
		timer = new Timer(true);
	}

	private boolean bindingCommunicationInitialSocket()
			throws UtilityException, IOException,
			MessageHeaderParsingException, MessageAttributeParsingException {
		final MessageHeader sendMH = new MessageHeader(
				MessageHeader.MessageHeaderType.BindingRequest);
		sendMH.generateTransactionID();
		final ChangeRequest changeRequest = new ChangeRequest();
		sendMH.addMessageAttribute(changeRequest);
		final byte[] data = sendMH.getBytes();

		final DatagramPacket send = new DatagramPacket(data, data.length,
				InetAddress.getByName(stunServer), port);
		initialSocket.send(send);

		MessageHeader receiveMH = new MessageHeader();
		while (!(receiveMH.equalTransactionID(sendMH))) {
			final DatagramPacket receive = new DatagramPacket(new byte[200],
					200);
			initialSocket.receive(receive);
			receiveMH = MessageHeader.parseHeader(receive.getData());
			receiveMH.parseAttributes(receive.getData());
		}
		ma = (MappedAddress) receiveMH
				.getMessageAttribute(MessageAttribute.MessageAttributeType.MappedAddress);
		final ErrorCode ec = (ErrorCode) receiveMH
				.getMessageAttribute(MessageAttribute.MessageAttributeType.ErrorCode);
		if (ec != null) {
			return true;
		}
		if (ma == null) {
			return true;
		}
		return false;
	}

	public int getLifetime() {
		return lifetime;
	}

	public boolean isCompleted() {
		return completed;
	}

	public void setUpperBinarySearchLifetime(int upperBinarySearchLifetime) {
		this.upperBinarySearchLifetime = upperBinarySearchLifetime;
		binarySearchLifetime = (upperBinarySearchLifetime + lowerBinarySearchLifetime) / 2;
	}

	public void test() throws UtilityException, SocketException,
			UnknownHostException, IOException,
			MessageAttributeParsingException, MessageAttributeException,
			MessageHeaderParsingException {
		initialSocket = new DatagramSocket();
		initialSocket.connect(InetAddress.getByName(stunServer), port);
		initialSocket.setSoTimeout(timeout);

		if (bindingCommunicationInitialSocket()) {
			return;
		}
		final BindingLifetimeTask task = new BindingLifetimeTask();
		timer.schedule(task, binarySearchLifetime);
	}
}
