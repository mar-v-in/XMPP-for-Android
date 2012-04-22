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

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.filter.PacketExtensionFilter;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smackx.packet.MessageEvent;

/**
 * Manages message events requests and notifications. A MessageEventManager
 * provides a high level access to request for notifications and send event
 * notifications. It also provides an easy way to hook up custom logic when
 * requests or notifications are received.
 * 
 * @author Gaston Dombiak
 */
public class MessageEventManager {

	/**
	 * Adds event notification requests to a message. For each event type that
	 * the user wishes event notifications from the message recepient for,
	 * <tt>true</tt> should be passed in to this method.
	 * 
	 * @param message
	 *            the message to add the requested notifications.
	 * @param offline
	 *            specifies if the offline event is requested.
	 * @param delivered
	 *            specifies if the delivered event is requested.
	 * @param displayed
	 *            specifies if the displayed event is requested.
	 * @param composing
	 *            specifies if the composing event is requested.
	 */
	public static void addNotificationsRequests(Message message,
			boolean offline, boolean delivered, boolean displayed,
			boolean composing) {
		// Create a MessageEvent Package and add it to the message
		final MessageEvent messageEvent = new MessageEvent();
		messageEvent.setOffline(offline);
		messageEvent.setDelivered(delivered);
		messageEvent.setDisplayed(displayed);
		messageEvent.setComposing(composing);
		message.addExtension(messageEvent);
	}

	private final List<MessageEventNotificationListener> messageEventNotificationListeners = new ArrayList<MessageEventNotificationListener>();

	private final List<MessageEventRequestListener> messageEventRequestListeners = new ArrayList<MessageEventRequestListener>();

	private final Connection con;
	private final PacketFilter packetFilter = new PacketExtensionFilter("x",
			"jabber:x:event");

	private PacketListener packetListener;

	/**
	 * Creates a new message event manager.
	 * 
	 * @param con
	 *            a Connection to a XMPP server.
	 */
	public MessageEventManager(Connection con) {
		this.con = con;
		init();
	}

	/**
	 * Adds a message event notification listener. The listener will be fired
	 * anytime a notification event is received.
	 * 
	 * @param messageEventNotificationListener
	 *            a message event notification listener.
	 */
	public void addMessageEventNotificationListener(
			MessageEventNotificationListener messageEventNotificationListener) {
		synchronized (messageEventNotificationListeners) {
			if (!messageEventNotificationListeners
					.contains(messageEventNotificationListener)) {
				messageEventNotificationListeners
						.add(messageEventNotificationListener);
			}
		}
	}

	/**
	 * Adds a message event request listener. The listener will be fired anytime
	 * a request for event notification is received.
	 * 
	 * @param messageEventRequestListener
	 *            a message event request listener.
	 */
	public void addMessageEventRequestListener(
			MessageEventRequestListener messageEventRequestListener) {
		synchronized (messageEventRequestListeners) {
			if (!messageEventRequestListeners
					.contains(messageEventRequestListener)) {
				messageEventRequestListeners.add(messageEventRequestListener);
			}
		}
	}

	public void destroy() {
		if (con != null) {
			con.removePacketListener(packetListener);
		}
	}

	@Override
	protected void finalize() throws Throwable {
		destroy();
		super.finalize();
	}

