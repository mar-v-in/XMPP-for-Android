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
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.filter.PacketTypeFilter;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.util.StringUtils;
import org.jivesoftware.smackx.workgroup.packet.AgentStatus;
import org.jivesoftware.smackx.workgroup.packet.AgentStatusRequest;

/**
 * Manges information about the agents in a workgroup and their presence.
 * 
 * @author Matt Tucker
 * @see AgentSession#getAgentRoster()
 */
public class AgentRoster {

	/**
	 * Listens for all roster packets and processes them.
	 */
	private class AgentStatusListener implements PacketListener {

		@Override
		public void processPacket(Packet packet) {
			if (packet instanceof AgentStatusRequest) {
				final AgentStatusRequest statusRequest = (AgentStatusRequest) packet;
				for (final Object element : statusRequest.getAgents()) {
					final AgentStatusRequest.Item item = (AgentStatusRequest.Item) element;
					final String agentJID = item.getJID();
					if ("remove".equals(item.getType())) {

						// Removing the user from the roster, so remove any
						// presence information
						// about them.
						final String key = StringUtils.parseName(StringUtils
								.parseName(agentJID)
								+ "@"
								+ StringUtils.parseServer(agentJID));
						presenceMap.remove(key);
						// Fire event for roster listeners.
						fireEvent(EVENT_AGENT_REMOVED, agentJID);
					} else {
						entries.add(agentJID);
						// Fire event for roster listeners.
						fireEvent(EVENT_AGENT_ADDED, agentJID);
					}
				}

				// Mark the roster as initialized.
				rosterInitialized = true;
			}
		}
	}

	/**
	 * Listens for all presence packets and processes them.
	 */
	private class PresencePacketListener implements PacketListener {
		@Override
		public void processPacket(Packet packet) {
			final Presence presence = (Presence) packet;
			final String from = presence.getFrom();
			if (from == null) {
				// TODO Check if we need to ignore these presences or this is a
				// server bug?
				System.out
						.println("Presence with no FROM: " + presence.toXML());
				return;
			}
			final String key = getPresenceMapKey(from);

			// If an "available" packet, add it to the presence map. Each
			// presence map will hold
			// for a particular user a map with the presence packets saved for
			// each resource.
			if (presence.getType() == Presence.Type.available) {
				// Ignore the presence packet unless it has an agent status
				// extension.
				final AgentStatus agentStatus = (AgentStatus) presence
						.getExtension(AgentStatus.ELEMENT_NAME,
								AgentStatus.NAMESPACE);
				if (agentStatus == null) {
					return;
				}
				// Ensure that this presence is coming from an Agent of the same
				// workgroup
				// of this Agent
				else if (!workgroupJID.equals(agentStatus.getWorkgroupJID())) {
					return;
				}
				Map<String, Presence> userPresences;
				// Get the user presence map
				if (presenceMap.get(key) == null) {
					userPresences = new HashMap<String, Presence>();
					presenceMap.put(key, userPresences);
				} else {
					userPresences = presenceMap.get(key);
				}
				// Add the new presence, using the resources as a key.
				synchronized (userPresences) {
					userPresences
							.put(StringUtils.parseResource(from), presence);
				}
				// Fire an event.
				synchronized (entries) {
					for (final Object element : entries) {
						final String entry = (String) element;
						if (entry.toLowerCase()
								.equals(StringUtils.parseBareAddress(key)
										.toLowerCase())) {
							fireEvent(EVENT_PRESENCE_CHANGED, packet);
						}
					}
				}
			}
			// If an "unavailable" packet, remove any entries in the presence
			// map.
			else if (presence.getType() == Presence.Type.unavailable) {
				if (presenceMap.get(key) != null) {
					final Map<String, Presence> userPresences = presenceMap
							.get(key);
					synchronized (userPresences) {
						userPresences.remove(StringUtils.parseResource(from));
					}
					if (userPresences.isEmpty()) {
						presenceMap.remove(key);
					}
				}
				// Fire an event.
				synchronized (entries) {
					for (final String string : entries) {
						final String entry = string;
						if (entry.toLowerCase()
								.equals(StringUtils.parseBareAddress(key)
										.toLowerCase())) {
							fireEvent(EVENT_PRESENCE_CHANGED, packet);
						}
					}
				}
			}
		}
	}

