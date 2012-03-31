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

package de.javawi.jstun.test.demo;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Vector;
import java.util.logging.FileHandler;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.SimpleFormatter;

import de.javawi.jstun.attribute.ChangeRequest;
import de.javawi.jstun.attribute.ChangedAddress;
import de.javawi.jstun.attribute.MappedAddress;
import de.javawi.jstun.attribute.MessageAttributeException;
import de.javawi.jstun.attribute.MessageAttributeInterface.MessageAttributeType;
import de.javawi.jstun.attribute.MessageAttributeParsingException;
import de.javawi.jstun.attribute.ResponseAddress;
import de.javawi.jstun.attribute.SourceAddress;
import de.javawi.jstun.attribute.UnknownAttribute;
import de.javawi.jstun.attribute.UnknownMessageAttributeException;
import de.javawi.jstun.header.MessageHeader;
import de.javawi.jstun.header.MessageHeaderInterface.MessageHeaderType;
import de.javawi.jstun.header.MessageHeaderParsingException;
import de.javawi.jstun.util.Address;
import de.javawi.jstun.util.UtilityException;

/*
 * This class implements a STUN server as described in RFC 3489.
 * The server requires a machine that is dual-homed to be functional. 
 */
public class StunServer {
	/*
	 * Inner class to handle incoming packets and react accordingly. I decided
	 * not to start a thread for every received Binding Request, because the
	 * time required to receive a Binding Request, parse it, generate a Binding
	 * Response and send it varies only between 2 and 4 milliseconds. This
	 * amount of time is small enough so that no extra thread is needed for
	 * incoming Binding Request.
	 */
	class StunServerReceiverThread extends Thread {
		private final DatagramSocket receiverSocket;
		private DatagramSocket changedPort;
		private DatagramSocket changedIP;
		private DatagramSocket changedPortIP;

		StunServerReceiverThread(DatagramSocket datagramSocket) {
			receiverSocket = datagramSocket;
			for (final DatagramSocket socket : sockets) {
				if ((socket.getLocalPort() != receiverSocket.getLocalPort())
						&& (socket.getLocalAddress().equals(receiverSocket
								.getLocalAddress()))) {
					changedPort = socket;
				}
				if ((socket.getLocalPort() == receiverSocket.getLocalPort())
						&& (!socket.getLocalAddress().equals(
								receiverSocket.getLocalAddress()))) {
					changedIP = socket;
				}
				if ((socket.getLocalPort() != receiverSocket.getLocalPort())
						&& (!socket.getLocalAddress().equals(
								receiverSocket.getLocalAddress()))) {
					changedPortIP = socket;
				}
			}
		}

