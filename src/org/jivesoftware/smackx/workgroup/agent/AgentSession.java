/**
 * $Revision$
 * $Date$
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

package org.jivesoftware.smackx.workgroup.agent;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.PacketCollector;
import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.SmackConfiguration;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.filter.AndFilter;
import org.jivesoftware.smack.filter.FromContainsFilter;
import org.jivesoftware.smack.filter.OrFilter;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.filter.PacketTypeFilter;
import org.jivesoftware.smack.packet.DefaultPacketExtension;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.util.StringUtils;
import org.jivesoftware.smackx.Form;
import org.jivesoftware.smackx.ReportedData;
import org.jivesoftware.smackx.packet.MUCUser;
import org.jivesoftware.smackx.workgroup.MetaData;
import org.jivesoftware.smackx.workgroup.QueueUser;
import org.jivesoftware.smackx.workgroup.WorkgroupInvitation;
import org.jivesoftware.smackx.workgroup.WorkgroupInvitationListener;
import org.jivesoftware.smackx.workgroup.ext.history.AgentChatHistory;
import org.jivesoftware.smackx.workgroup.ext.history.ChatMetadata;
import org.jivesoftware.smackx.workgroup.ext.macros.MacroGroup;
import org.jivesoftware.smackx.workgroup.ext.macros.Macros;
import org.jivesoftware.smackx.workgroup.ext.notes.ChatNotes;
import org.jivesoftware.smackx.workgroup.packet.AgentStatus;
import org.jivesoftware.smackx.workgroup.packet.DepartQueuePacket;
import org.jivesoftware.smackx.workgroup.packet.MonitorPacket;
import org.jivesoftware.smackx.workgroup.packet.OccupantsInfo;
import org.jivesoftware.smackx.workgroup.packet.OfferRequestProvider;
import org.jivesoftware.smackx.workgroup.packet.OfferRevokeProvider;
import org.jivesoftware.smackx.workgroup.packet.QueueDetails;
import org.jivesoftware.smackx.workgroup.packet.QueueOverview;
import org.jivesoftware.smackx.workgroup.packet.RoomInvitation;
import org.jivesoftware.smackx.workgroup.packet.RoomTransfer;
import org.jivesoftware.smackx.workgroup.packet.SessionID;
import org.jivesoftware.smackx.workgroup.packet.Transcript;
import org.jivesoftware.smackx.workgroup.packet.Transcripts;
import org.jivesoftware.smackx.workgroup.settings.GenericSettings;
import org.jivesoftware.smackx.workgroup.settings.SearchSettings;

/**
 * This class embodies the agent's active presence within a given workgroup. The
 * application should have N instances of this class, where N is the number of
 * workgroups to which the owning agent of the application belongs. This class
 * provides all functionality that a session within a given workgroup is
 * expected to have from an agent's perspective -- setting the status, tracking
 * the status of queues to which the agent belongs within the workgroup, and
 * dequeuing customers.
 * 
 * @author Matt Tucker
 * @author Derek DeMoro
 */
public class AgentSession {

	private final Connection connection;

	private final String workgroupJID;

	private boolean online = false;
	private Presence.Mode presenceMode;
	private int maxChats;
	private final Map<String, String> metaData;

	private final Map<String, WorkgroupQueue> queues;

	private final List<OfferListener> offerListeners;
	private final List<WorkgroupInvitationListener> invitationListeners;
	private final List<QueueUsersListener> queueUsersListeners;

	private AgentRoster agentRoster = null;
	private final TranscriptManager transcriptManager;
	private final TranscriptSearchManager transcriptSearchManager;
	private final Agent agent;
	private final PacketListener packetListener;

	/**
	 * Constructs a new agent session instance. Note, the
	 * {@link #setOnline(boolean)} method must be called with an argument of
	 * <tt>true</tt> to mark the agent as available to accept chat requests.
	 * 
	 * @param connection
	 *            a connection instance which must have already gone through
	 *            authentication.
	 * @param workgroupJID
	 *            the fully qualified JID of the workgroup.
	 */
	public AgentSession(String workgroupJID, Connection connection) {
		// Login must have been done before passing in connection.
		if (!connection.isAuthenticated()) {
			throw new IllegalStateException(
					"Must login to server before creating workgroup.");
		}

		this.workgroupJID = workgroupJID;
		this.connection = connection;
		transcriptManager = new TranscriptManager(connection);
		transcriptSearchManager = new TranscriptSearchManager(connection);

		maxChats = -1;

		metaData = new HashMap<String, String>();

		queues = new HashMap<String, WorkgroupQueue>();

		offerListeners = new ArrayList<OfferListener>();
		invitationListeners = new ArrayList<WorkgroupInvitationListener>();
		queueUsersListeners = new ArrayList<QueueUsersListener>();

		// Create a filter to listen for packets we're interested in.
		final OrFilter filter = new OrFilter();
		filter.addFilter(new PacketTypeFilter(
				OfferRequestProvider.OfferRequestPacket.class));
		filter.addFilter(new PacketTypeFilter(
				OfferRevokeProvider.OfferRevokePacket.class));
		filter.addFilter(new PacketTypeFilter(Presence.class));
		filter.addFilter(new PacketTypeFilter(Message.class));

		packetListener = new PacketListener() {
			@Override
			public void processPacket(Packet packet) {
				try {
					handlePacket(packet);
				} catch (final Exception e) {
					e.printStackTrace();
				}
			}
		};
		connection.addPacketListener(packetListener, filter);
		// Create the agent associated to this session
		agent = new Agent(connection, workgroupJID);
	}

