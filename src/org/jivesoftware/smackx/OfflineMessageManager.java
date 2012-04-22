/**
 * $RCSfile$
 * $Revision: 11613 $
 * $Date: 2010-02-09 05:55:56 -0600 (Tue, 09 Feb 2010) $
 *
 * Copyright 2003-2007 Jive Software.
 *
 * All rights reserved. Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.jivesoftware.smackx;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.PacketCollector;
import org.jivesoftware.smack.SmackConfiguration;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.filter.AndFilter;
import org.jivesoftware.smack.filter.PacketExtensionFilter;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.filter.PacketTypeFilter;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smackx.packet.DiscoverInfo;
import org.jivesoftware.smackx.packet.DiscoverItems;
import org.jivesoftware.smackx.packet.DiscoverItems.Item;
import org.jivesoftware.smackx.packet.OfflineMessageInfo;
import org.jivesoftware.smackx.packet.OfflineMessageRequest;

/**
 * The OfflineMessageManager helps manage offline messages even before the user
 * has sent an available presence. When a user asks for his offline messages
 * before sending an available presence then the server will not send a flood
 * with all the offline messages when the user becomes online. The server will
 * not send a flood with all the offline messages to the session that made the
 * offline messages request or to any other session used by the user that
 * becomes online.
 * <p>
 * 
 * Once the session that made the offline messages request has been closed and
 * the user becomes offline in all the resources then the server will resume
 * storing the messages offline and will send all the offline messages to the
 * user when he becomes online. Therefore, the server will flood the user when
 * he becomes online unless the user uses this class to manage his offline
 * messages.
 * 
 * @author Gaston Dombiak
 */
public class OfflineMessageManager {

	private final static String namespace = "http://jabber.org/protocol/offline";

	private final Connection connection;

	private final PacketFilter packetFilter;

	public OfflineMessageManager(Connection connection) {
		this.connection = connection;
		packetFilter = new AndFilter(new PacketExtensionFilter("offline",
				namespace), new PacketTypeFilter(Message.class));
	}

	/**
	 * Deletes all offline messages of the user.
	 * 
	 * @throws XMPPException
	 *             If the user is not allowed to make this request or the server
	 *             does not support offline message retrieval.
	 */
	public void deleteMessages() throws XMPPException {
		final OfflineMessageRequest request = new OfflineMessageRequest();
		request.setPurge(true);
		// Filter packets looking for an answer from the server.
		final PacketFilter responseFilter = new PacketIDFilter(
				request.getPacketID());
		final PacketCollector response = connection
				.createPacketCollector(responseFilter);
		// Send the deletion request to the server.
		connection.sendPacket(request);
		// Wait up to a certain number of seconds for a reply.
		final IQ answer = (IQ) response.nextResult(SmackConfiguration
				.getPacketReplyTimeout());
		// Stop queuing results
		response.cancel();

		if (answer == null) {
			throw new XMPPException("No response from server.");
		} else if (answer.getError() != null) {
			throw new XMPPException(answer.getError());
		}
	}

	/**
	 * Deletes the specified list of offline messages. The request will include
	 * the list of stamps that uniquely identifies the offline messages to
	 * delete.
	 * 
	 * @param nodes
	 *            the list of stamps that uniquely identifies offline message.
	 * @throws XMPPException
	 *             If the user is not allowed to make this request or the server
	 *             does not support offline message retrieval.
	 */
	public void deleteMessages(List<String> nodes) throws XMPPException {
		final OfflineMessageRequest request = new OfflineMessageRequest();
		for (final String node : nodes) {
			final OfflineMessageRequest.Item item = new OfflineMessageRequest.Item(
					node);
			item.setAction("remove");
			request.addItem(item);
		}
		// Filter packets looking for an answer from the server.
		final PacketFilter responseFilter = new PacketIDFilter(
				request.getPacketID());
		final PacketCollector response = connection
				.createPacketCollector(responseFilter);
		// Send the deletion request to the server.
		connection.sendPacket(request);
		// Wait up to a certain number of seconds for a reply.
		final IQ answer = (IQ) response.nextResult(SmackConfiguration
				.getPacketReplyTimeout());
		// Stop queuing results
		response.cancel();

		if (answer == null) {
			throw new XMPPException("No response from server.");
		} else if (answer.getError() != null) {
			throw new XMPPException(answer.getError());
		}
	}

	/**
	 * Returns an iterator on <tt>OfflineMessageHeader</tt> that keep
	 * information about the offline message. The OfflineMessageHeader includes
	 * a stamp that could be used to retrieve the complete message or delete the
	 * specific message.
	 * 
	 * @return an iterator on <tt>OfflineMessageHeader</tt> that keep
	 *         information about the offline message.
	 * @throws XMPPException
	 *             If the user is not allowed to make this request or the server
	 *             does not support offline message retrieval.
	 */
	public Iterator<OfflineMessageHeader> getHeaders() throws XMPPException {
		final List<OfflineMessageHeader> answer = new ArrayList<OfflineMessageHeader>();
		final DiscoverItems items = ServiceDiscoveryManager.getInstanceFor(
				connection).discoverItems(null, namespace);
		for (final Iterator<Item> it = items.getItems(); it.hasNext();) {
			final DiscoverItems.Item item = it.next();
			answer.add(new OfflineMessageHeader(item));
		}
		return answer.iterator();
	}