		@Override
		public void run() {
			while (true) {
				try {
					final DatagramPacket receive = new DatagramPacket(
							new byte[200], 200);
					receiverSocket.receive(receive);
					final MessageHeader receiveMH = MessageHeader
							.parseHeader(receive.getData());
					try {
						receiveMH.parseAttributes(receive.getData());
						if (receiveMH.getType() == MessageHeaderType.BindingRequest) {
							final ChangeRequest cr = (ChangeRequest) receiveMH
									.getMessageAttribute(MessageAttributeType.ChangeRequest);
							if (cr == null) {
								throw new MessageAttributeException(
										"Message attribute change request is not set.");
							}
							final ResponseAddress ra = (ResponseAddress) receiveMH
									.getMessageAttribute(MessageAttributeType.ResponseAddress);

							final MessageHeader sendMH = new MessageHeader(
									MessageHeaderType.BindingResponse);
							sendMH.setTransactionID(receiveMH
									.getTransactionID());

							// Mapped address attribute
							final MappedAddress ma = new MappedAddress();
							ma.setAddress(new Address(receive.getAddress()
									.getAddress()));
							ma.setPort(receive.getPort());
							sendMH.addMessageAttribute(ma);
							// Changed address attribute
							final ChangedAddress ca = new ChangedAddress();
							ca.setAddress(new Address(changedPortIP
									.getLocalAddress().getAddress()));
							ca.setPort(changedPortIP.getLocalPort());
							sendMH.addMessageAttribute(ca);
							if (cr.isChangePort() && (!cr.isChangeIP())) {
								// Source address attribute
								final SourceAddress sa = new SourceAddress();
								sa.setAddress(new Address(changedPort
										.getLocalAddress().getAddress()));
								sa.setPort(changedPort.getLocalPort());
								sendMH.addMessageAttribute(sa);
								final byte[] data = sendMH.getBytes();
								final DatagramPacket send = new DatagramPacket(
										data, data.length);
								if (ra != null) {
									send.setPort(ra.getPort());
									send.setAddress(ra.getAddress()
											.getInetAddress());
								} else {
									send.setPort(receive.getPort());
									send.setAddress(receive.getAddress());
								}
								changedPort.send(send);
							} else if ((!cr.isChangePort()) && cr.isChangeIP()) {
								// Source address attribute
								final SourceAddress sa = new SourceAddress();
								sa.setAddress(new Address(changedIP
										.getLocalAddress().getAddress()));
								sa.setPort(changedIP.getLocalPort());
								sendMH.addMessageAttribute(sa);
								final byte[] data = sendMH.getBytes();
								final DatagramPacket send = new DatagramPacket(
										data, data.length);
								if (ra != null) {
									send.setPort(ra.getPort());
									send.setAddress(ra.getAddress()
											.getInetAddress());
								} else {
									send.setPort(receive.getPort());
									send.setAddress(receive.getAddress());
								}
								changedIP.send(send);
							} else if ((!cr.isChangePort())
									&& (!cr.isChangeIP())) {
								// Source address attribute
								final SourceAddress sa = new SourceAddress();
								sa.setAddress(new Address(receiverSocket
										.getLocalAddress().getAddress()));
								sa.setPort(receiverSocket.getLocalPort());
								sendMH.addMessageAttribute(sa);
								final byte[] data = sendMH.getBytes();
								final DatagramPacket send = new DatagramPacket(
										data, data.length);
								if (ra != null) {
									send.setPort(ra.getPort());
									send.setAddress(ra.getAddress()
											.getInetAddress());
								} else {
									send.setPort(receive.getPort());
									send.setAddress(receive.getAddress());
								}
								receiverSocket.send(send);
							} else if (cr.isChangePort() && cr.isChangeIP()) {
								// Source address attribute
								final SourceAddress sa = new SourceAddress();
								sa.setAddress(new Address(changedPortIP
										.getLocalAddress().getAddress()));
								sa.setPort(changedPortIP.getLocalPort());
								sendMH.addMessageAttribute(sa);
								final byte[] data = sendMH.getBytes();
								final DatagramPacket send = new DatagramPacket(
										data, data.length);
								if (ra != null) {
									send.setPort(ra.getPort());
									send.setAddress(ra.getAddress()
											.getInetAddress());
								} else {
									send.setPort(receive.getPort());
									send.setAddress(receive.getAddress());
								}
								changedPortIP.send(send);
							}
						}
					} catch (final UnknownMessageAttributeException umae) {
						umae.printStackTrace();
						// Generate Binding error response
						final MessageHeader sendMH = new MessageHeader(
								MessageHeaderType.BindingErrorResponse);
						sendMH.setTransactionID(receiveMH.getTransactionID());

						// Unknown attributes
						final UnknownAttribute ua = new UnknownAttribute();
						ua.addAttribute(umae.getType());
						sendMH.addMessageAttribute(ua);

						final byte[] data = sendMH.getBytes();
						final DatagramPacket send = new DatagramPacket(data,
								data.length);
						send.setPort(receive.getPort());
						send.setAddress(receive.getAddress());
						receiverSocket.send(send);
					}
				} catch (final IOException ioe) {
					ioe.printStackTrace();
				} catch (final MessageAttributeParsingException mape) {
					mape.printStackTrace();
				} catch (final MessageAttributeException mae) {
					mae.printStackTrace();
				} catch (final MessageHeaderParsingException mhpe) {
					mhpe.printStackTrace();
				} catch (final UtilityException ue) {
					ue.printStackTrace();
				} catch (final ArrayIndexOutOfBoundsException aioobe) {
					aioobe.printStackTrace();
				}
			}
		}
	}

	/*
	 * To invoke the STUN server two IP addresses and two ports are required.
	 */
	public static void main(String args[]) {
		try {
			if (args.length != 4) {
				System.out
						.println("usage: java de.javawi.jstun.test.demo.StunServer PORT1 IP1 PORT2 IP2");
				System.out.println();
				System.out
						.println(" PORT1 - the first port that should be used by the server");
				System.out
						.println("   IP1 - the first ip address that should be used by the server");
				System.out
						.println(" PORT2 - the second port that should be used by the server");
				System.out
						.println("   IP2 - the second ip address that should be used by the server");
				System.exit(0);
			}
			final Handler fh = new FileHandler("logging_server.txt");
			fh.setFormatter(new SimpleFormatter());
			java.util.logging.Logger.getLogger("de.javawi.jstun")
					.addHandler(fh);
			java.util.logging.Logger.getLogger("de.javawi.jstun").setLevel(
					Level.ALL);
			final StunServer ss = new StunServer(Integer.parseInt(args[0]),
					InetAddress.getByName(args[1]), Integer.parseInt(args[2]),
					InetAddress.getByName(args[3]));
			ss.start();
		} catch (final SocketException se) {
			se.printStackTrace();
		} catch (final UnknownHostException uhe) {
			uhe.printStackTrace();
		} catch (final IOException ioe) {
			ioe.printStackTrace();
		}
	}

	Vector<DatagramSocket> sockets;

	public StunServer(int primaryPort, InetAddress primary, int secondaryPort,
			InetAddress secondary) throws SocketException {
		sockets = new Vector<DatagramSocket>();
		sockets.add(new DatagramSocket(primaryPort, primary));
		sockets.add(new DatagramSocket(secondaryPort, primary));
		sockets.add(new DatagramSocket(primaryPort, secondary));
		sockets.add(new DatagramSocket(secondaryPort, secondary));
	}

	public void start() throws SocketException {
		for (final DatagramSocket socket : sockets) {
			socket.setReceiveBufferSize(2000);
			final StunServerReceiverThread ssrt = new StunServerReceiverThread(
					socket);
			ssrt.start();
		}
	}
}