	/**
	 * Adds an invitation listener.
	 * 
	 * @param invitationListener
	 *            the invitation listener.
	 */
	public void addInvitationListener(
			WorkgroupInvitationListener invitationListener) {
		synchronized (invitationListeners) {
			if (!invitationListeners.contains(invitationListener)) {
				invitationListeners.add(invitationListener);
			}
		}
	}

	/**
	 * Adds an offer listener.
	 * 
	 * @param offerListener
	 *            the offer listener.
	 */
	public void addOfferListener(OfferListener offerListener) {
		synchronized (offerListeners) {
			if (!offerListeners.contains(offerListener)) {
				offerListeners.add(offerListener);
			}
		}
	}

	public void addQueueUsersListener(QueueUsersListener listener) {
		synchronized (queueUsersListeners) {
			if (!queueUsersListeners.contains(listener)) {
				queueUsersListeners.add(listener);
			}
		}
	}

	/**
	 * Close the agent session. The underlying connection will remain opened but
	 * the packet listeners that were added by this agent session will be
	 * removed.
	 */
	public void close() {
		connection.removePacketListener(packetListener);
	}

	/**
	 * Removes a user from the workgroup queue. This is an administrative action
	 * that the
	 * <p/>
	 * The agent is not guaranteed of having privileges to perform this action;
	 * an exception denying the request may be thrown.
	 * 
	 * @param userID
	 *            the ID of the user to remove.
	 * @throws XMPPException
	 *             if an exception occurs.
	 */
	public void dequeueUser(String userID) throws XMPPException {
		// todo: this method simply won't work right now.
		final DepartQueuePacket departPacket = new DepartQueuePacket(
				workgroupJID);

		// PENDING
		connection.sendPacket(departPacket);
	}

	private void fireInvitationEvent(String groupChatJID, String sessionID,
			String body, String from, Map<String, ?> metaData) {
		final WorkgroupInvitation invitation = new WorkgroupInvitation(
				connection.getUser(), groupChatJID, workgroupJID, sessionID,
				body, from, metaData);

		synchronized (invitationListeners) {
			for (final WorkgroupInvitationListener listener : invitationListeners) {
				listener.invitationReceived(invitation);
			}
		}
	}

	private void fireOfferRequestEvent(
			OfferRequestProvider.OfferRequestPacket requestPacket) {
		final Offer offer = new Offer(connection, this,
				requestPacket.getUserID(), requestPacket.getUserJID(),
				getWorkgroupJID(), new Date((new Date()).getTime()
						+ (requestPacket.getTimeout() * 1000)),
				requestPacket.getSessionID(), requestPacket.getMetaData(),
				requestPacket.getContent());

		synchronized (offerListeners) {
			for (final OfferListener listener : offerListeners) {
				listener.offerReceived(offer);
			}
		}
	}

	private void fireOfferRevokeEvent(OfferRevokeProvider.OfferRevokePacket orp) {
		final RevokedOffer revokedOffer = new RevokedOffer(orp.getUserJID(),
				orp.getUserID(), getWorkgroupJID(), orp.getSessionID(),
				orp.getReason(), new Date());

		synchronized (offerListeners) {
			for (final OfferListener listener : offerListeners) {
				listener.offerRevoked(revokedOffer);
			}
		}
	}

	private void fireQueueUsersEvent(WorkgroupQueue queue,
			WorkgroupQueue.Status status, int averageWaitTime,
			Date oldestEntry, Set<QueueUser> users) {
		synchronized (queueUsersListeners) {
			for (final QueueUsersListener listener : queueUsersListeners) {
				if (status != null) {
					listener.statusUpdated(queue, status);
				}
				if (averageWaitTime != -1) {
					listener.averageWaitTimeUpdated(queue, averageWaitTime);
				}
				if (oldestEntry != null) {
					listener.oldestEntryUpdated(queue, oldestEntry);
				}
				if (users != null) {
					listener.usersUpdated(queue, users);
				}
			}
		}
	}

	/**
	 * Returns the Agent associated to this session.
	 * 
	 * @return the Agent associated to this session.
	 */
	public Agent getAgent() {
		return agent;
	}

