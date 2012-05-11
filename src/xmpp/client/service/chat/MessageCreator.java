package xmpp.client.service.chat;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.PacketExtension;

import xmpp.client.service.user.UserService;
import xmpp.client.service.user.UserServiceProvider;

public class MessageCreator implements UserServiceProvider {

	private final UserService mUserService;

	private static MessageCreator instance;

	private static String[] dateStringVariants = new String[] {
			"yyyy-MM-dd'T'HH:mm:ssZ", "yyyy-MM-dd'T'HH:mm:ss.SZ",
			"yyyy-MM-dd'T'HH:mm:ss.S'Z'", "yyyy-MM-dd'T'HH:mm:ss'Z'",
			"yyyyMMdd'T'HH:mm:ss" };

	public static MessageCreator getInstance(UserService userService) {
		if (instance == null) {
			instance = new MessageCreator(userService);
		} else {
			if (instance.getUserService() != userService) {
				instance = new MessageCreator(userService);
			}
		}
		return instance;
	}

	private static Date parseDateString(String datestring) {
		if (datestring != null && !datestring.isEmpty()) {
			for (final String dateStringVariant : dateStringVariants) {
				final SimpleDateFormat sdf = new SimpleDateFormat(
						dateStringVariant);
				sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
				try {
					return sdf.parse(datestring);
				} catch (final ParseException e) {

				}
			}
		}
		return new Date();
	}

	public MessageCreator(UserService userService) {
		mUserService = userService;
	}

	public xmpp.client.service.chat.ChatMessage createMessage(Chat chat,
			Message smackMessage) {
		final String user = smackMessage.getFrom();
		final String text = smackMessage.getBody();
		final Date date = parseDateString(getDateString(smackMessage));
		if ((chat.getChatType() == ChatCodes.CHAT_MULTI && (user.equals(chat
				.getIdentifier())))) {
			return new InfoMessage(date, text, user);
		} else if (chat.getChatType() == ChatCodes.CHAT_MULTI) {
			return new xmpp.client.service.chat.multi.MultiChatMessage(date,
					text, user);
		} else if (chat.getChatType() == ChatCodes.CHAT_SINGLE) {
			return new xmpp.client.service.chat.single.SingleChatMessage(date,
					text, user);
		} else {
			return null;
		}
	}

	private String getDateString(Message smackMessage) {
		String datestring = null;
		PacketExtension pe = smackMessage.getExtension("jabber:x:delay");// XEP-0091
		if (pe == null) {
			pe = smackMessage.getExtension("urn:xmpp:delay");// XEP-0203
		}
		if (pe != null && pe.toXML() != null) {
			final String xml = pe.toXML();
			String[] arr = xml.split("stamp='");
			if (arr.length > 1) {
				arr = arr[1].split("'");
				if (arr.length > 1) {
					datestring = arr[0];
				}
			} else {
				arr = xml.split("stamp=\"");
				if (arr.length > 1) {
					arr = arr[1].split("\"");
					if (arr.length > 1) {
						datestring = arr[0];
					}
				}
			}
		}
		return datestring;
	}

	@Override
	public UserService getUserService() {
		return mUserService;
	}

}
