package org.jivesoftware.smack.proxy;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.net.SocketFactory;

import org.jivesoftware.smack.util.Base64;

/**
 * Http Proxy Socket Factory which returns socket connected to Http Proxy
 * 
 * @author Atul Aggarwal
 */
class HTTPProxySocketFactory extends SocketFactory {

	private final ProxyInfo proxy;

	private static final Pattern RESPONSE_PATTERN = Pattern
			.compile("HTTP/\\S+\\s(\\d+)\\s(.*)\\s*");

	public HTTPProxySocketFactory(ProxyInfo proxy) {
		this.proxy = proxy;
	}

	@Override
	public Socket createSocket(InetAddress host, int port) throws IOException {
		return httpProxifiedSocket(host.getHostAddress(), port);

	}

	@Override
	public Socket createSocket(InetAddress address, int port,
			InetAddress localAddress, int localPort) throws IOException {
		return httpProxifiedSocket(address.getHostAddress(), port);
	}

	@Override
	public Socket createSocket(String host, int port) throws IOException,
			UnknownHostException {
		return httpProxifiedSocket(host, port);
	}

	@Override
	public Socket createSocket(String host, int port, InetAddress localHost,
			int localPort) throws IOException, UnknownHostException {
		return httpProxifiedSocket(host, port);
	}

	private Socket httpProxifiedSocket(String host, int port)
			throws IOException {
		final String proxyhost = proxy.getProxyAddress();
		final int proxyPort = proxy.getProxyPort();
		final Socket socket = new Socket(proxyhost, proxyPort);
		final String hostport = "CONNECT " + host + ":" + port;
		String proxyLine;
		final String username = proxy.getProxyUsername();
		if (username == null) {
			proxyLine = "";
		} else {
			final String password = proxy.getProxyPassword();
			proxyLine = "\r\nProxy-Authorization: Basic "
					+ new String(Base64.encodeBytes((username + ":" + password)
							.getBytes("UTF-8")));
		}
		socket.getOutputStream()
				.write((hostport + " HTTP/1.1\r\nHost: " + hostport + proxyLine + "\r\n\r\n")
						.getBytes("UTF-8"));

		final InputStream in = socket.getInputStream();
		final StringBuilder got = new StringBuilder(100);
		int nlchars = 0;

		while (true) {
			final char c = (char) in.read();
			got.append(c);
			if (got.length() > 1024) {
				throw new ProxyException(ProxyInfo.ProxyType.HTTP, "Recieved "
						+ "header of >1024 characters from " + proxyhost
						+ ", cancelling connection");
			}
			if (c == -1) {
				throw new ProxyException(ProxyInfo.ProxyType.HTTP);
			}
			if ((nlchars == 0 || nlchars == 2) && c == '\r') {
				nlchars++;
			} else if ((nlchars == 1 || nlchars == 3) && c == '\n') {
				nlchars++;
			} else {
				nlchars = 0;
			}
			if (nlchars == 4) {
				break;
			}
		}

		if (nlchars != 4) {
			throw new ProxyException(ProxyInfo.ProxyType.HTTP, "Never "
					+ "received blank line from " + proxyhost
					+ ", cancelling connection");
		}

		final String gotstr = got.toString();

		final BufferedReader br = new BufferedReader(new StringReader(gotstr));
		final String response = br.readLine();

		if (response == null) {
			throw new ProxyException(ProxyInfo.ProxyType.HTTP, "Empty proxy "
					+ "response from " + proxyhost + ", cancelling");
		}

		final Matcher m = RESPONSE_PATTERN.matcher(response);
		if (!m.matches()) {
			throw new ProxyException(ProxyInfo.ProxyType.HTTP, "Unexpected "
					+ "proxy response from " + proxyhost + ": " + response);
		}

		final int code = Integer.parseInt(m.group(1));

		if (code != HttpURLConnection.HTTP_OK) {
			throw new ProxyException(ProxyInfo.ProxyType.HTTP);
		}

		return socket;
	}

}
