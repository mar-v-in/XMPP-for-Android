/**
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
package org.jivesoftware.smackx.bytestreams.ibb;

import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smackx.bytestreams.BytestreamRequest;
import org.jivesoftware.smackx.bytestreams.ibb.packet.Open;

/**
 * InBandBytestreamRequest class handles incoming In-Band Bytestream requests.
 * 
 * @author Henning Staib
 */
public class InBandBytestreamRequest implements BytestreamRequest {

	/* the bytestream initialization request */
	private final Open byteStreamRequest;

	/*
	 * In-Band Bytestream manager containing the XMPP connection and helper
	 * methods
	 */
	private final InBandBytestreamManager manager;

	protected InBandBytestreamRequest(InBandBytestreamManager manager,
			Open byteStreamRequest) {
		this.manager = manager;
		this.byteStreamRequest = byteStreamRequest;
	}

	/**
	 * Accepts the In-Band Bytestream open request and returns the session to
	 * send/receive data.
	 * 
	 * @return the session to send/receive data
	 * @throws XMPPException
	 *             if stream is invalid.
	 */
	@Override
	public InBandBytestreamSession accept() throws XMPPException {
		final Connection connection = manager.getConnection();

		// create In-Band Bytestream session and store it
		final InBandBytestreamSession ibbSession = new InBandBytestreamSession(
				connection, byteStreamRequest, byteStreamRequest.getFrom());
		manager.getSessions().put(byteStreamRequest.getSessionID(), ibbSession);

		// acknowledge request
		final IQ resultIQ = IQ.createResultIQ(byteStreamRequest);
		connection.sendPacket(resultIQ);

		return ibbSession;
	}

	/**
	 * Returns the sender of the In-Band Bytestream open request.
	 * 
	 * @return the sender of the In-Band Bytestream open request
	 */
	@Override
	public String getFrom() {
		return byteStreamRequest.getFrom();
	}

	/**
	 * Returns the session ID of the In-Band Bytestream open request.
	 * 
	 * @return the session ID of the In-Band Bytestream open request
	 */
	@Override
	public String getSessionID() {
		return byteStreamRequest.getSessionID();
	}

	/**
	 * Rejects the In-Band Bytestream request by sending a reject error to the
	 * initiator.
	 */
	@Override
	public void reject() {
		manager.replyRejectPacket(byteStreamRequest);
	}

}
