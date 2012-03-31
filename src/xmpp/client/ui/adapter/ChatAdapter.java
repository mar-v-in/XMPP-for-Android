package xmpp.client.ui.adapter;

import java.util.Date;

import xmpp.client.R;
import xmpp.client.service.chat.ChatMessage;
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
import android.widget.QuickContactBadge;
import android.widget.TextView;

public class ChatAdapter extends BaseAdapter {
	Context mContext;

	ChatProvider mChatProvider;
	ContactProvider mContactProvider;

	public ChatAdapter(Context context, ChatProvider chatProvider,
			ContactProvider contactProvider) {
		mContext = context;
		mChatProvider = chatProvider;
		mContactProvider = contactProvider;
	}

	private View buildEnd(ViewGroup parent) {
		final LayoutInflater layoutInflater = (LayoutInflater) mContext
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		final ChatMessage message = (ChatMessage) getItem(mChatProvider.size() - 1);
		View view;
		if (message.getUser().equals(mChatProvider.getMeContact())) {
			view = layoutInflater.inflate(R.layout.chat_entry_outgoing_end,
					parent, false);
		} else {
			view = layoutInflater.inflate(R.layout.chat_entry_incoming_end,
					parent, false);
		}
		if (checkDrawHeader(mChatProvider.size() - 1)) {
			final View v = view.findViewById(R.id.contact_divider);
			if (v != null) {
				v.setVisibility(View.VISIBLE);
			}
		}

		return view;
	}

	private View buildView(int position, ViewGroup parent) {
		View view;
		final boolean drawHeader = checkDrawHeader(position);
		final ChatMessage message = (ChatMessage) getItem(position);
		final LayoutInflater layoutInflater = (LayoutInflater) mContext
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		if (drawHeader) {
			if (mChatProvider.getMeContact().contains(message.getUser())) {
				view = layoutInflater.inflate(
						R.layout.chat_entry_outgoing_first, parent, false);

			} else {
				view = layoutInflater.inflate(
						R.layout.chat_entry_incoming_first, parent, false);
			}
			final TextView day = (TextView) view.findViewById(R.id.msg_day);
			day.setText(DateFormat.format(
					mContext.getText(R.string.datelayout_daymonth),
					message.getDate()));
			final TextView user = (TextView) view.findViewById(R.id.msg_user);
			user.setText(message.getUser().getDisplayName());

		} else {
			if (mChatProvider.getMeContact().contains(message.getUser())) {
				view = layoutInflater.inflate(
						R.layout.chat_entry_outgoing_next, parent, false);

			} else {
				view = layoutInflater.inflate(
						R.layout.chat_entry_incoming_next, parent, false);
			}
			if (position > 0 && checkDrawHeader(position - 1)) {
				final View v = view.findViewById(R.id.contact_divider);
				if (v != null) {
					v.setVisibility(View.VISIBLE);
				}
			}
		}
		return view;
	}

	private boolean checkDrawHeader(int position) {
		if (position == 0) {
			return true;
		}
		final ChatMessage message = (ChatMessage) getItem(position);
		final ChatMessage message2 = (ChatMessage) getItem(position - 1);
		final Date date = message.getDate();
		final Date date2 = message2.getDate();
		return !(message.getUser().equals(message2.getUser())
				&& date.getDay() == date2.getDay()
				&& date.getMonth() == date2.getMonth() && date.getYear() == date2
				.getYear());
	}

	@Override
	public int getCount() {
		return mChatProvider.size() + (mChatProvider.size() > 0 ? 1 : 0);
	}

	@Override
	public Object getItem(int position) {
		if (position == mChatProvider.size()) {
			return 0;
		}
		return mChatProvider.getMessage(position);
	}

	@Override
	public long getItemId(int position) {
		return getItem(position).hashCode();
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if (position == mChatProvider.size()) {
			return buildEnd(parent);
		}
		final ChatMessage message = (ChatMessage) getItem(position);
		final View view = buildView(position, parent);
		final TextView time = (TextView) view.findViewById(R.id.msg_time);
		time.setText(DateFormat.getTimeFormat(mContext).format(
				message.getDate()));
		final TextView text = (TextView) view.findViewById(R.id.msg_text);
		text.setText(SmileyHandler.getSmiledText(message.getMessage(), mContext));
		if (mChatProvider.getMeContact().contains(message.getUser())) {
			final SpannableStringBuilder builder = new SpannableStringBuilder(
					text.getText());
			builder.setSpan(new AlignmentSpan() {

				@Override
				public Alignment getAlignment() {
					return Alignment.ALIGN_OPPOSITE;
				}

			}, 0, builder.length(), 0);
			text.setText(builder);
		}

		final QuickContactBadge q = (QuickContactBadge) view
				.findViewById(R.id.contact_badge);

		if (q != null) {
			Contact contact = mContactProvider.getContact(message.getUser()
					.getUserLogin());
			if (contact == null) {
				contact = mContactProvider.getContact(message.getUser()
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
				q.setImageBitmap(message.getUser().getBitmap(mContext));
			}
		}

		return view;
	}
}
