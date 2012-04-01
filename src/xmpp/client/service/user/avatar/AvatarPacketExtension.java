package xmpp.client.service.user.avatar;

import org.jivesoftware.smack.packet.PacketExtension;
import org.jivesoftware.smack.util.Base64;

public class AvatarPacketExtension implements PacketExtension {
	public final static String XMPP_ELEMENT_NAME = "data";
	public final static String XMPP_NAMESPACE = "urn:xmpp:avatar:data";

	private static byte[] decode(String data) {
		return Base64.decode(data);
	}

	private static String encode(byte[] data) {
		return Base64.encodeBytes(data);
	}

	private final byte[] mData;

	public AvatarPacketExtension(byte[] data) {
		mData = data;
	}

	public AvatarPacketExtension(String data) {
		mData = decode(data);
	}

	public byte[] getData() {
		return mData;
	}

	public String getDataBase64() {
		return encode(mData);
	}

	@Override
	public String getElementName() {
		return XMPP_ELEMENT_NAME;
	}

	@Override
	public String getNamespace() {
		return XMPP_NAMESPACE;
	}

	@Override
	public String toXML() {
		final StringBuilder builder = new StringBuilder("<data xmlns=\"");
		builder.append(getNamespace()).append("\">");
		builder.append(mData);
		builder.append("</data>");
		return builder.toString();
	}

}