	/**
	 * Retrieves the AgentChatHistory associated with a particular agent jid.
	 * 
	 * @param jid
	 *            the jid of the agent.
	 * @param maxSessions
	 *            the max number of sessions to retrieve.
	 * @param startDate
	 *            the starting date of sessions to retrieve.
	 * @return the chat history associated with a given jid.
	 * @throws XMPPException
	 *             if an error occurs while retrieving the AgentChatHistory.
	 */
	public AgentChatHistory getAgentHistory(String jid, int maxSessions,
			Date startDate) throws XMPPException {
		AgentChatHistory request;
		if (startDate != null) {
			request = new AgentChatHistory(jid, maxSessions, startDate);
		} else {
			request = new AgentChatHistory(jid, maxSessions);
		}

		request.setType(IQ.Type.GET);
		request.setTo(workgroupJID);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final AgentChatHistory response = (AgentChatHistory) collector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
		return response;
	}

	/**
	 * Returns the agent roster for the workgroup, which contains
	 * 
	 * @return the AgentRoster
	 */
	public AgentRoster getAgentRoster() {
		if (agentRoster == null) {
			agentRoster = new AgentRoster(connection, workgroupJID);
		}

		// This might be the first time the user has asked for the roster. If
		// so, we
		// want to wait up to 2 seconds for the server to send back the list of
		// agents.
		// This behavior shields API users from having to worry about the fact
		// that the
		// operation is asynchronous, although they'll still have to listen for
		// changes
		// to the roster.
		int elapsed = 0;
		while (!agentRoster.rosterInitialized && elapsed <= 2000) {
			try {
				Thread.sleep(500);
			} catch (final Exception e) {
				// Ignore
			}
			elapsed += 500;
		}
		return agentRoster;
	}

	/**
	 * Query for metadata associated with a session id.
	 * 
	 * @param sessionID
	 *            the sessionID to query for.
	 * @return Map a map of all metadata associated with the sessionID.
	 * @throws XMPPException
	 *             if an error occurs while getting information from the server.
	 */
	public Map<?, ?> getChatMetadata(String sessionID) throws XMPPException {
		final ChatMetadata request = new ChatMetadata();
		request.setType(IQ.Type.GET);
		request.setTo(workgroupJID);
		request.setSessionID(sessionID);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final ChatMetadata response = (ChatMetadata) collector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
		return response.getMetadata();
	}

	/**
	 * Returns the generic metadata of the workgroup the agent belongs to.
	 * 
	 * @param con
	 *            the Connection to use.
	 * @param query
	 *            an optional query object used to tell the server what metadata
	 *            to retrieve. This can be null.
	 * @throws XMPPException
	 *             if an error occurs while sending the request to the server.
	 * @return the settings for the workgroup.
	 */
	public GenericSettings getGenericSettings(Connection con, String query)
			throws XMPPException {
		final GenericSettings setting = new GenericSettings();
		setting.setType(IQ.Type.GET);
		setting.setTo(workgroupJID);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(setting.getPacketID()));
		connection.sendPacket(setting);

