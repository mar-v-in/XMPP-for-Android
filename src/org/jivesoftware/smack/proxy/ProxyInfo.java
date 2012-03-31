package org.jivesoftware.smack.proxy;

import javax.net.SocketFactory;

/**
 * Class which stores proxy information such as proxy type, host, port,
 * authentication etc.
 * 
 * @author Atul Aggarwal
 */

public class ProxyInfo {
	public static enum ProxyType {
		NONE, HTTP, SOCKS4, SOCKS5
	}

	public static ProxyInfo forDefaultProxy() {
		return new ProxyInfo(ProxyType.NONE, null, 0, null, null);
	}

	public static ProxyInfo forHttpProxy(String pHost, int pPort, String pUser,
			String pPass) {
		return new ProxyInfo(ProxyType.HTTP, pHost, pPort, pUser, pPass);
	}

	public static ProxyInfo forNoProxy() {
		return new ProxyInfo(ProxyType.NONE, null, 0, null, null);
	}

	public static ProxyInfo forSocks4Proxy(String pHost, int pPort,
			String pUser, String pPass) {
		return new ProxyInfo(ProxyType.SOCKS4, pHost, pPort, pUser, pPass);
	}

	public static ProxyInfo forSocks5Proxy(String pHost, int pPort,
			String pUser, String pPass) {
		return new ProxyInfo(ProxyType.SOCKS5, pHost, pPort, pUser, pPass);
	}

	private final String proxyAddress;

	private final int proxyPort;

	private final String proxyUsername;

	private final String proxyPassword;

	private final ProxyType proxyType;

	public ProxyInfo(ProxyType pType, String pHost, int pPort, String pUser,
			String pPass) {
		proxyType = pType;
		proxyAddress = pHost;
		proxyPort = pPort;
		proxyUsername = pUser;
		proxyPassword = pPass;
	}

	public String getProxyAddress() {
		return proxyAddress;
	}

	public String getProxyPassword() {
		return proxyPassword;
	}

	public int getProxyPort() {
		return proxyPort;
	}

	public ProxyType getProxyType() {
		return proxyType;
	}

	public String getProxyUsername() {
		return proxyUsername;
	}

	public SocketFactory getSocketFactory() {
		if (proxyType == ProxyType.NONE) {
			return new DirectSocketFactory();
		} else if (proxyType == ProxyType.HTTP) {
			return new HTTPProxySocketFactory(this);
		} else if (proxyType == ProxyType.SOCKS4) {
			return new Socks4ProxySocketFactory(this);
		} else if (proxyType == ProxyType.SOCKS5) {
			return new Socks5ProxySocketFactory(this);
		} else {
			return null;
		}
	}
}
