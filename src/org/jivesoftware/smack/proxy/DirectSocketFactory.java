package org.jivesoftware.smack.proxy;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownHostException;

import javax.net.SocketFactory;

/**
 * SocketFactory for direct connection
 * 
 * @author Atul Aggarwal
 */
class DirectSocketFactory extends SocketFactory {

	public DirectSocketFactory() {
	}

	@Override
	public Socket createSocket(InetAddress host, int port) throws IOException {
		final Socket newSocket = new Socket(Proxy.NO_PROXY);
		newSocket.connect(new InetSocketAddress(host, port));
		return newSocket;
	}

	@Override
	public Socket createSocket(InetAddress address, int port,
			InetAddress localAddress, int localPort) throws IOException {
		return new Socket(address, port, localAddress, localPort);
	}

	@Override
	public Socket createSocket(String host, int port) throws IOException,
			UnknownHostException {
		final Socket newSocket = new Socket(Proxy.NO_PROXY);
		newSocket.connect(new InetSocketAddress(host, port));
		return newSocket;
	}

	@Override
	public Socket createSocket(String host, int port, InetAddress localHost,
			int localPort) throws IOException, UnknownHostException {
		return new Socket(host, port, localHost, localPort);
	}

}
