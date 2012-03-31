package org.jivesoftware.smackx.bytestreams.socks5;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketException;

import org.jivesoftware.smackx.bytestreams.BytestreamSession;

/**
 * Socks5BytestreamSession class represents a SOCKS5 Bytestream session.
 * 
 * @author Henning Staib
 */
public class Socks5BytestreamSession implements BytestreamSession {

	/* the underlying socket of the SOCKS5 Bytestream */
	private final Socket socket;

	/* flag to indicate if this session is a direct or mediated connection */
	private final boolean isDirect;

	protected Socks5BytestreamSession(Socket socket, boolean isDirect) {
		this.socket = socket;
		this.isDirect = isDirect;
	}

	@Override
	public void close() throws IOException {
		socket.close();
	}

	@Override
	public InputStream getInputStream() throws IOException {
		return socket.getInputStream();
	}

	@Override
	public OutputStream getOutputStream() throws IOException {
		return socket.getOutputStream();
	}

	@Override
	public int getReadTimeout() throws IOException {
		try {
			return socket.getSoTimeout();
		} catch (final SocketException e) {
			throw new IOException("Error on underlying Socket");
		}
	}

	/**
	 * Returns <code>true</code> if the session is established through a direct
	 * connection between the initiator and target, <code>false</code> if the
	 * session is mediated over a SOCKS proxy.
	 * 
	 * @return <code>true</code> if session is a direct connection,
	 *         <code>false</code> if session is mediated over a SOCKS5 proxy
	 */
	public boolean isDirect() {
		return isDirect;
	}

	/**
	 * Returns <code>true</code> if the session is mediated over a SOCKS proxy,
	 * <code>false</code> if this session is established through a direct
	 * connection between the initiator and target.
	 * 
	 * @return <code>true</code> if session is mediated over a SOCKS5 proxy,
	 *         <code>false</code> if session is a direct connection
	 */
	public boolean isMediated() {
		return !isDirect;
	}

	@Override
	public void setReadTimeout(int timeout) throws IOException {
		try {
			socket.setSoTimeout(timeout);
		} catch (final SocketException e) {
			throw new IOException("Error on underlying Socket");
		}
	}

}