	private static final int EVENT_AGENT_ADDED = 0;

	private static final int EVENT_AGENT_REMOVED = 1;
	private static final int EVENT_PRESENCE_CHANGED = 2;
	private final Connection connection;
	private final String workgroupJID;
	private final List<String> entries;
	private final List<AgentRosterListener> listeners;

	private final Map<String, Map<String, Presence>> presenceMap;

	// The roster is marked as initialized when at least a single roster packet
	// has been recieved and processed.
	boolean rosterInitialized = false;

	/**
	 * Constructs a new AgentRoster.
	 * 
	 * @param connection
	 *            an XMPP connection.
	 */
	AgentRoster(Connection connection, String workgroupJID) {
		this.connection = connection;
		this.workgroupJID = workgroupJID;
		entries = new ArrayList<String>();
		listeners = new ArrayList<AgentRosterListener>();
		presenceMap = new HashMap<String, Map<String, Presence>>();
		// Listen for any roster packets.
		final PacketFilter rosterFilter = new PacketTypeFilter(
				AgentStatusRequest.class);
		connection.addPacketListener(new AgentStatusListener(), rosterFilter);
		// Listen for any presence packets.
		connection.addPacketListener(new PresencePacketListener(),
				new PacketTypeFilter(Presence.class));

		// Send request for roster.
		final AgentStatusRequest request = new AgentStatusRequest();
		request.setTo(workgroupJID);
		connection.sendPacket(request);
	}

	/**
	 * Adds a listener to this roster. The listener will be fired anytime one or
	 * more changes to the roster are pushed from the server.
	 * 
	 * @param listener
	 *            an agent roster listener.
	 */
	public void addListener(AgentRosterListener listener) {
		synchronized (listeners) {
			if (!listeners.contains(listener)) {
				listeners.add(listener);

				// Fire events for the existing entries and presences in the
				// roster
				for (final String jid : getAgents()) {
					// Check again in case the agent is no longer in the roster
					// (highly unlikely
					// but possible)
					if (entries.contains(jid)) {
						// Fire the agent added event
						listener.agentAdded(jid);
						final Map<String, Presence> userPresences = presenceMap
								.get(jid);
						if (userPresences != null) {
							final Iterator<Presence> presences = userPresences
									.values().iterator();
							while (presences.hasNext()) {
								// Fire the presence changed event
								listener.presenceChanged(presences.next());
							}
						}
					}
				}
			}
		}
	}

	/**
	 * Returns true if the specified XMPP address is an agent in the workgroup.
	 * 
	 * @param jid
	 *            the XMPP address of the agent (eg "jsmith@example.com"). The
	 *            address can be in any valid format (e.g. "domain/resource",
	 *            "user@domain" or "user@domain/resource").
	 * @return true if the XMPP address is an agent in the workgroup.
	 */
	public boolean contains(String jid) {
		if (jid == null) {
			return false;
		}
		synchronized (entries) {
			for (final String entry : entries) {
				if (entry.toLowerCase().equals(jid.toLowerCase())) {
					return true;
				}
			}
		}
		return false;
	}

	/**
	 * Fires event to listeners.
	 */
	private void fireEvent(int eventType, Object eventObject) {
		AgentRosterListener[] listeners = null;
		synchronized (this.listeners) {
			listeners = new AgentRosterListener[this.listeners.size()];
			this.listeners.toArray(listeners);
		}
		for (final AgentRosterListener listener : listeners) {
			switch (eventType) {
			case EVENT_AGENT_ADDED:
				listener.agentAdded((String) eventObject);
				break;
			case EVENT_AGENT_REMOVED:
				listener.agentRemoved((String) eventObject);
				break;
			case EVENT_PRESENCE_CHANGED:
				listener.presenceChanged((Presence) eventObject);
				break;
			}
		}
	}

