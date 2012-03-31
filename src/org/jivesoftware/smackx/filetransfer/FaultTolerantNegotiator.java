/**
 * $RCSfile$
 * $Revision: $
 * $Date: $
 *
 * Copyright 2003-2006 Jive Software.
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
package org.jivesoftware.smackx.filetransfer;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.PacketCollector;
import org.jivesoftware.smack.SmackConfiguration;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.filter.OrFilter;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smackx.packet.StreamInitiation;

/**
 * The fault tolerant negotiator takes two stream negotiators, the primary and
 * the secondary negotiator. If the primary negotiator fails during the stream
 * negotiaton process, the second negotiator is used.
 */
public class FaultTolerantNegotiator extends StreamNegotiator {

	private class NegotiatorService implements Callable<InputStream> {

		private final PacketCollector collector;

		NegotiatorService(PacketCollector collector) {
			this.collector = collector;
		}

		@Override
		public InputStream call() throws Exception {
			final Packet streamInitiation = collector
					.nextResult(SmackConfiguration.getPacketReplyTimeout() * 2);
			if (streamInitiation == null) {
				throw new XMPPException("No response from remote client");
			}
			final StreamNegotiator negotiator = determineNegotiator(streamInitiation);
			return negotiator.negotiateIncomingStream(streamInitiation);
		}
	}

	private final StreamNegotiator primaryNegotiator;
	private final StreamNegotiator secondaryNegotiator;
	private final Connection connection;
	private PacketFilter primaryFilter;

	private PacketFilter secondaryFilter;

	public FaultTolerantNegotiator(Connection connection,
			StreamNegotiator primary, StreamNegotiator secondary) {
		primaryNegotiator = primary;
		secondaryNegotiator = secondary;
		this.connection = connection;
	}

	@Override
	public void cleanup() {
	}

	@Override
	public InputStream createIncomingStream(StreamInitiation initiation)
			throws XMPPException {
		final PacketCollector collector = connection
				.createPacketCollector(getInitiationPacketFilter(
						initiation.getFrom(), initiation.getSessionID()));

		connection.sendPacket(super.createInitiationAccept(initiation,
				getNamespaces()));

		final ExecutorService threadPoolExecutor = Executors
				.newFixedThreadPool(2);
		final CompletionService<InputStream> service = new ExecutorCompletionService<InputStream>(
				threadPoolExecutor);
		final List<Future<InputStream>> futures = new ArrayList<Future<InputStream>>();
		InputStream stream = null;
		XMPPException exception = null;
		try {
			futures.add(service.submit(new NegotiatorService(collector)));
			futures.add(service.submit(new NegotiatorService(collector)));

			int i = 0;
			while (stream == null && i < futures.size()) {
				Future<InputStream> future;
				try {
					i++;
					future = service.poll(10, TimeUnit.SECONDS);
				} catch (final InterruptedException e) {
					continue;
				}

				if (future == null) {
					continue;
				}

				try {
					stream = future.get();
				} catch (final InterruptedException e) {
					/* Do Nothing */
				} catch (final ExecutionException e) {
					exception = new XMPPException(e.getCause());
				}
			}
		} finally {
			for (final Future<InputStream> future : futures) {
				future.cancel(true);
			}
			collector.cancel();
			threadPoolExecutor.shutdownNow();
		}
		if (stream == null) {
			if (exception != null) {
				throw exception;
			} else {
				throw new XMPPException("File transfer negotiation failed.");
			}
		}

		return stream;
	}

	@Override
	public OutputStream createOutgoingStream(String streamID, String initiator,
			String target) throws XMPPException {
		OutputStream stream;
		try {
			stream = primaryNegotiator.createOutgoingStream(streamID,
					initiator, target);
		} catch (final XMPPException ex) {
			stream = secondaryNegotiator.createOutgoingStream(streamID,
					initiator, target);
		}

		return stream;
	}

	private StreamNegotiator determineNegotiator(Packet streamInitiation) {
		return primaryFilter.accept(streamInitiation) ? primaryNegotiator
				: secondaryNegotiator;
	}

	@Override
	public PacketFilter getInitiationPacketFilter(String from, String streamID) {
		if (primaryFilter == null || secondaryFilter == null) {
			primaryFilter = primaryNegotiator.getInitiationPacketFilter(from,
					streamID);
			secondaryFilter = secondaryNegotiator.getInitiationPacketFilter(
					from, streamID);
		}
		return new OrFilter(primaryFilter, secondaryFilter);
	}

	@Override
	public String[] getNamespaces() {
		final String[] primary = primaryNegotiator.getNamespaces();
		final String[] secondary = secondaryNegotiator.getNamespaces();

		final String[] namespaces = new String[primary.length
				+ secondary.length];
		System.arraycopy(primary, 0, namespaces, 0, primary.length);
		System.arraycopy(secondary, 0, namespaces, primary.length,
				secondary.length);

		return namespaces;
	}

	@Override
	final Packet initiateIncomingStream(Connection connection,
			StreamInitiation initiation) {
		throw new UnsupportedOperationException(
				"Initiation handled by createIncomingStream " + "method");
	}

	@Override
	InputStream negotiateIncomingStream(Packet streamInitiation)
			throws XMPPException {
		throw new UnsupportedOperationException(
				"Negotiation only handled by create incoming "
						+ "stream method.");
	}
}