	/**
	 * Returns the number of offline messages for the user of the connection.
	 * 
	 * @return the number of offline messages for the user of the connection.
	 * @throws XMPPException
	 *             If the user is not allowed to make this request or the server
	 *             does not support offline message retrieval.
	 */
	public int getMessageCount() throws XMPPException {
		final DiscoverInfo info = ServiceDiscoveryManager.getInstanceFor(
				connection).discoverInfo(null, namespace);
		final Form extendedInfo = Form.getFormFrom(info);
		if (extendedInfo != null) {
			final String value = extendedInfo.getField("number_of_messages")
					.getValues().next();
			return Integer.parseInt(value);
		}
		return 0;
	}

	/**
	 * Returns an Iterator with all the offline <tt>Messages</tt> of the user.
	 * The returned offline messages will not be deleted from the server. Use
	 * {@link #deleteMessages(java.util.List)} to delete the messages.
	 * 
	 * @return an Iterator with all the offline <tt>Messages</tt> of the user.
	 * @throws XMPPException
	 *             If the user is not allowed to make this request or the server
	 *             does not support offline message retrieval.
	 */
	public Iterator<Message> getMessages() throws XMPPException {
		final List<Message> messages = new ArrayList<Message>();
		final OfflineMessageRequest request = new OfflineMessageRequest();
		request.setFetch(true);
		// Filter packets looking for an answer from the server.
		final PacketFilter responseFilter = new PacketIDFilter(
				request.getPacketID());
		final PacketCollector response = connection
				.createPacketCollector(responseFilter);
		// Filter offline messages that were requested by this request
		final PacketCollector messageCollector = connection
				.createPacketCollector(packetFilter);
		// Send the retrieval request to the server.
		connection.sendPacket(request);
		// Wait up to a certain number of seconds for a reply.
		final IQ answer = (IQ) response.nextResult(SmackConfiguration
				.getPacketReplyTimeout());
		// Stop queuing results
		response.cancel();

		if (answer == null) {
			throw new XMPPException("No response from server.");
		} else if (answer.getError() != null) {
			throw new XMPPException(answer.getError());
		}

		// Collect the received offline messages
		Message message = (Message) messageCollector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());
		while (message != null) {
			messages.add(message);
			message = (Message) messageCollector.nextResult(SmackConfiguration
					.getPacketReplyTimeout());
		}
		// Stop queuing offline messages
		messageCollector.cancel();
		return messages.iterator();
	}

	/**
	 * Returns an Iterator with the offline <tt>Messages</tt> whose stamp
	 * matches the specified request. The request will include the list of
	 * stamps that uniquely identifies the offline messages to retrieve. The
	 * returned offline messages will not be deleted from the server. Use
	 * {@link #deleteMessages(java.util.List)} to delete the messages.
	 * 
	 * @param nodes
	 *            the list of stamps that uniquely identifies offline message.
	 * @return an Iterator with the offline <tt>Messages</tt> that were received
	 *         as part of this request.
	 * @throws XMPPException
	 *             If the user is not allowed to make this request or the server
	 *             does not support offline message retrieval.
	 */
	public Iterator<Message> getMessages(final List<String> nodes)
			throws XMPPException {
		final List<Message> messages = new ArrayList<Message>();
		final OfflineMessageRequest request = new OfflineMessageRequest();
		for (final String node : nodes) {
			final OfflineMessageRequest.Item item = new OfflineMessageRequest.Item(
					node);
			item.setAction("view");
			request.addItem(item);
		}
		// Filter packets looking for an answer from the server.
		final PacketFilter responseFilter = new PacketIDFilter(
				request.getPacketID());
		final PacketCollector response = connection
				.createPacketCollector(responseFilter);
		// Filter offline messages that were requested by this request
		final PacketFilter messageFilter = new AndFilter(packetFilter,
				new PacketFilter() {
					@Override
					public boolean accept(Packet packet) {
						final OfflineMessageInfo info = (OfflineMessageInfo) packet
								.getExtension("offline", namespace);
						return nodes.contains(info.getNode());
					}
				});
		final PacketCollector messageCollector = connection
				.createPacketCollector(messageFilter);
		// Send the retrieval request to the server.
		connection.sendPacket(request);
		// Wait up to a certain number of seconds for a reply.
		final IQ answer = (IQ) response.nextResult(SmackConfiguration
				.getPacketReplyTimeout());
		// Stop queuing results
		response.cancel();

		if (answer == null) {
			throw new XMPPException("No response from server.");
		} else if (answer.getError() != null) {
			throw new XMPPException(answer.getError());
		}

		// Collect the received offline messages
		Message message = (Message) messageCollector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());
		while (message != null) {
			messages.add(message);
			message = (Message) messageCollector.nextResult(SmackConfiguration
					.getPacketReplyTimeout());
		}
		// Stop queuing offline messages
		messageCollector.cancel();
		return messages.iterator();
	}

	/**
	 * Returns true if the server supports Flexible Offline Message Retrieval.
	 * When the server supports Flexible Offline Message Retrieval it is
	 * possible to get the header of the offline messages, get specific
	 * messages, delete specific messages, etc.
	 * 
	 * @return a boolean indicating if the server supports Flexible Offline
	 *         Message Retrieval.
	 * @throws XMPPException
	 *             If the user is not allowed to make this request.
	 */
	public boolean supportsFlexibleRetrieval() throws XMPPException {
		final DiscoverInfo info = ServiceDiscoveryManager.getInstanceFor(
				connection).discoverInfo(null);
		return info.containsFeature(namespace);
	}
}