	/**
	 * Returns a count of all agents in the workgroup.
	 * 
	 * @return the number of agents in the workgroup.
	 */
	public int getAgentCount() {
		return entries.size();
	}

	/**
	 * Returns all agents (String JID values) in the workgroup.
	 * 
	 * @return all entries in the roster.
	 */
	public Set<String> getAgents() {
		final Set<String> agents = new HashSet<String>();
		synchronized (entries) {
			for (final String string : entries) {
				agents.add(string);
			}
		}
		return Collections.unmodifiableSet(agents);
	}

	/**
	 * Returns the presence info for a particular agent, or <tt>null</tt> if the
	 * agent is unavailable (offline) or if no presence information is
	 * available.
	 * <p>
	 * 
	 * @param user
	 *            a fully qualified xmpp JID. The address could be in any valid
	 *            format (e.g. "domain/resource", "user@domain" or
	 *            "user@domain/resource").
	 * @return the agent's current presence, or <tt>null</tt> if the agent is
	 *         unavailable or if no presence information is available..
	 */
	public Presence getPresence(String user) {
		final String key = getPresenceMapKey(user);
		final Map<String, Presence> userPresences = presenceMap.get(key);
		if (userPresences == null) {
			final Presence presence = new Presence(Presence.Type.unavailable);
			presence.setFrom(user);
			return presence;
		} else {
			// Find the resource with the highest priority
			// Might be changed to use the resource with the highest
			// availability instead.
			final Iterator<String> it = userPresences.keySet().iterator();
			Presence p;
			Presence presence = null;

			while (it.hasNext()) {
				p = userPresences.get(it.next());
				if (presence == null) {
					presence = p;
				} else {
					if (p.getPriority() > presence.getPriority()) {
						presence = p;
					}
				}
			}
			if (presence == null) {
				presence = new Presence(Presence.Type.unavailable);
				presence.setFrom(user);
				return presence;
			} else {
				return presence;
			}
		}
	}

	/**
	 * Returns the key to use in the presenceMap for a fully qualified xmpp ID.
	 * The roster can contain any valid address format such us
	 * "domain/resource", "user@domain" or "user@domain/resource". If the roster
	 * contains an entry associated with the fully qualified xmpp ID then use
	 * the fully qualified xmpp ID as the key in presenceMap, otherwise use the
	 * bare address. Note: When the key in presenceMap is a fully qualified xmpp
	 * ID, the userPresences is useless since it will always contain one entry
	 * for the user.
	 * 
	 * @param user
	 *            the fully qualified xmpp ID, e.g. jdoe@example.com/Work.
	 * @return the key to use in the presenceMap for the fully qualified xmpp
	 *         ID.
	 */
	private String getPresenceMapKey(String user) {
		String key = user;
		if (!contains(user)) {
			key = StringUtils.parseBareAddress(user).toLowerCase();
		}
		return key;
	}

	/**
	 * Reloads the entire roster from the server. This is an asynchronous
	 * operation, which means the method will return immediately, and the roster
	 * will be reloaded at a later point when the server responds to the reload
	 * request.
	 */
	public void reload() {
		final AgentStatusRequest request = new AgentStatusRequest();
		request.setTo(workgroupJID);
		connection.sendPacket(request);
	}

	/**
	 * Removes a listener from this roster. The listener will be fired anytime
	 * one or more changes to the roster are pushed from the server.
	 * 
	 * @param listener
	 *            a roster listener.
	 */
	public void removeListener(AgentRosterListener listener) {
		synchronized (listeners) {
			listeners.remove(listener);
		}
	}
}