package xmpp.client.ui.adapter;

import java.util.ArrayList;
import java.util.Date;

import xmpp.client.R;
import xmpp.client.service.chat.ChatMessage;
import xmpp.client.service.user.User;
import xmpp.client.service.user.contact.Contact;
import xmpp.client.ui.extras.SmileyHandler;
import xmpp.client.ui.provider.ChatProvider;
import xmpp.client.ui.provider.ContactProvider;
import android.content.Context;
import android.net.Uri;
import android.text.Layout.Alignment;
import android.text.SpannableStringBuilder;
import android.text.format.DateFormat;
import android.text.style.AlignmentSpan;
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

	Context mContext;
	ChatProvider mChatProvider;

	ContactProvider mContactProvider;

	public ChatAdapter(Context context, ChatProvider chatProvider,
			ContactProvider contactProvider) {
		mContext = context;
		mChatProvider = chatProvider;
		mContactProvider = contactProvider;
	}

	@Override
	public int getCount() {
		return getGroupedMessages().size();
	}

	private ArrayList<ArrayList<ChatMessage>> getGroupedMessages() {
		final ArrayList<ArrayList<ChatMessage>> list = new ArrayList<ArrayList<ChatMessage>>();
		User lastUser = null;
		Date lastDate = null;
		for (int i = 0; i < mChatProvider.size(); i++) {
			final ChatMessage msg = mChatProvider.getMessage(i);
			if (lastUser == null || !lastUser.equals(msg.getUser())
					|| !sameDay(lastDate, msg.getDate())) {
				lastUser = msg.getUser();
				lastDate = msg.getDate();
				list.add(new ArrayList<ChatMessage>());
			}
			list.get(list.size() - 1).add(msg);
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
		final ArrayList<ChatMessage> msgs = msgss.get(position);
		final LayoutInflater layoutInflater = (LayoutInflater) mContext
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		if (mChatProvider.getMeContact().contains(msgs.get(0).getUser())) {
			view = layoutInflater.inflate(R.layout.chat_entry_outgoing_base,
					parent, false);
		} else {
			view = layoutInflater.inflate(R.layout.chat_entry_incoming_base,
					parent, false);
		}
		if (position == msgss.size() - 1) {
			view.setPadding(0, 0, 0, 10);
		}
		final TextView user = (TextView) view.findViewById(R.id.msg_user);
		user.setText(msgs.get(0).getUser().getDisplayName());
		final TextView day = (TextView) view.findViewById(R.id.msg_day);
		day.setText(DateFormat.format(mContext
				.getText(R.string.datelayout_daymonth), msgs.get(0).getDate()));
		final LinearLayout container = (LinearLayout) view
				.findViewById(R.id.lst_msgs);
		for (final ChatMessage message : msgs) {
			final CharSequence seq = SmileyHandler.getSmiledText(
					message.getMessage(), mContext);
			View temp = null;
			if (mChatProvider.getMeContact().contains(message.getUser())) {
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
					message.getDate()));
			final TextView text = (TextView) temp.findViewById(R.id.msg_text);

			text.setText(seq);
			container.addView(temp);
		}
		final QuickContactBadge q = (QuickContactBadge) view
				.findViewById(R.id.contact_badge);

		if (q != null) {
			Contact contact = mContactProvider.getContact(msgs.get(0).getUser()
					.getUserLogin());
			if (contact == null) {
				contact = mContactProvider.getContact(msgs.get(0).getUser()
						.getFullUserLogin());
			}
			String userContact = null;
			if (contact != null) {
				userContact = contact.getUserContact();
			}
			if (userContact != null) {
				q.assignContactUri(Uri.parse(userContact));
			}
			if (contact != null) {
				q.setImageBitmap(contact.getBitmap(mContext));
			} else {
				q.setImageBitmap(msgs.get(0).getUser().getBitmap(mContext));
			}
		}

		return view;
		/*
		 * if (position == mChatProvider.size()) { return buildEnd(parent); }
		 * final ChatMessage message = (ChatMessage) getItem(position); final
		 * View view = buildView(position, parent); final TextView time =
		 * (TextView) view.findViewById(R.id.msg_time);
		 * time.setText(DateFormat.getTimeFormat(mContext).format(
		 * message.getDate())); final TextView text = (TextView)
		 * view.findViewById(R.id.msg_text);
		 * text.setText(SmileyHandler.getSmiledText(message.getMessage(),
		 * mContext)); if
		 * (mChatProvider.getMeContact().contains(message.getUser())) { final
		 * SpannableStringBuilder builder = new SpannableStringBuilder(
		 * text.getText()); builder.setSpan(new AlignmentSpan() {
		 * 
		 * @Override public Alignment getAlignment() { return
		 * Alignment.ALIGN_OPPOSITE; }
		 * 
		 * }, 0, builder.length(), 0); text.setText(builder); }
		 * 
		 * final QuickContactBadge q = (QuickContactBadge) view
		 * .findViewById(R.id.contact_badge);
		 * 
		 * if (q != null) { Contact contact =
		 * mContactProvider.getContact(message.getUser() .getUserLogin()); if
		 * (contact == null) { contact =
		 * mContactProvider.getContact(message.getUser() .getFullUserLogin()); }
		 * String userContact = null; if (contact != null) { userContact =
		 * contact.getUserContact(); } if (userContact != null) {
		 * q.assignContactUri(Uri.parse(userContact)); } if (contact != null) {
		 * q.setImageBitmap(contact.getBitmap(mContext)); } else {
		 * q.setImageBitmap(message.getUser().getBitmap(mContext)); } }
		 * 
		 * return view;
		 */
	}
}
