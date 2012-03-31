/*
 * This file is part of JSTUN. 
 * 
 * Copyright (c) 2005 Thomas King <king@t-king.de> - All rights
 * reserved.
 * 
 * This software is licensed under either the GNU Public License (GPL),
 * or the Apache 2.0 license. Copies of both license agreements are
 * included in this distribution.
 */

package de.javawi.jstun.test;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;

public class DiscoveryInfo {
	private final InetAddress testIP;
	private boolean error = false;
	private int errorResponseCode = 0;
	private String errorReason;
	private boolean openAccess = false;
	private boolean blockedUDP = false;
	private boolean fullCone = false;
	private boolean restrictedCone = false;
	private boolean portRestrictedCone = false;
	private boolean symmetric = false;
	private boolean symmetricUDPFirewall = false;
	private InetAddress publicIP;

	public DiscoveryInfo(InetAddress testIP) {
		this.testIP = testIP;
	}

	public InetAddress getLocalIP() {
		return testIP;
	}

	public InetAddress getPublicIP() {
		return publicIP;
	}

	public boolean isBlockedUDP() {
		if (error) {
			return false;
		}
		return blockedUDP;
	}

	public boolean isError() {
		return error;
	}

	public boolean isFullCone() {
		if (error) {
			return false;
		}
		return fullCone;
	}

	public boolean isOpenAccess() {
		if (error) {
			return false;
		}
		return openAccess;
	}

	public boolean isPortRestrictedCone() {
		if (error) {
			return false;
		}
		return portRestrictedCone;
	}

	public boolean isRestrictedCone() {
		if (error) {
			return false;
		}
		return restrictedCone;
	}

	public boolean isSymmetric() {
		if (error) {
			return false;
		}
		return symmetric;
	}

	public boolean isSymmetricUDPFirewall() {
		if (error) {
			return false;
		}
		return symmetricUDPFirewall;
	}

	public void setBlockedUDP() {
		blockedUDP = true;
	}

	public void setError(int responseCode, String reason) {
		error = true;
		errorResponseCode = responseCode;
		errorReason = reason;
	}

	public void setFullCone() {
		fullCone = true;
	}

	public void setOpenAccess() {
		openAccess = true;
	}

	public void setPortRestrictedCone() {
		portRestrictedCone = true;
	}

	public void setPublicIP(InetAddress publicIP) {
		this.publicIP = publicIP;
	}

	public void setRestrictedCone() {
		restrictedCone = true;
	}

	public void setSymmetric() {
		symmetric = true;
	}

	public void setSymmetricUDPFirewall() {
		symmetricUDPFirewall = true;
	}

	@Override
	public String toString() {
		final StringBuffer sb = new StringBuffer();
		sb.append("Network interface: ");
		try {
			sb.append(NetworkInterface.getByInetAddress(testIP).getName());
		} catch (final SocketException se) {
			sb.append("unknown");
		}
		sb.append("\n");
		sb.append("Local IP address: ");
		sb.append(testIP.getHostAddress());
		sb.append("\n");
		if (error) {
			sb.append(errorReason + " - Responsecode: " + errorResponseCode);
			return sb.toString();
		}
		sb.append("Result: ");
		if (openAccess) {
			sb.append("Open access to the Internet.\n");
		}
		if (blockedUDP) {
			sb.append("Firewall blocks UDP.\n");
		}
		if (fullCone) {
			sb.append("Full Cone NAT handles connections.\n");
		}
		if (restrictedCone) {
			sb.append("Restricted Cone NAT handles connections.\n");
		}
		if (portRestrictedCone) {
			sb.append("Port restricted Cone NAT handles connections.\n");
		}
		if (symmetric) {
			sb.append("Symmetric Cone NAT handles connections.\n");
		}
		if (symmetricUDPFirewall) {
			sb.append("Symmetric UDP Firewall handles connections.\n");
		}
		if (!openAccess && !blockedUDP && !fullCone && !restrictedCone
				&& !portRestrictedCone && !symmetric && !symmetricUDPFirewall) {
			sb.append("unkown\n");
		}
		sb.append("Public IP address: ");
		if (publicIP != null) {
			sb.append(publicIP.getHostAddress());
		} else {
			sb.append("unknown");
		}
		sb.append("\n");
		return sb.toString();
	}
}