	/**
	 * Fires message event notification listeners.
	 */
	private void fireMessageEventNotificationListeners(String from,
			String packetID, String methodName) {
		MessageEventNotificationListener[] listeners = null;
		Method method;
		synchronized (messageEventNotificationListeners) {
			listeners = new MessageEventNotificationListener[messageEventNotificationListeners
					.size()];
			messageEventNotificationListeners.toArray(listeners);
		}
		try {
			method = MessageEventNotificationListener.class.getDeclaredMethod(
					methodName, new Class[] { String.class, String.class });
			for (final MessageEventNotificationListener listener : listeners) {
				method.invoke(listener, new Object[] { from, packetID });
			}
		} catch (final NoSuchMethodException e) {
			e.printStackTrace();
		} catch (final InvocationTargetException e) {
			e.printStackTrace();
		} catch (final IllegalAccessException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Fires message event request listeners.
	 */
	private void fireMessageEventRequestListeners(String from, String packetID,
			String methodName) {
		MessageEventRequestListener[] listeners = null;
		Method method;
		synchronized (messageEventRequestListeners) {
			listeners = new MessageEventRequestListener[messageEventRequestListeners
					.size()];
			messageEventRequestListeners.toArray(listeners);
		}
		try {
			method = MessageEventRequestListener.class.getDeclaredMethod(
					methodName, new Class[] { String.class, String.class,
							MessageEventManager.class });
			for (final MessageEventRequestListener listener : listeners) {
				method.invoke(listener, new Object[] { from, packetID, this });
			}
		} catch (final NoSuchMethodException e) {
			e.printStackTrace();
		} catch (final InvocationTargetException e) {
			e.printStackTrace();
		} catch (final IllegalAccessException e) {
			e.printStackTrace();
		}
	}

	private void init() {
		// Listens for all message event packets and fire the proper message
		// event listeners.
		packetListener = new PacketListener() {
			@Override
			public void processPacket(Packet packet) {
				final Message message = (Message) packet;
				final MessageEvent messageEvent = (MessageEvent) message
						.getExtension("x", "jabber:x:event");
				if (messageEvent.isMessageEventRequest()) {
					// Fire event for requests of message events
					for (final Iterator<String> it = messageEvent
							.getEventTypes(); it.hasNext();) {
						fireMessageEventRequestListeners(message.getFrom(),
								message.getPacketID(),
								it.next().concat("NotificationRequested"));
					}
				} else {
					// Fire event for notifications of message events
					for (final Iterator<String> it = messageEvent
							.getEventTypes(); it.hasNext();) {
						fireMessageEventNotificationListeners(
								message.getFrom(), messageEvent.getPacketID(),
								it.next().concat("Notification"));
					}
				}

			};

		};
		con.addPacketListener(packetListener, packetFilter);
	}

	/**
	 * Removes a message event notification listener. The listener will be fired
	 * anytime a notification event is received.
	 * 
	 * @param messageEventNotificationListener
	 *            a message event notification listener.
	 */
	public void removeMessageEventNotificationListener(
			MessageEventNotificationListener messageEventNotificationListener) {
		synchronized (messageEventNotificationListeners) {
			messageEventNotificationListeners
					.remove(messageEventNotificationListener);
		}
	}

	/**
	 * Removes a message event request listener. The listener will be fired
	 * anytime a request for event notification is received.
	 * 
	 * @param messageEventRequestListener
	 *            a message event request listener.
	 */
	public void removeMessageEventRequestListener(
			MessageEventRequestListener messageEventRequestListener) {
		synchronized (messageEventRequestListeners) {
			messageEventRequestListeners.remove(messageEventRequestListener);
		}
	}

	/**
	 * Sends the notification that the receiver of the message has cancelled
	 * composing a reply.
	 * 
	 * @param to
	 *            the recipient of the notification.
	 * @param packetID
	 *            the id of the message to send.
	 */
	public void sendCancelledNotification(String to, String packetID) {
		// Create the message to send
		final Message msg = new Message(to);
		// Create a MessageEvent Package and add it to the message
		final MessageEvent messageEvent = new MessageEvent();
		messageEvent.setCancelled(true);
		messageEvent.setPacketID(packetID);
		msg.addExtension(messageEvent);
		// Send the packet
		con.sendPacket(msg);
	}

	/**
	 * Sends the notification that the receiver of the message is composing a
	 * reply
	 * 
	 * @param to
	 *            the recipient of the notification.
	 * @param packetID
	 *            the id of the message to send.
	 */
	public void sendComposingNotification(String to, String packetID) {
		// Create the message to send
		final Message msg = new Message(to);
		// Create a MessageEvent Package and add it to the message
		final MessageEvent messageEvent = new MessageEvent();
		messageEvent.setComposing(true);
		messageEvent.setPacketID(packetID);
		msg.addExtension(messageEvent);
		// Send the packet
		con.sendPacket(msg);
	}

	/**
	 * Sends the notification that the message was delivered to the sender of
	 * the original message
	 * 
	 * @param to
	 *            the recipient of the notification.
	 * @param packetID
	 *            the id of the message to send.
	 */
	public void sendDeliveredNotification(String to, String packetID) {
		// Create the message to send
		final Message msg = new Message(to);
		// Create a MessageEvent Package and add it to the message
		final MessageEvent messageEvent = new MessageEvent();
		messageEvent.setDelivered(true);
		messageEvent.setPacketID(packetID);
		msg.addExtension(messageEvent);
		// Send the packet
		con.sendPacket(msg);
	}

	/**
	 * Sends the notification that the message was displayed to the sender of
	 * the original message
	 * 
	 * @param to
	 *            the recipient of the notification.
	 * @param packetID
	 *            the id of the message to send.
	 */
	public void sendDisplayedNotification(String to, String packetID) {
		// Create the message to send
		final Message msg = new Message(to);
		// Create a MessageEvent Package and add it to the message
		final MessageEvent messageEvent = new MessageEvent();
		messageEvent.setDisplayed(true);
		messageEvent.setPacketID(packetID);
		msg.addExtension(messageEvent);
		// Send the packet
		con.sendPacket(msg);
	}
}