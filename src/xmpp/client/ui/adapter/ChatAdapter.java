package xmpp.client.ui.adapter;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import xmpp.client.R;
import xmpp.client.service.chat.ChatMessage;
import xmpp.client.service.chat.MessageType;
import xmpp.client.service.user.User;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.ui.extras.SmileyHandler;
import xmpp.client.ui.provider.ChatProvider;
import xmpp.client.ui.provider.ContactProvider;
import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.text.Layout.Alignment;
import android.text.SpannableStringBuilder;
import android.text.format.DateFormat;
import android.text.style.AlignmentSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.QuickContactBadge;
import android.widget.TextView;

public class ChatAdapter extends BaseAdapter {

	private static boolean sameDay(Date date1, Date date2) {
		// TODO Do it without deprecated functions and also compare month and
		// year
		return date1.getDate() == date2.getDate();
	}

	private final HashMap<Integer, View> viewCache;
	private View lastView;

	private int cachedSize;

	private final Context mContext;
	private final ChatProvider mChatProvider;

	private final ContactProvider mContactProvider;

	public ChatAdapter(Context context, ChatProvider chatProvider,
			ContactProvider contactProvider) {
		mContext = context;
		mChatProvider = chatProvider;
		mContactProvider = contactProvider;
		viewCache = new HashMap<Integer, View>();
		cachedSize = -1;
	}

	private void drawMessages(ViewGroup parent,
			final ArrayList<ChatMessage> msgs, final boolean itsMe,
			final LayoutInflater layoutInflater, final LinearLayout container) {
		for (final ChatMessage chatMessage : msgs) {
			final CharSequence seq = SmileyHandler.getSmiledText(
					chatMessage.getText(), mContext);
			View temp = null;
			if (itsMe) {
				((SpannableStringBuilder) seq).setSpan(new AlignmentSpan() {

					@Override
					public Alignment getAlignment() {
						return Alignment.ALIGN_OPPOSITE;
					}

				}, 0, seq.length(), 0);
				temp = layoutInflater.inflate(
						R.layout.chat_entry_outgoing_message, parent, false);
			} else {
				temp = layoutInflater.inflate(
						R.layout.chat_entry_incoming_message, parent, false);
			}
			final TextView time = (TextView) temp.findViewById(R.id.msg_time);
			time.setText(DateFormat.getTimeFormat(mContext).format(
					chatMessage.getDate()));
			final TextView text = (TextView) temp.findViewById(R.id.msg_text);

			text.setText(seq);
			container.addView(temp);
		}
	}

	@Override
	public int getCount() {
		return getGroupedMessages().size() + 1;
	}

	private ArrayList<ArrayList<xmpp.client.service.chat.ChatMessage>> getGroupedMessages() {
		final ArrayList<ArrayList<xmpp.client.service.chat.ChatMessage>> list = new ArrayList<ArrayList<xmpp.client.service.chat.ChatMessage>>();
		String lastUser = null;
		Date lastDate = null;
		for (int i = 0; i < mChatProvider.size(); i++) {
			final xmpp.client.service.chat.ChatMessage msg = mChatProvider
					.getMessage(i);
			switch (msg.getType()) {
			case MultiUserChat:
			case SingleUserChat:
				if (lastUser == null || !lastUser.equals(msg.getFrom())
						|| !sameDay(lastDate, msg.getDate())) {
					lastUser = msg.getFrom();
					lastDate = msg.getDate();
					list.add(new ArrayList<xmpp.client.service.chat.ChatMessage>());
				}
				list.get(list.size() - 1).add(msg);
				break;
			case Info:
				list.add(new ArrayList<xmpp.client.service.chat.ChatMessage>());
				list.get(list.size() - 1).add(msg);
				break;
			default:
				break;
			}
		}
		return list;
	}

	@Override
	public Object getItem(int position) {
		if (position == mChatProvider.size()) {
			return 0;
		}
		return getGroupedMessages().get(position);
	}

	@Override
	public long getItemId(int position) {
		return getItem(position).hashCode();
	}