		final GenericSettings response = (GenericSettings) collector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server on status set.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
		return response;
	}

	/**
	 * Asks the workgroup for it's Global Macros.
	 * 
	 * @param global
	 *            true to retrieve global macros, otherwise false for personal
	 *            macros.
	 * @return MacroGroup the root macro group.
	 * @throws XMPPException
	 *             if an error occurs while getting information from the server.
	 */
	public MacroGroup getMacros(boolean global) throws XMPPException {
		final Macros request = new Macros();
		request.setType(IQ.Type.GET);
		request.setTo(workgroupJID);
		request.setPersonal(!global);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final Macros response = (Macros) collector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
		return response.getRootGroup();
	}

	/**
	 * Returns the maximum number of chats the agent can participate in.
	 * 
	 * @return the maximum number of chats the agent can participate in.
	 */
	public int getMaxChats() {
		return maxChats;
	}

	/**
	 * Allows the retrieval of meta data for a specified key.
	 * 
	 * @param key
	 *            the meta data key
	 * @return the meta data value associated with the key or <tt>null</tt> if
	 *         the meta-data doesn't exist..
	 */
	public String getMetaData(String key) {
		return metaData.get(key);
	}

	/**
	 * Retrieves the ChatNote associated with a given chat session.
	 * 
	 * @param sessionID
	 *            the sessionID of the chat session.
	 * @return the <code>ChatNote</code> associated with a given chat session.
	 * @throws XMPPException
	 *             if an error occurs while retrieving the ChatNote.
	 */
	public ChatNotes getNote(String sessionID) throws XMPPException {
		final ChatNotes request = new ChatNotes();
		request.setType(IQ.Type.GET);
		request.setTo(workgroupJID);
		request.setSessionID(sessionID);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final ChatNotes response = (ChatNotes) collector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
		return response;

	}

	/**
	 * Asks the workgroup for information about the occupants of the specified
	 * room. The returned information will include the real JID of the
	 * occupants, the nickname of the user in the room as well as the date when
	 * the user joined the room.
	 * 
	 * @param roomID
	 *            the room to get information about its occupants.
	 * @return information about the occupants of the specified room.
	 * @throws XMPPException
	 *             if an error occurs while getting information from the server.
	 */
	public OccupantsInfo getOccupantsInfo(String roomID) throws XMPPException {
		final OccupantsInfo request = new OccupantsInfo(roomID);
		request.setType(IQ.Type.GET);
		request.setTo(workgroupJID);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final OccupantsInfo response = (OccupantsInfo) collector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
		return response;
	}

	/**
	 * Returns the agent's current presence mode.
	 * 
	 * @return the agent's current presence mode.
	 */
	public Presence.Mode getPresenceMode() {
		return presenceMode;
	}

	/**
	 * @param queueName
	 *            the name of the queue
	 * @return an instance of WorkgroupQueue for the argument queue name, or
	 *         null if none exists
	 */
	public WorkgroupQueue getQueue(String queueName) {
		return queues.get(queueName);
	}

	public Iterator<WorkgroupQueue> getQueues() {
		return Collections
				.unmodifiableMap((new HashMap<String, WorkgroupQueue>(queues)))
				.values().iterator();
	}

	/**
	 * Asks the workgroup for it's Search Settings.
	 * 
	 * @return SearchSettings the search settings for this workgroup.
	 * @throws XMPPException
	 *             if an error occurs while getting information from the server.
	 */
	public SearchSettings getSearchSettings() throws XMPPException {
		final SearchSettings request = new SearchSettings();
		request.setType(IQ.Type.GET);
		request.setTo(workgroupJID);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final SearchSettings response = (SearchSettings) collector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
		return response;
	}

	/**
	 * Returns the full conversation transcript of a given session.
	 * 
	 * @param sessionID
	 *            the id of the session to get the full transcript.
	 * @return the full conversation transcript of a given session.
	 * @throws XMPPException
	 *             if an error occurs while getting the information.
	 */
	public Transcript getTranscript(String sessionID) throws XMPPException {
		return transcriptManager.getTranscript(workgroupJID, sessionID);
	}

	/**
	 * Returns the transcripts of a given user. The answer will contain the
	 * complete history of conversations that a user had.
	 * 
	 * @param userID
	 *            the id of the user to get his conversations.
	 * @return the transcripts of a given user.
	 * @throws XMPPException
	 *             if an error occurs while getting the information.
	 */
	public Transcripts getTranscripts(String userID) throws XMPPException {
		return transcriptManager.getTranscripts(workgroupJID, userID);
	}

	/**
	 * Returns the Form to use for searching transcripts. It is unlikely that
	 * the server will change the form (without a restart) so it is safe to keep
	 * the returned form for future submissions.
	 * 
	 * @return the Form to use for searching transcripts.
	 * @throws XMPPException
	 *             if an error occurs while sending the request to the server.
	 */
	public Form getTranscriptSearchForm() throws XMPPException {
		return transcriptSearchManager.getSearchForm(StringUtils
				.parseServer(workgroupJID));
	}

	/**
	 * @return the fully-qualified name of the workgroup for which this session
	 *         exists
	 */
	public String getWorkgroupJID() {
		return workgroupJID;
	}

	private void handlePacket(Packet packet) {
		if (packet instanceof OfferRequestProvider.OfferRequestPacket) {
			// Acknowledge the IQ set.
			final IQ reply = new IQ() {
				@Override
				public String getChildElementXML() {
					return null;
				}
			};
			reply.setPacketID(packet.getPacketID());
			reply.setTo(packet.getFrom());
			reply.setType(IQ.Type.RESULT);
			connection.sendPacket(reply);

			fireOfferRequestEvent((OfferRequestProvider.OfferRequestPacket) packet);
		} else if (packet instanceof Presence) {
			final Presence presence = (Presence) packet;

			// The workgroup can send us a number of different presence packets.
			// We
			// check for different packet extensions to see what type of
			// presence
			// packet it is.

			final String queueName = StringUtils.parseResource(presence
					.getFrom());
			WorkgroupQueue queue = queues.get(queueName);
			// If there isn't already an entry for the queue, create a new one.
			if (queue == null) {
				queue = new WorkgroupQueue(queueName);
				queues.put(queueName, queue);
			}

			// QueueOverview packet extensions contain basic information about a
			// queue.
			final QueueOverview queueOverview = (QueueOverview) presence
					.getExtension(QueueOverview.ELEMENT_NAME,
							QueueOverview.NAMESPACE);
			if (queueOverview != null) {
				if (queueOverview.getStatus() == null) {
					queue.setStatus(WorkgroupQueue.Status.CLOSED);
				} else {
					queue.setStatus(queueOverview.getStatus());
				}
				queue.setAverageWaitTime(queueOverview.getAverageWaitTime());
				queue.setOldestEntry(queueOverview.getOldestEntry());
				// Fire event.
				fireQueueUsersEvent(queue, queueOverview.getStatus(),
						queueOverview.getAverageWaitTime(),
						queueOverview.getOldestEntry(), null);
				return;
			}

			// QueueDetails packet extensions contain information about the
			// users in
			// a queue.
			final QueueDetails queueDetails = (QueueDetails) packet
					.getExtension(QueueDetails.ELEMENT_NAME,
							QueueDetails.NAMESPACE);
			if (queueDetails != null) {
				queue.setUsers(queueDetails.getUsers());
				// Fire event.
				fireQueueUsersEvent(queue, null, -1, null,
						queueDetails.getUsers());
				return;
			}

			// Notify agent packets gives an overview of agent activity in a
			// queue.
			final DefaultPacketExtension notifyAgents = (DefaultPacketExtension) presence
					.getExtension("notify-agents",
							"http://jabber.org/protocol/workgroup");
			if (notifyAgents != null) {
				final int currentChats = Integer.parseInt(notifyAgents
						.getValue("current-chats"));
				final int maxChats = Integer.parseInt(notifyAgents
						.getValue("max-chats"));
				queue.setCurrentChats(currentChats);
				queue.setMaxChats(maxChats);
				// Fire event.
				// TODO: might need another event for current chats and max
				// chats of queue
				return;
			}
		} else if (packet instanceof Message) {
			final Message message = (Message) packet;

			// Check if a room invitation was sent and if the sender is the
			// workgroup
			final MUCUser mucUser = (MUCUser) message.getExtension("x",
					"http://jabber.org/protocol/muc#user");
			final MUCUser.Invite invite = mucUser != null ? mucUser.getInvite()
					: null;
			if (invite != null && workgroupJID.equals(invite.getFrom())) {
				String sessionID = null;
				Map<String, ?> metaData = null;

				final SessionID sessionIDExt = (SessionID) message
						.getExtension(SessionID.ELEMENT_NAME,
								SessionID.NAMESPACE);
				if (sessionIDExt != null) {
					sessionID = sessionIDExt.getSessionID();
				}

				final MetaData metaDataExt = (MetaData) message.getExtension(
						MetaData.ELEMENT_NAME, MetaData.NAMESPACE);
				if (metaDataExt != null) {
					metaData = metaDataExt.getMetaData();
				}

				fireInvitationEvent(message.getFrom(), sessionID,
						message.getBody(), message.getFrom(), metaData);
			}
		} else if (packet instanceof OfferRevokeProvider.OfferRevokePacket) {
			// Acknowledge the IQ set.
			final IQ reply = new IQ() {
				@Override
				public String getChildElementXML() {
					return null;
				}
			};
			reply.setPacketID(packet.getPacketID());
			reply.setType(IQ.Type.RESULT);
			connection.sendPacket(reply);

			fireOfferRevokeEvent((OfferRevokeProvider.OfferRevokePacket) packet);
		}
	}

	public boolean hasMonitorPrivileges(Connection con) throws XMPPException {
		final MonitorPacket request = new MonitorPacket();
		request.setType(IQ.Type.GET);
		request.setTo(workgroupJID);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final MonitorPacket response = (MonitorPacket) collector
				.nextResult(SmackConfiguration.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server on status set.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
		return response.isMonitor();

	}

	/**
	 * Returns true if the agent is online with the workgroup.
	 * 
	 * @return true if the agent is online with the workgroup.
	 */
	public boolean isOnline() {
		return online;
	}

	public void makeRoomOwner(Connection con, String sessionID)
			throws XMPPException {
		final MonitorPacket request = new MonitorPacket();
		request.setType(IQ.Type.SET);
		request.setTo(workgroupJID);
		request.setSessionID(sessionID);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final Packet response = collector.nextResult(SmackConfiguration
				.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server on status set.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
	}

	/**
	 * Removes an invitation listener.
	 * 
	 * @param invitationListener
	 *            the invitation listener.
	 */
	public void removeInvitationListener(
			WorkgroupInvitationListener invitationListener) {
		synchronized (invitationListeners) {
			invitationListeners.remove(invitationListener);
		}
	}

	// PacketListener Implementation.

	/**
	 * Allows the removal of data from the agent's meta data, if the key
	 * represents existing data, the revised meta data will be rebroadcast in an
	 * agent's presence broadcast.
	 * 
	 * @param key
	 *            the meta data key.
	 * @throws XMPPException
	 *             if an exception occurs.
	 */
	public void removeMetaData(String key) throws XMPPException {
		synchronized (metaData) {
			final String oldVal = metaData.remove(key);

			if (oldVal != null) {
				setStatus(presenceMode, maxChats);
			}
		}
	}

	/**
	 * Removes an offer listener.
	 * 
	 * @param offerListener
	 *            the offer listener.
	 */
	public void removeOfferListener(OfferListener offerListener) {
		synchronized (offerListeners) {
			offerListeners.remove(offerListener);
		}
	}

	public void removeQueueUsersListener(QueueUsersListener listener) {
		synchronized (queueUsersListeners) {
			queueUsersListeners.remove(listener);
		}
	}

	/**
	 * Persists the Personal Macro for an agent.
	 * 
	 * @param group
	 *            the macro group to save.
	 * @throws XMPPException
	 *             if an error occurs while getting information from the server.
	 */
	public void saveMacros(MacroGroup group) throws XMPPException {
		final Macros request = new Macros();
		request.setType(IQ.Type.SET);
		request.setTo(workgroupJID);
		request.setPersonal(true);
		request.setPersonalMacroGroup(group);

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(request.getPacketID()));
		connection.sendPacket(request);

		final IQ response = (IQ) collector.nextResult(SmackConfiguration
				.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server on status set.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
	}

	/**
	 * Submits the completed form and returns the result of the transcript
	 * search. The result will include all the data returned from the server so
	 * be careful with the amount of data that the search may return.
	 * 
	 * @param completedForm
	 *            the filled out search form.
	 * @return the result of the transcript search.
	 * @throws XMPPException
	 *             if an error occurs while submiting the search to the server.
	 */
	public ReportedData searchTranscripts(Form completedForm)
			throws XMPPException {
		return transcriptSearchManager.submitSearch(
				StringUtils.parseServer(workgroupJID), completedForm);
	}

	/**
	 * Invites a user or agent to an existing session support. The provided
	 * invitee's JID can be of a user, an agent, a queue or a workgroup. In the
	 * case of a queue or a workgroup the workgroup service will decide the best
	 * agent to receive the invitation.
	 * <p>
	 * 
	 * This method will return either when the service returned an ACK of the
	 * request or if an error occured while requesting the invitation. After
	 * sending the ACK the service will send the invitation to the target
	 * entity. When dealing with agents the common sequence of offer-response
	 * will be followed. However, when sending an invitation to a user a
	 * standard MUC invitation will be sent.
	 * <p>
	 * 
	 * The agent or user that accepted the offer <b>MUST</b> join the room.
	 * Failing to do so will make the invitation to fail. The inviter will
	 * eventually receive a message error indicating that the invitee accepted
	 * the offer but failed to join the room.
	 * 
	 * Different situations may lead to a failed invitation. Possible cases are:
	 * 1) all agents rejected the offer and ther are no agents available, 2) the
	 * agent that accepted the offer failed to join the room or 2) the user that
	 * received the MUC invitation never replied or joined the room. In any of
	 * these cases (or other failing cases) the inviter will get an error
	 * message with the failed notification.
	 * 
	 * @param type
	 *            type of entity that will get the invitation.
	 * @param invitee
	 *            JID of entity that will get the invitation.
	 * @param sessionID
	 *            ID of the support session that the invitee is being invited.
	 * @param reason
	 *            the reason of the invitation.
	 * @throws XMPPException
	 *             if the sender of the invitation is not an agent or the
	 *             service failed to process the request.
	 */
	public void sendRoomInvitation(RoomInvitation.Type type, String invitee,
			String sessionID, String reason) throws XMPPException {
		final RoomInvitation invitation = new RoomInvitation(type, invitee,
				sessionID, reason);
		final IQ iq = new IQ() {

			@Override
			public String getChildElementXML() {
				return invitation.toXML();
			}
		};
		iq.setType(IQ.Type.SET);
		iq.setTo(workgroupJID);
		iq.setFrom(connection.getUser());

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(iq.getPacketID()));
		connection.sendPacket(iq);

		final IQ response = (IQ) collector.nextResult(SmackConfiguration
				.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
	}

	/**
	 * Transfer an existing session support to another user or agent. The
	 * provided invitee's JID can be of a user, an agent, a queue or a
	 * workgroup. In the case of a queue or a workgroup the workgroup service
	 * will decide the best agent to receive the invitation.
	 * <p>
	 * 
	 * This method will return either when the service returned an ACK of the
	 * request or if an error occured while requesting the transfer. After
	 * sending the ACK the service will send the invitation to the target
	 * entity. When dealing with agents the common sequence of offer-response
	 * will be followed. However, when sending an invitation to a user a
	 * standard MUC invitation will be sent.
	 * <p>
	 * 
	 * Once the invitee joins the support room the workgroup service will kick
	 * the inviter from the room.
	 * <p>
	 * 
	 * Different situations may lead to a failed transfers. Possible cases are:
	 * 1) all agents rejected the offer and there are no agents available, 2)
	 * the agent that accepted the offer failed to join the room or 2) the user
	 * that received the MUC invitation never replied or joined the room. In any
	 * of these cases (or other failing cases) the inviter will get an error
	 * message with the failed notification.
	 * 
	 * @param type
	 *            type of entity that will get the invitation.
	 * @param invitee
	 *            JID of entity that will get the invitation.
	 * @param sessionID
	 *            ID of the support session that the invitee is being invited.
	 * @param reason
	 *            the reason of the invitation.
	 * @throws XMPPException
	 *             if the sender of the invitation is not an agent or the
	 *             service failed to process the request.
	 */
	public void sendRoomTransfer(RoomTransfer.Type type, String invitee,
			String sessionID, String reason) throws XMPPException {
		final RoomTransfer transfer = new RoomTransfer(type, invitee,
				sessionID, reason);
		final IQ iq = new IQ() {

			@Override
			public String getChildElementXML() {
				return transfer.toXML();
			}
		};
		iq.setType(IQ.Type.SET);
		iq.setTo(workgroupJID);
		iq.setFrom(connection.getUser());

		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(iq.getPacketID()));
		connection.sendPacket(iq);

		final IQ response = (IQ) collector.nextResult(SmackConfiguration
				.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
	}

	/**
	 * Allows the addition of a new key-value pair to the agent's meta data, if
	 * the value is new data, the revised meta data will be rebroadcast in an
	 * agent's presence broadcast.
	 * 
	 * @param key
	 *            the meta data key
	 * @param val
	 *            the non-null meta data value
	 * @throws XMPPException
	 *             if an exception occurs.
	 */
	public void setMetaData(String key, String val) throws XMPPException {
		synchronized (metaData) {
			final String oldVal = metaData.get(key);

			if ((oldVal == null) || (!oldVal.equals(val))) {
				metaData.put(key, val);

				setStatus(presenceMode, maxChats);
			}
		}
	}

	/**
	 * Creates a ChatNote that will be mapped to the given chat session.
	 * 
	 * @param sessionID
	 *            the session id of a Chat Session.
	 * @param note
	 *            the chat note to add.
	 * @throws XMPPException
	 *             is thrown if an error occurs while adding the note.
	 */
	public void setNote(String sessionID, String note) throws XMPPException {
		note = ChatNotes.replace(note, "\n", "\\n");
		note = StringUtils.escapeForXML(note);

		final ChatNotes notes = new ChatNotes();
		notes.setType(IQ.Type.SET);
		notes.setTo(workgroupJID);
		notes.setSessionID(sessionID);
		notes.setNotes(note);
		final PacketCollector collector = connection
				.createPacketCollector(new PacketIDFilter(notes.getPacketID()));
		// Send the request
		connection.sendPacket(notes);

		final IQ response = (IQ) collector.nextResult(SmackConfiguration
				.getPacketReplyTimeout());

		// Cancel the collector.
		collector.cancel();
		if (response == null) {
			throw new XMPPException("No response from server on status set.");
		}
		if (response.getError() != null) {
			throw new XMPPException(response.getError());
		}
	}

	/**
	 * Sets whether the agent is online with the workgroup. If the user tries to
	 * go online with the workgroup but is not allowed to be an agent, an
	 * XMPPError with error code 401 will be thrown.
	 * 
	 * @param online
	 *            true to set the agent as online with the workgroup.
	 * @throws XMPPException
	 *             if an error occurs setting the online status.
	 */
	public void setOnline(boolean online) throws XMPPException {
		// If the online status hasn't changed, do nothing.
		if (this.online == online) {
			return;
		}

		Presence presence;

		// If the user is going online...
		if (online) {
			presence = new Presence(Presence.Type.available);
			presence.setTo(workgroupJID);
			presence.addExtension(new DefaultPacketExtension(
					AgentStatus.ELEMENT_NAME, AgentStatus.NAMESPACE));

			final PacketCollector collector = connection
					.createPacketCollector(new AndFilter(new PacketTypeFilter(
							Presence.class), new FromContainsFilter(
							workgroupJID)));

			connection.sendPacket(presence);

			presence = (Presence) collector.nextResult(5000);
			collector.cancel();
			if (!presence.isAvailable()) {
				throw new XMPPException(
						"No response from server on status set.");
			}

			if (presence.getError() != null) {
				throw new XMPPException(presence.getError());
			}

			// We can safely update this iv since we didn't get any error
			this.online = online;
		}
		// Otherwise the user is going offline...
		else {
			// Update this iv now since we don't care at this point of any error
			this.online = online;

			presence = new Presence(Presence.Type.unavailable);
			presence.setTo(workgroupJID);
			presence.addExtension(new DefaultPacketExtension(
					AgentStatus.ELEMENT_NAME, AgentStatus.NAMESPACE));
			connection.sendPacket(presence);
		}
	}

	/**
	 * Sets the agent's current status with the workgroup. The presence mode
	 * affects how offers are routed to the agent. The possible presence modes
	 * with their meanings are as follows:
	 * <ul>
	 * <p/>
	 * <li>Presence.Mode.AVAILABLE -- (Default) the agent is available for more
	 * chats (equivalent to Presence.Mode.CHAT).
	 * <li>Presence.Mode.DO_NOT_DISTURB -- the agent is busy and should not be
	 * disturbed. However, special case, or extreme urgency chats may still be
	 * offered to the agent.
	 * <li>Presence.Mode.AWAY -- the agent is not available and should not have
	 * a chat routed to them (equivalent to Presence.Mode.EXTENDED_AWAY).
	 * </ul>
	 * <p/>
	 * The max chats value is the maximum number of chats the agent is willing
	 * to have routed to them at once. Some servers may be configured to only
	 * accept max chat values in a certain range; for example, between two and
	 * five. In that case, the maxChats value the agent sends may be adjusted by
	 * the server to a value within that range.
	 * 
	 * @param presenceMode
	 *            the presence mode of the agent.
	 * @param maxChats
	 *            the maximum number of chats the agent is willing to accept.
	 * @throws XMPPException
	 *             if an error occurs setting the agent status.
	 * @throws IllegalStateException
	 *             if the agent is not online with the workgroup.
	 */
	public void setStatus(Presence.Mode presenceMode, int maxChats)
			throws XMPPException {
		setStatus(presenceMode, maxChats, null);
	}

	/**
	 * Sets the agent's current status with the workgroup. The presence mode
	 * affects how offers are routed to the agent. The possible presence modes
	 * with their meanings are as follows:
	 * <ul>
	 * <p/>
	 * <li>Presence.Mode.AVAILABLE -- (Default) the agent is available for more
	 * chats (equivalent to Presence.Mode.CHAT).
	 * <li>Presence.Mode.DO_NOT_DISTURB -- the agent is busy and should not be
	 * disturbed. However, special case, or extreme urgency chats may still be
	 * offered to the agent.
	 * <li>Presence.Mode.AWAY -- the agent is not available and should not have
	 * a chat routed to them (equivalent to Presence.Mode.EXTENDED_AWAY).
	 * </ul>
	 * <p/>
	 * The max chats value is the maximum number of chats the agent is willing
	 * to have routed to them at once. Some servers may be configured to only
	 * accept max chat values in a certain range; for example, between two and
	 * five. In that case, the maxChats value the agent sends may be adjusted by
	 * the server to a value within that range.
	 * 
	 * @param presenceMode
	 *            the presence mode of the agent.
	 * @param maxChats
	 *            the maximum number of chats the agent is willing to accept.
	 * @param status
	 *            sets the status message of the presence update.
	 * @throws XMPPException
	 *             if an error occurs setting the agent status.
	 * @throws IllegalStateException
	 *             if the agent is not online with the workgroup.
	 */
	public void setStatus(Presence.Mode presenceMode, int maxChats,
			String status) throws XMPPException {
		if (!online) {
			throw new IllegalStateException(
					"Cannot set status when the agent is not online.");
		}

		if (presenceMode == null) {
			presenceMode = Presence.Mode.available;
		}
		this.presenceMode = presenceMode;
		this.maxChats = maxChats;

		Presence presence = new Presence(Presence.Type.available);
		presence.setMode(presenceMode);
		presence.setTo(getWorkgroupJID());

		if (status != null) {
			presence.setStatus(status);
		}
		// Send information about max chats and current chats as a packet
		// extension.
		final DefaultPacketExtension agentStatus = new DefaultPacketExtension(
				AgentStatus.ELEMENT_NAME, AgentStatus.NAMESPACE);
		agentStatus.setValue("max-chats", "" + maxChats);
		presence.addExtension(agentStatus);
		presence.addExtension(new MetaData(metaData));

		final PacketCollector collector = connection
				.createPacketCollector(new AndFilter(new PacketTypeFilter(
						Presence.class), new FromContainsFilter(workgroupJID)));

		connection.sendPacket(presence);

		presence = (Presence) collector.nextResult(5000);
		collector.cancel();
		if (!presence.isAvailable()) {
			throw new XMPPException("No response from server on status set.");
		}

		if (presence.getError() != null) {
			throw new XMPPException(presence.getError());
		}
	}

	/**
	 * Sets the agent's current status with the workgroup. The presence mode
	 * affects how offers are routed to the agent. The possible presence modes
	 * with their meanings are as follows:
	 * <ul>
	 * <p/>
	 * <li>Presence.Mode.AVAILABLE -- (Default) the agent is available for more
	 * chats (equivalent to Presence.Mode.CHAT).
	 * <li>Presence.Mode.DO_NOT_DISTURB -- the agent is busy and should not be
	 * disturbed. However, special case, or extreme urgency chats may still be
	 * offered to the agent.
	 * <li>Presence.Mode.AWAY -- the agent is not available and should not have
	 * a chat routed to them (equivalent to Presence.Mode.EXTENDED_AWAY).
	 * </ul>
	 * 
	 * @param presenceMode
	 *            the presence mode of the agent.
	 * @param status
	 *            sets the status message of the presence update.
	 * @throws XMPPException
	 *             if an error occurs setting the agent status.
	 * @throws IllegalStateException
	 *             if the agent is not online with the workgroup.
	 */
	public void setStatus(Presence.Mode presenceMode, String status)
			throws XMPPException {
		if (!online) {
			throw new IllegalStateException(
					"Cannot set status when the agent is not online.");
		}

		if (presenceMode == null) {
			presenceMode = Presence.Mode.available;
		}
		this.presenceMode = presenceMode;

		Presence presence = new Presence(Presence.Type.available);
		presence.setMode(presenceMode);
		presence.setTo(getWorkgroupJID());

		if (status != null) {
			presence.setStatus(status);
		}
		presence.addExtension(new MetaData(metaData));

		final PacketCollector collector = connection
				.createPacketCollector(new AndFilter(new PacketTypeFilter(
						Presence.class), new FromContainsFilter(workgroupJID)));

		connection.sendPacket(presence);

		presence = (Presence) collector.nextResult(5000);
		collector.cancel();
		if (!presence.isAvailable()) {
			throw new XMPPException("No response from server on status set.");
		}

		if (presence.getError() != null) {
			throw new XMPPException(presence.getError());
		}
	}
}