	@Override
	public View getView(int position, View view, ViewGroup parent) {
		final ArrayList<ArrayList<ChatMessage>> msgss = getGroupedMessages();
		final boolean itsLastChat = position == msgss.size() - 1;
		final boolean itsLast = (position == msgss.size());
		final ArrayList<ChatMessage> msgs = itsLast ? null : msgss
				.get(position);
		final boolean itsMe = itsLast ? false : mContactProvider
				.getMeUserLogin().equals(msgs.get(0).getFrom());
		final boolean itsStatus = itsLast
				|| (msgs.get(0).getType() == MessageType.Info || msgs.get(0)
						.getType() == MessageType.UserState);
		if (viewCache.containsKey(position)
				&& !(itsLastChat && cachedSize != mChatProvider.size())) {
			view = viewCache.get(position);
		} else if (!itsLast) {
			final LayoutInflater layoutInflater = (LayoutInflater) mContext
					.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			if (itsMe) {
				view = layoutInflater.inflate(
						R.layout.chat_entry_outgoing_base, parent, false);
			} else if (itsStatus) {
				view = layoutInflater.inflate(R.layout.chat_entry_status,
						parent, false);
			} else {
				view = layoutInflater.inflate(
						R.layout.chat_entry_incoming_base, parent, false);
			}
			if (!itsStatus) {
				final TextView day = (TextView) view.findViewById(R.id.msg_day);
				day.setText(DateFormat.format(mContext
						.getText(R.string.datelayout_daymonth), msgs.get(0)
						.getDate()));
				final LinearLayout container = (LinearLayout) view
						.findViewById(R.id.lst_msgs);
				drawMessages(parent, msgs, itsMe, layoutInflater, container);
			}
		}
		if (!itsStatus) {
			final TextView user = (TextView) view.findViewById(R.id.msg_user);
			final QuickContactBadge q = (QuickContactBadge) view
					.findViewById(R.id.contact_badge);
			String userContact = null;
			final Contact contact = null; // Only because it does not work!
			if (contact != null) {
				userContact = contact.getUserContact();
			}
			if (userContact != null) {
				q.assignContactUri(Uri.parse(userContact));
			}

			if (contact != null) {
				user.setText(contact.getUserName());
				q.setImageBitmap(contact.getBitmap(mContext,
						(mChatProvider.isMUC() && !itsMe)));
			} else {
				user.setText(msgs.get(0).getFrom());
				/*
				 * q.setImageBitmap(msgs.get(0).getUser() .getBitmap(mContext,
				 * (mChatProvider.isMUC() && !itsMe)));
				 */

			}
		} else if (!itsLast) {
			final TextView status = (TextView) view
					.findViewById(R.id.status_text);
			status.setVisibility(View.VISIBLE);
			status.setText(msgs.get(0).getText());
		}
		if (itsLast) {
			if (lastView == null) {
				final LayoutInflater layoutInflater = (LayoutInflater) mContext
						.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
				lastView = layoutInflater.inflate(R.layout.chat_entry_status,
						parent, false);
			}
			Log.d("ChatAdapter", "Render lastView");
			if (!mChatProvider.isMUC() && mChatProvider.getUsers().size() > 0) {
				Log.d("ChatAdapter", "Render lastView[isSingle!]");
				final User u = mChatProvider.getUsers().get(0);
				if (!mContactProvider
						.getContact(mChatProvider.getUsers().get(0))
						.getUserState().isOnline()) {
					Log.d("ChatAdapter", "Render lastView[isOffline!]");
					final TextView v = (TextView) lastView
							.findViewById(R.id.status_text);
					v.setText(mContext.getText(R.string.chat_offline)
							.toString().replace("$(name)", u.getDisplayName()));
					v.setTextColor(Color.parseColor(mContext
							.getString(android.R.color.holo_red_dark)));
					v.setVisibility(View.VISIBLE);
				} else {
					Log.d("ChatAdapter", "Render lastView[isOnline!]");
					final TextView v = (TextView) lastView
							.findViewById(R.id.status_text);
					v.setVisibility(View.GONE);
				}
			}

			view = lastView;
		} else {
			viewCache.put(position, view);
			if (itsLastChat) {
				cachedSize = mChatProvider.size();
			}
		}
		return view;
	}
}
